CREATE OR REPLACE FORCE EDITIONABLE VIEW "MEDSADMIN"."V_MAP_GLIDER_THREADED_OBSERVATION"  
AS 
   with param as
   (
         select a.*
         from   v_filter_meds_job_number a
         where  a.medsfilter = nv('P200_MEDSFILTER')
   ),
   obsrv as
   (
      select   a.meds_job_number
      ,        a.meds_observation_number
      ,        min(b.date_recorded) label_min_date
      ,        max(b.date_recorded) label_max_date
      from     param                        p
      ,        glider_threaded_observation  a
      ,        glider_threaded_data         b
      where    a.meds_job_number            = p.meds_job_number   
      and      b.meds_job_number            = a.meds_job_number
      and      b.meds_observation_number    = a.meds_observation_number
      and      b.date_recorded between p.date_start and p.date_end 
      group by a.meds_job_number
      ,        a.meds_observation_number
   )
   select p.icon
   ,      p.color
   ,      o.meds_job_number
   ,      o.meds_observation_number
   ,      o.label_min_date
   ,      o.label_max_date
   ,      a.location
   ,      a.mid_latitude
   ,      a.mid_longitude
   ,      a.distance_traveled
   ,      b.supplier
   from   obsrv                        o
   ,      param                        p
   ,      glider_threaded_observation  a
   ,      job_tracking                 b
   where  p.meds_job_number            = o.meds_job_number
   and    a.meds_job_number            = o.meds_job_number   
   and    a.meds_observation_number    = o.meds_observation_number
   and    sdo_anyinteract(a.location, p.location_rectangle) = 'TRUE'
   and    b.meic_number                = p.meic_number
;