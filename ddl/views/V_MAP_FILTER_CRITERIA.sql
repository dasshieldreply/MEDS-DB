create or replace force editionable view "MEDSADMIN"."V_MAP_FILTER_CRITERIA" (
   "MEDSFILTER"
,  "FILTER_LABEL"
,  "MEDSLAYER"
,  "LAYER_LABEL"
,  "MEDS_JOB_NUMBER"
,  "MEDS_CRUISE_NUMBER" 
,  "DATE_START"
,  "DATE_END" 
,  "MEIC_NUMBER"
,  "ORIGINATOR" 
,  "SUPPLIER"
,  "ICON" 
,  "COLOR"
,  "LOCATION_RECTANGLE" 
) Default Collation "USING_NLS_COMP"  
as 
with fltr as
(
   select 
      a.medsfilter
   ,  a.label filter_label
   ,  a.date_start                          
   ,  a.date_end
   ,  a.location_rectangle
   ,  a.meic_number
   ,  a.meds_job_number
   ,  a.meds_cruise_number
   ,  a.supplier
   ,  a.originator
   ,  b.medslayer
   ,  b.label layer_label
   ,  b.icon
   ,  b.color
   ,  b.usage
   ,  b.job_type_number
   from   medsfilter a
   ,      medslayer  b
   where  ':' || a.layerstring || ':' like '%:' || b.label || ':%'
)
select 
   a.medsfilter
,  a.filter_label
,  a.medslayer
,  a.layer_label
,  c.job_number
,  c.meds_cruise_number 
,  a.date_start
,  nvl(a.date_end,sysdate)
,  c.meic_number
,  c.originator 
,  d.supplier
,  'fa ' || nvl(a.icon, 'fa-map_marker')
,  a.color
,  a.location_rectangle
from   fltr                  a
,      job_lookups           b
,      meds_processing_job   c
,      job_tracking          d
where  b.type = 'Data Type'
and    b.usage = a.usage
and   (c.data_type        = b.usage or c.data_type          = b.description)               -- will select jobs that have the data type of the layer. The data_type field can have usage or description as value
and   (a.meic_number        is null or c.meic_number        = a.meic_number)
and   (a.meds_job_number    is null or c.job_number         = a.meds_job_number)
and   (a.meds_cruise_number is null or c.meds_cruise_number = a.meds_cruise_number)
and   (a.originator         is null or c.originator         = a.originator)
and    d.meic_number      = c.meic_number
and    d.job_type_number  = a.job_type_number   -- for the different SERD tyypes the data types is the same, but the job type is not
and   (a.supplier           is null or d.supplier           = a.supplier)  
;