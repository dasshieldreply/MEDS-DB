create or replace force editionable view "V_D_ADCP" 
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
   ,      b.cog
   ,      b.date_recorded
   ,      b.ensemble
   ,      b.latitude
   ,      b.longitude
   ,      b.profile
   ,      c.bin_1_distance
   ,      c.bin_size
   ,      c.compass
   ,      c.depth_bsl_trans
   ,      c.dir_ship
   ,      c.ensemble ensemble_data
   ,      c.heading
   ,      c.julian_day
   ,      c.no_bins
   ,      c.no_ensembles
   ,      c.pitch
   ,      c.roll
   ,      c.scale_factor
   ,      c.speed_ship
   ,      c.temperature
   ,      c.u_bottom
   ,      c.u_ship
   ,      c.v_bottom
   ,      c.v_ship
   ,      c.water_depth
   ,      d.bin
   ,      d.data_id
   ,      d.depth_bsl
   ,      d.direction
   ,      d.echo_int_average
   ,      d.ensemble ensemble_repeat
   ,      d.error
   ,      d.percentage_error
   ,      d.quality
   ,      d.speed
   ,      d.u_east_west
   ,      d.v_north_south
   ,      d.w_vertical
   from   param                     p
   ,      v_filter_meds_job_number  a
   ,      adcp_observation          b
   ,      adcp_data                 c
   ,      adcp_repeat               d
   where  a.medsfilter              = p.medsfilter
   and    a.label_layer             = 'ADCP'
   and    b.meds_job_number         = a.meds_job_number
   and    c.meds_job_number         = b.meds_job_number
   and    c.meds_observation_number = b.meds_observation_number
   and    c.profile                 = b.profile   
   and    d.meds_job_number         = c.meds_job_number
   and    d.meds_observation_number = c.meds_observation_number
   and    d.profile                 = c.profile
;