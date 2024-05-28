  CREATE OR REPLACE FORCE EDITIONABLE VIEW "MEDSADMIN"."V_MAP_MLO_FISH_OBSERVATION" 
  (
     "ICON"
   , "COLOR"
   , "MEDS_JOB_NUMBER"
   , "MEDS_OBSERVATION_NUMBER"
   , "LOCATION"
   , "LATITUDE"
   , "LONGITUDE"
   , "LABEL_DATE"
   , "SPECIES"
   , "COUNT"
   , "SHIP"
   , "SIZE_"
   , "BEARING"
   , "RANGE"
   , "COMMENTS"
   , "REFERENCE"
   ) DEFAULT COLLATION "USING_NLS_COMP"  AS 
   with param as
   (
      select a.*
      from   v_map_filter_criteria a
      where  a.medsfilter = nv('P200_MEDSFILTER')
   )
   select p.icon
   ,      p.color
   ,      a.meds_job_number
   ,      a.meds_observation_number
   ,      a.location
   ,      a.latitude
   ,      a.longitude
   ,      to_char(a.date_recorded,'dd Mon yyyy') 
   ,      b.species
   ,      b.count
   ,      b.ship
   ,      b.size_ 
   ,      b.bearing
   ,      b.range
   ,      b.comments
   ,      b.reference
   from   param                  p
   ,      mlo_fish_observation   a
   ,      mlo_fish_data          b
   where  a.meds_job_number         = p.meds_job_number   
   and    a.date_recorded between p.date_start and p.date_end
   and    b.meds_job_number         = a.meds_job_number
   and    b.meds_observation_number = a.meds_observation_number
   and    sdo_anyinteract(a.location, p.location_rectangle) = 'TRUE'
;