 CREATE OR REPLACE FORCE EDITIONABLE VIEW "MEDSADMIN"."V_MAP_TONLY_OBSERVATION" 
(
      "ICON"
   ,  "COLOR"
   ,  "MEDS_JOB_NUMBER"
   ,  "MEDS_OBSERVATION_NUMBER"
   ,  "LOCATION"
   ,  "LATITUDE"
   ,  "LONGITUDE"
   ,  "LABEL_DATE"
   ,  "LABEL_INSTRUMENT"
   ,  "NUMBER_OF_DEPTH_LEVELS"
   ,  "MINIMUM_DEPTH_LEVEL"
   ,  "MAXIMUM_DEPTH_LEVEL"
) DEFAULT COLLATION "USING_NLS_COMP"  AS 
  with param
as
(
   select /* +materialize */
          a.medsfilter
   ,      a.date_start                       date_start
   ,      nvl(a.date_end,sysdate)            date_end
   ,      a.location_rectangle
   ,      a.meic_number
   ,      a.meds_job_number
   ,      a.meds_cruise_number
   ,      a.meds_ship_number
   ,      a.instrument_code
   ,      a.originator
   ,      'fa '||nvl(b.icon,'fa-map_marker') icon
   ,      nvl(b.color,'#000000')             color
   from   medsfilter a
   ,      medslayer  b
   where  a.medsfilter = nv('P200_MEDSFILTER')
   and    b.label      = 'TEMPERATURE'
   and    ':'||a.layerstring||':' like '%:'||b.label||':%'
)
, mpjs
as
(
   select a.job_number meds_job_number
   from   param               p
   ,      meds_processing_job a
   where  (p.meic_number        is null or a.meic_number        = p.meic_number)
   and    (p.meds_job_number    is null or a.job_number         = p.meds_job_number)
   and    (p.meds_cruise_number is null or a.meds_cruise_number = p.meds_cruise_number)
   and    (p.meds_ship_number   is null or a.meds_ship_number   = p.meds_ship_number)
   and    (p.instrument_code    is null or a.instrument_code    = p.instrument_code)
   and    (p.originator         is null or a.originator         = p.originator)  
)
select p.icon
,      p.color
,      b.meds_job_number
,      b.meds_observation_number
,      b.location
,      b.latitude
,      b.longitude
,      to_char(b.date_time,'dd Mon yyyy') label_date
,      c.description                      label_instrument 
,      b.number_of_depth_levels            
,      b.minimum_depth_level
,      b.maximum_depth_level
from   param               p
,      mpjs                a
,      profile_index_tonly b
,      instrument          c
where  b.meds_job_number = a.meds_job_number
and    b.date_time       between p.date_start and p.date_end
and    c.ocean           = b.instrument_code;

