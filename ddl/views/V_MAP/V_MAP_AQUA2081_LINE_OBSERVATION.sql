create or replace force editionable view "MEDSADMIN"."V_MAP_AQUA2081_LINE_OBSERVATION" 
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
   ,      b.pressure
   ,      b.depth
   ,      b.salinity
   ,      b.conductivity
   ,      b.sound_speed
   from   param                        p
   ,      aqua2081_line_observation    a
   ,      aqua2081_line_data           b
   ,      job_tracking                 c   
   where  a.meds_job_number            = p.meds_job_number   
   and    a.date_recorded between p.date_start and p.date_end
   and    sdo_anyinteract(a.location, p.location_rectangle) = 'TRUE'
   and    b.meds_job_number            = a.meds_job_number
   and    b.meds_observation_number    = a.meds_observation_number
   and    c.meic_number                = p.meic_number
;