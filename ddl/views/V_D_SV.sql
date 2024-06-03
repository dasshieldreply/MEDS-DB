CREATE OR REPLACE FORCE EDITIONABLE VIEW "MEDSADMIN"."V_D_SV" 
as
  with param
   as
   (
      select /* +materialize */
             nv('P0_MEDSFILTER') medsfilter
      from   dual
   )
   select b.meds_job_number
   ,      b.meds_observation_number
   ,      b.comments
   ,      b.date_time
   ,      b.instrument_code
   ,      b.observed_depth
   ,      b.minimum_depth_level
   ,      b.maximum_depth_level
   ,      b.number_of_depth_levels
   ,      b.marsden_square
   ,      b.quadrant
   ,      b.degree_squre
   ,      b.duplicate_flag
   ,      b.year
   ,      b.no_of_comments
   ,      b.hood_archive_year
   ,      b.string_location
   ,      b.latitude
   ,      b.longitude
   ,      b.meds_ship_number
   ,      b.month
   ,      c.additional_posn_ref
   ,      c.atmospheric_pressure
   ,      c.cloud
   ,      c.data_identifier
   ,      c.data_method
   ,      c.data_mode
   ,      c.data_type
   ,      c.dry_air_temp
   ,      c.d_corr
   ,      c.file_filler
   ,      c.hood_cruise_id
   ,      c.hood_station_number
   ,      c.land_check
   ,      c.posn_accuracy_code
   ,      c.posn_determination
   ,      c.sea_state
   ,      c.sv_corr
   ,      c.s_corr
   ,      c.s_scale_code
   ,      c.t_corr
   ,      c.units
   ,      c.water_colour
   ,      c.water_trans
   ,      c.wave_height
   ,      c.wave_period
   ,      c.weather
   ,      c.wet_air_temp
   ,      c.wind_dir
   ,      c.wind_speed
   ,      d.DEPTH
   ,      d.d_quality
   ,      d.salinity
   ,      d.sv_code
   ,      d.sv_quality
   ,      d.sv_recorded
   ,      d.s_quality
   ,      d.temperature
   ,      d.t_quality
   from   param                     p
   ,      v_filter_meds_job_number  a
   ,      profile_index_sv          b
   ,      profile_header_sv         c
   ,      profile_data_sv           d
   where  a.medsfilter              = p.medsfilter
   and    a.label_layer             = 'SOUND VELOCITY'
   and    b.meds_job_number         = a.meds_job_number
   and    c.meds_job_number         = b.meds_job_number
   and    c.meds_observation_number = b.meds_observation_number
   and    d.meds_job_number         = c.meds_job_number
   and    d.meds_observation_number = c.meds_observation_number
;