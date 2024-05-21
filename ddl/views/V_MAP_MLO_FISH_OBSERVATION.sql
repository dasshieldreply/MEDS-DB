 CREATE OR REPLACE FORCE EDITIONABLE VIEW "MEDSADMIN"."V_MAP_MLO_FISH_OBSERVATION" 
 (
      "ICON"
   ,  "COLOR"
   ,  "MEDS_JOB_NUMBER"
   ,  "MEDS_OBSERVATION_NUMBER"
   ,  "LOCATION"
   ,  "LATITUDE"
   ,  "LONGITUDE"
   ,  "LABEL_DATE"
   ,  "SPECIES"
   ,  "COUNT"
   ,  "SHIP"
   ,  "SIZE_"
   ,  "BEARING"
) DEFAULT COLLATION "USING_NLS_COMP"  AS 
with param as
(
   select 
          a.medsfilter
   ,      a.date_start date_start
   ,      nvl(a.date_end,sysdate) date_end
   ,      a.location_rectangle
   ,      a.meic_number
   ,      a.meds_job_number
   ,      a.meds_cruise_number
   ,      a.meds_ship_number
   ,      a.originator
   ,      'fa ' || nvl(b.icon, 'fa-map_marker') icon
   ,      nvl(b.color, '#000000') color
   from   medsfilter a
   ,      medslayer  b
   where  a.medsfilter = nv('P200_MEDSFILTER')
   and    b.label      = 'FISH'
   and    ':' || a.layerstring || ':' like '%:' || b.label || ':%'
), mpjs
as
(
   select a.job_number meds_job_number
   from   param               p
   ,      meds_processing_job a
   where (a.meic_number          = p.meic_number         or p.meic_number        is null) 
   and   (a.job_number           = p.meds_job_number     or p.meds_job_number    is null)
   and   (a.meds_cruise_number   = p.meds_cruise_number  or p.meds_cruise_number is null)
   and   (a.meds_ship_number     = p.meds_ship_number    or p.meds_ship_number   is null)
   and   (a.originator           = p.originator          or p.originator         is null)
)
select 
      p.icon
,     p.color
,     b.meds_job_number
,     b.meds_observation_number
,     b.location
,     b.latitude
,     b.longitude
,     to_char(b.date_recorded,'dd Mon yyyy') label_date
,     c.species
,     c.count
,     c.ship
,     c.size_ 
,     c.bearing
from  param                  p
,     mpjs                   a
,     mlo_fish_observation   b
,     mlo_fish_data          c
where b.meds_job_number          = a.meds_job_number
and   b.date_recorded between p.date_start and p.date_end
and  (sdo_anyinteract(b.location,p.location_rectangle) = 'TRUE' or p.location_rectangle.sdo_point is null) -- how about different SRID's? mixing shapes?
and   c.meds_job_number          = a.meds_job_number
and   c.meds_observation_number  = b.meds_observation_number;
