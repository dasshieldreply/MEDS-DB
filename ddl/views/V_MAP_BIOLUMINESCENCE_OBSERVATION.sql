create or replace force editionable view "MEDSADMIN"."V_MAP_BIOLUMINESCENCE_OBSERVATION" 
as 
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
   ,      b.wd_dir
   ,      b.wd_spd
   ,      b.comments
   ,      b.file_reference
   from   param                           p
   ,      bioluminescence_observation     a
   ,      bioluminescence_data            b
   where  a.meds_job_number               = p.meds_job_number   
   and    a.date_recorded between p.date_start and p.date_end
   and    b.meds_job_number               = a.meds_job_number
   and    b.meds_observation_number       = a.meds_observation_number
   and    sdo_anyinteract(a.location, p.location_rectangle) = 'TRUE';