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
,  "COLOUR"
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
   from   medsfilter a
   ,      medslayer  b
   where  ':' || a.layerstring || ':' like '%:' || b.label || ':%'
)
select 
   a.medsfilter
,  a.filter_label
,  a.medslayer
,  a.layer_label
,  b.job_number
,  b.meds_cruise_number 
,  a.date_start
,  nvl(a.date_end,sysdate)
,  b.meic_number
,  b.originator 
,  c.supplier
,  'fa ' || nvl(a.icon, 'fa-map_marker')
,  a.color
,  a.location_rectangle
from   fltr                  a
,      meds_processing_job   b
,      job_tracking          c
where  (a.meic_number        is null or b.meic_number          = a.meic_number)
and    (a.meds_job_number    is null or b.job_number           = a.meds_job_number)
and    (a.meds_cruise_number is null or b.meds_cruise_number   = a.meds_cruise_number)
and    (a.originator         is null or b.originator           = a.originator)
and     c.meic_number                                          = b.meic_number
and    (a.supplier           is null or c.supplier             = a.supplier)
;