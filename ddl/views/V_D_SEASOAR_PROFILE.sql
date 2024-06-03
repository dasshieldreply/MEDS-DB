create or replace force editionable view "V_D_SEASOAR_PROFILE" 
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
   ,	    b.latitude
   ,	    b.longitude
   ,	    b.date_recorded
   ,      b.profile_id
   ,      c.attenuation
   ,      c.bioluminescence
   ,      c.chlorophyll
   ,      c.density
   ,      c.depth
   ,      c.gelbstoffe
   ,      c.hydrocarbons
   ,      c.salinity
   ,      c.sound_speed
   ,      c.temperature
   ,      c.turbidity
   from   param                        p
   ,      v_filter_meds_job_number     a
   ,      seasoar_profile_observation  b
   ,      seasoar_profile_data         c
   where  a.medsfilter                 = p.medsfilter
   and    a.label_layer                = 'SEASOAR PROFILE'
   and    b.meds_job_number            = a.meds_job_number
   and    c.meds_job_number            = b.meds_job_number
   and    c.meds_observation_number    = b.meds_observation_number
   and    (b.profile_id is null or c.profile_id = b.profile_id)
;