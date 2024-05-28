CREATE OR REPLACE FORCE EDITIONABLE VIEW "MEDSADMIN"."V_MAP_AQUAPACK_PROFILE_OBSERVATION" 
(
     "ICON"
   ,  "COLOR"
   ,  "MEDS_JOB_NUMBER"
   ,  "MEDS_OBSERVATION_NUMBER"
   ,  "LOCATION"
   ,  "LATITUDE"
   ,  "LONGITUDE"
   ,  "LABEL_DATE"
   ,  "SUPPLIER"
   ,  "NO_MEASUREMENTS"
   ,  "MIN_DEPTH"
   ,  "MAX_DEPTH"
   ) DEFAULT COLLATION "USING_NLS_COMP"  AS 
   with param as
   (
      select a.*
      from   v_map_filter_criteria a
      where  a.medsfilter = nv('P200_MEDSFILTER')
   ), 
   adta as
   (
      select a.meds_job_number
      ,      a.meds_observation_number
      ,      count(b.depth)   no_measurements
      ,      min(b.depth)     min_depth
      ,      max(b.depth)     max_depth
      from   param                        p
      ,      aquapack_profile_observation a
      ,      aquapack_profile_data        b
      where  a.meds_job_number         = p.meds_job_number
      and    a.date_recorded between p.date_start and p.date_end
      and    b.meds_job_number         = a.meds_job_number
      and    b.meds_observation_number = a.meds_observation_number
      group by
             a.meds_job_number
      ,      a.meds_observation_number
   ) 
   select p.icon
   ,      p.color
   ,      b.meds_job_number
   ,      b.meds_observation_number
   ,      b.location
   ,      b.latitude
   ,      b.longitude
   ,      to_char(b.date_recorded,'dd Mon yyyy') 
   ,      p.supplier
   ,      a.no_measurements
   ,      a.min_depth
   ,      a.max_depth
   from   param                        p
   ,      adta                         a
   ,      aquapack_profile_observation b
   where  a.meds_job_number         = p.meds_job_number 
   and    b.meds_job_number         = a.meds_job_number
   and    b.meds_observation_number = a.meds_observation_number
   and    sdo_anyinteract(b.location, p.location_rectangle) = 'TRUE'
;