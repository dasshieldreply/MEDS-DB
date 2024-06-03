create or replace force editionable view "V_D_SEASOAR_TOW" 
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
   ,      c.attenuation
   ,      c.bioluminescence
   ,      c.chlorophyll
   ,      c.date_recorded     date_recorded_data
   ,      c.density
   ,      c.depth
   ,      c.gelbstoffe
   ,      c.hydrocarbons
   ,      c.latitude          latitude_data
   ,      c.longitude         longitude_data
   ,      c.pressure
   ,      c.salinity
   ,      c.sound_speed
   ,      c.temperature
   ,      c.turbidity
   from   param                     p
   ,      v_filter_meds_job_number  a
   ,      seasoar_tow_observation   b
   ,      seasoar_tow_data          c
   where  a.medsfilter              = p.medsfilter
   and    a.label_layer             = 'SEASOAR TOW'
   and    b.meds_job_number         = a.meds_job_number
   and    c.meds_job_number         = b.meds_job_number
   and    c.meds_observation_number = b.meds_observation_number
;