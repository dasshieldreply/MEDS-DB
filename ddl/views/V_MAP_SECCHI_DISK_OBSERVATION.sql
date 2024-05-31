CREATE OR REPLACE FORCE EDITIONABLE VIEW "MEDSADMIN"."V_MAP_SECCHI_DISK_OBSERVATION" 
as
  with param as
   (
      select a.*
      from   v_filter_meds_job_number a
      where  a.medsfilter = nv('P200_MEDSFILTER')
   )
   select p.icon
   ,      p.color
   ,      a.meds_job_number
   ,      a.meds_observation_number
   ,      a.location
   ,      a.latitude
   ,      a.longitude
   ,      to_char(a.date_recorded,'dd Mon yyyy') label_date
   ,      b.ship 
   ,      b.cruise_identifier
   ,      b.general_area
   ,      b.secchi_depth
   from   param                     p
   ,      secchi_disk_observation   a
   ,      secchi_disk_data          b
   where  a.meds_job_number         = p.meds_job_number   
   and    a.date_recorded between p.date_start and p.date_end
   and    sdo_anyinteract(a.location, p.location_rectangle) = 'TRUE'
   and    b.meds_job_number         = a.meds_job_number
   and    b.meds_observation_number =  a.meds_observation_number
;
