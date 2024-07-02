create or replace force editionable view "V_D_TONLY" as 
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
   ,      b.meds_cruise_number
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
   ,      c.land_check
   ,      c.hood_cruise_id
   ,      c.wind_speed
   ,      c.wind_dir
   ,      c.wet_air_temp
   ,      c.dry_air_temp
   ,      c.wave_height
   ,      c.wave_period
   ,      c.bt_sst_ref
   ,      c.d_corr
   ,      c.t_corr
   ,      c.atmospheric_pressure
   ,      c.bt_sst_instrument
   ,      c.hood_station_number
   ,      c.mbt_surface_t_corr
   ,      c.water_trans
   ,      c.water_colour
   ,      c.mbt_type_quality
   ,      c.mbt_grade_quality
   ,      c.cloud
   ,      c.sea_state
   ,      c.weather
   ,      c.s_scale_code
   ,      c.posn_determination
   ,      c.posn_accuracy_code
   ,      c.data_method
   ,      c.data_mode
   ,      c.units
   ,      c.data_type
   ,      c.data_identifier
   ,      c.file_filler
   ,      d.depth
   ,      d.temperature
   ,      d.t_quality
   ,      d.d_quality
   from   param                    p
   ,      v_filter_meds_job_number a
   ,      profile_index_tonly      b
   ,      profile_header_tonly     c
   ,      profile_data_tonly       d
   where  a.medsfilter              = p.medsfilter
   and    a.label_layer             = 'TEMPERATURE'
   and    b.meds_job_number         = a.meds_job_number 
   and    c.meds_job_number         = b.meds_job_number
   and    c.meds_observation_number = b.meds_observation_number
   and    d.meds_job_number         = c.meds_job_number
   and    d.meds_observation_number = c.meds_observation_number
;