create or replace editionable view "V_D_SERD_MAIN_TS" as
with param as
(
   select *
   from   v_filter_meds_job_number 
   where  label_layer = 'TEMPERATURE AND SALINITY'
)
select 
      c.data_identifier
   || substr(nvl(g.data_use_code, ' '),1,1)
   || substr(nvl(g.originator, '  '),1,2)
   || to_char(b.marsden_square,'fm000')
   || to_char(b.degree_squre,'fm00')
   || rpad(b.string_location,15)
   || b.quadrant
   || c.posn_determination
   || c.posn_accuracy_code
   || c.additional_posn_ref 
   || nvl(to_char(b.hood_archive_year), '  ')
   || to_char(b.date_time, 'YYYYMMDD')
   || to_char(b.date_time, 'HH24MI')
   || d.country_code
   || d.ices_ship_code
   || d.ices_ship_flag
   || rpad(nvl(e.cruise_name,' '),8)
   || c.hood_station_number
   || d.mias_institute_code
   || d.mias_institute_flag
   || c.land_check
   || '0'
   || '00' --to_char(p_levels_no,'fm00')
   || nvl(to_char(b.observed_depth),'     ')
   || to_char(b.minimum_depth_level,'fm0000')
   || to_char(b.maximum_depth_level,'fm0000')
   || c.d_corr
   || ' '
   || c.t_corr
   || c.s_corr
   || c.sv_corr
   || c.units
   || f.serd
   || c.data_type
   || c.data_mode
   || c.data_method
   || c.wind_dir
   || c.wind_speed
   || c.dry_air_temp
   || c.wet_air_temp 
   || c.weather
   || c.cloud
   || c.sea_state
   || c.wave_period
   || c.wave_height
   || c.atmospheric_pressure
   || c.water_colour
   || c.water_trans
   || c.s_scale_code
   || '                                                                 ' -- 65
   || to_char(b.no_of_comments,'fm00')
   || rpad(substr(nvl(b.comments,' '),1,630),630) 
   || ' ' as row_vl
,  b.meds_job_number
,  b.meds_observation_number
,  a.medsfilter
from param                       a
inner join meds_processing_job   g on g.job_number         = a.meds_job_number 
inner join profile_index_ts      b on b.meds_job_number    = a.meds_job_number
inner join profile_header_ts     c on c.meds_job_number    = b.meds_job_number and c.meds_observation_number = b.meds_observation_number
left join ship_details           d on d.meds_ship_number   = b.meds_ship_number
left join cruise_layer           e on e.meds_cruise_number = b.meds_cruise_number
left join instrument             f on f.ocean              = b.instrument_code
order by a.medsfilter
,        b.meds_job_number
,        b.meds_observation_number;