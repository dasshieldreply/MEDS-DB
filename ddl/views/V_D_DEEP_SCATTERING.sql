create or replace force editionable view "V_D_DEEP_SCATTERING" 
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
   ,      c.archived
   ,      c.depth_of_top_layer
   ,      c.end_lat_long
   ,      c.end_time
   ,      c.extent_of_motion
   ,      c.e_s_trace_reference
   ,      c.gain_settings
   ,      c.hi_cruise
   ,      c.layer_thickness
   ,      c.month
   ,      c.remarks
   ,      c.sea_state
   ,      c.ship
   ,      c.sonar_frequency
   ,      c.start_time
   ,      c.type_of_sonar
   from   param                        p
   ,      v_filter_meds_job_number     a
   ,      deep_scattering_observation  b
   ,      deep_scattering_data         c
   where  a.medsfilter                 = p.medsfilter
   and    a.label_layer                = 'DEEP SCATTERING'
   and    b.meds_job_number            = a.meds_job_number
   and    c.meds_job_number            = b.meds_job_number
   and    c.meds_observation_number    = b.meds_observation_number
;