create or replace force editionable view "MEDSADMIN"."V_D_ALL_TONLY" 
as 
   select a.meds_job_number
   ,      a.meds_observation_number
   ,      a.comments
   ,      a.date_time
   ,      a.meds_cruise_number
   ,      a.instrument_code
   ,      a.observed_depth
   ,      a.minimum_depth_level
   ,      a.maximum_depth_level
   ,      a.number_of_depth_levels
   ,      a.marsden_square
   ,      a.quadrant
   ,      a.degree_squre
   ,      a.duplicate_flag
   ,      a.year
   ,      a.no_of_comments
   ,      a.hood_archive_year
   ,      a.string_location
   ,      a.latitude
   ,      a.longitude
   ,      a.meds_ship_number
   ,      a.month
   ,      b.additional_posn_ref
   ,      b.land_check
   ,      b.hood_cruise_id
   ,      b.wind_speed
   ,      b.wind_dir
   ,      b.wet_air_temp
   ,      b.dry_air_temp
   ,      b.wave_height
   ,      b.wave_period
   ,      b.bt_sst_ref
   ,      b.d_corr
   ,      b.t_corr
   ,      b.atmospheric_pressure
   ,      b.bt_sst_instrument
   ,      b.hood_station_number
   ,      b.mbt_surface_t_corr
   ,      b.water_trans
   ,      b.water_colour
   ,      b.mbt_type_quality
   ,      b.mbt_grade_quality
   ,      b.cloud
   ,      b.sea_state
   ,      b.weather
   ,      b.s_scale_code
   ,      b.posn_determination
   ,      b.posn_accuracy_code
   ,      b.data_method
   ,      b.data_mode
   ,      b.units
   ,      b.data_type
   ,      b.data_identifier
   ,      b.file_filler
   ,      c.depth
   ,      c.temperature
   ,      c.t_quality
   ,      c.d_quality
   from   profile_index_tonly       a
   ,      profile_header_tonly      b
   ,      profile_data_tonly        c
   where  b.meds_job_number         = a.meds_job_number
   and    b.meds_observation_number = a.meds_observation_number
   and    c.meds_job_number         = b.meds_job_number
   and    c.meds_observation_number = b.meds_observation_number
   order by a.meds_job_number desc, a.meds_observation_number
;

