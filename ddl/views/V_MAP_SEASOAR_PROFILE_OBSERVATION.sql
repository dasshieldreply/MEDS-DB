CREATE OR REPLACE FORCE EDITIONABLE VIEW "MEDSADMIN"."V_MAP_SEASOAR_PROFILE_OBSERVATION" 
as
   with param as
   (
      select a.*
      from   v_filter_meds_job_number a
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
      ,      seasoar_profile_observation a
      ,      seasoar_profile_data        b
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
   ,      to_char(b.date_recorded,'dd Mon yyyy') label_date
   ,      c.supplier
   ,      a.no_measurements
   ,      a.min_depth
   ,      a.max_depth
   from   param                        p
   ,      adta                         a
   ,      seasoar_profile_observation b
   ,      job_tracking                 c
   where  a.meds_job_number            = p.meds_job_number 
   and    sdo_anyinteract(b.location, p.location_rectangle) = 'TRUE'
   and    b.meds_job_number            = a.meds_job_number
   and    b.meds_observation_number    = a.meds_observation_number
   and    c.meic_number                = p.meic_number
;