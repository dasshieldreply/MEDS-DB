CREATE OR REPLACE FORCE EDITIONABLE VIEW "MEDSADMIN"."V_MAP_FILTER_CRITERIA"
AS 
  with param as
   (
      select a.medsfilter
      ,      a.label filter_label
      ,      a.date_start                          
      ,      a.date_end
      ,      a.location_rectangle
      ,      a.meic_number
      ,      a.meds_job_number
      ,      a.meds_cruise_number
      ,      a.supplier
      ,      a.originator
      ,      b.medslayer
      ,      b.label layer_label
      ,      b.icon
      ,      b.color
      ,      b.usage
      ,      b.job_type_number
      ,      a.instrument_code
      from   medsfilter a
      ,      medslayer  b
      where  ':' || a.layerstring || ':' like '%:' || b.label || ':%'
   )
   select a.medsfilter
   ,      a.filter_label
   ,      a.medslayer
   ,      a.layer_label
   ,      c.job_number                          meds_job_number
   ,      c.meds_cruise_number 
   ,      a.date_start
   ,      nvl(a.date_end,sysdate)               date_end
   ,      c.meic_number
   ,      c.originator 
   ,      d.supplier
   ,      a.instrument_code
   ,      'fa ' || nvl(a.icon, 'fa-map_marker') icon
   ,      a.color
   ,      a.location_rectangle
   from   param                 a
   ,      job_lookups           b
   ,      meds_processing_job   c
   ,      job_tracking          d
   where  b.type  = 'Data Type'
   and    b.usage = a.usage
   and    b.generic != 8                              -- to avoid cetaceans envelope and track data types
   and    (c.data_type           = b.usage or c.data_type        = b.description)   -- will select jobs that have the data type of the layer. The data_type field can have usage or description as value
   and    (a.meic_number         is null or c.meic_number        = a.meic_number)
   and    (a.meds_job_number     is null or c.job_number         = a.meds_job_number)
   and    (a.meds_cruise_number  is null or c.meds_cruise_number = a.meds_cruise_number)
   and    (a.instrument_code     is null or c.instrument_code    = a.instrument_code)
   and    (a.originator          is null or c.originator         = a.originator)
   and    d.meic_number     (+) = c.meic_number       -- some old data do not have job tracking records
   and    d.job_type_number (+) = a.job_type_number   -- for the different SERD types the data type is the same, but the job type is notm, and it is being messed up by this outer join (the filter will return all the serd jobs even if it should not)
   and    (a.supplier            is null  or d.supplier          = a.supplier)
;

