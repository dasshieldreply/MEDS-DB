CREATE OR REPLACE FORCE EDITIONABLE VIEW "MEDSADMIN"."V_FILTER_MEDS_JOB_NUMBER" as 
  with param as
(
   select a.medsfilter
   ,      a.label label_filter
   ,      a.date_start                          
   ,      a.date_end
   ,      a.location_rectangle
   ,      a.meic_number
   ,      a.meds_job_number
   ,      a.meds_cruise_number
   ,      a.supplier
   ,      a.originator
   ,      b.medslayer
   ,      b.label label_layer
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
,      a.label_filter
,      a.date_start
,      nvl(a.date_end,sysdate)               date_end
,      a.medslayer
,      a.label_layer
,      'fa ' || nvl(a.icon, 'fa-map_marker') icon
,      a.color
,      a.location_rectangle
,      b.job_number                          meds_job_number
,      b.meic_number
,      b.meds_cruise_number
,      b.meds_ship_number
,      c.cruise_name
,      d.vessel_name
from   param                 a
,      meds_processing_job   b
,      cruise_layer          c
,      ship_details          d
where  c.meds_cruise_number (+) = b.meds_cruise_number
and    d.meds_ship_number   (+) = b.meds_ship_number
and
(
   -- specific selection...
--   (  
--      a.meic_number is not null 
--      and 
--      b.meic_number = a.meic_number
--   )
--   or
   (  
      a.meds_job_number is not null 
      and 
      b.job_number = a.meds_job_number
   )
--   or
--   -- meds_job_number list...
--   (  
--      b.job_number in 
--      (
--         select job_number
--         from   medsfilter_job_number 
--         where  medsfilter = a.medsfilter
--      )
--   )
   or
   -- wider criteria...
   (  
      a.meic_number is null 
      and
      a.meds_job_number is null 
--      and 
--      not exists
--      (
--         select 1
--         from   medsfilter_job_number
--         where  medsfilter = a.medsfilter
--      )
      and
      (
         (
            b.data_type = a.usage
            or
            lower(b.data_type) like lower(a.usage)||'%'
         )   
         and
         b.data_type in
         (
            -- meds_processing_job.data_type can have usage or description as value
            select usage
            from   job_lookups
            where  type  = 'Data Type'
            and    generic != 8 -- exclude cetaceans envelope and track data types
            union  all
            select description
            from   job_lookups
            where  type  = 'Data Type'
            and    generic != 8 -- exclude cetaceans envelope and track data types
         )
         and
         (a.meds_cruise_number  is null   or b.meds_cruise_number = a.meds_cruise_number)
         and
         (a.instrument_code     is null   or b.instrument_code    = a.instrument_code)
         and    
         (a.originator          is null   or b.originator         = a.originator)         
         and
         (
            a.supplier            is null
            or
            exists
            (
               select 1
               from   job_tracking 
               where  meic_number = b.meic_number
               and    supplier    = a.supplier
            )
         )
      )
   )
);