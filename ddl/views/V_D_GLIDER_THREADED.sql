create or replace force editionable view "V_D_GLIDER_THREADED" 
as
   with param
   as
   (
      select /* +materialize */
             nv('P0_MEDSFILTER') medsfilter
      from   dual
   )
   select b.meds_job_number
   ,	    b.meds_observation_number
   ,      b.distance_traveled
   ,      b.mid_latitude
   ,      b.mid_longitude
   ,      b.mid_time
   ,      b.profile_dir
   ,      b.profile_id
   ,      c.bbp700
   ,      c.bioluminescence
   ,      c.chlorophyll
   ,      c.date_recorded
   ,      c.density
   ,      c.depth
   ,      c.gelbstoffe
   ,      c.hydrocarbons
   ,      c.latitude
   ,      c.longitude
   ,      c.point_order
   ,      c.pressure
   ,      c.salinity
   ,      c.sal_flag
   ,      c.sound_speed
   ,      c.temperature
   ,      c.temp_flag
   from   param                        p
   ,      v_filter_meds_job_number     a
   ,      glider_threaded_observation  b
   ,      glider_threaded_data         c
   where  a.medsfilter                 = p.medsfilter
   and    a.label_layer                = 'GLIDER'
   and    b.meds_job_number            = a.meds_job_number
   and    c.meds_job_number            = b.meds_job_number
   and    c.meds_observation_number    = b.meds_observation_number
;

