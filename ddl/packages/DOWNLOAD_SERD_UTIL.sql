CREATE OR REPLACE package download_serd_util
as

   type serd_record  is record (
      record_data    varchar2(4000));
      
   type serd_table   is table of serd_record;

   function download_sv_serd_file
   (
      p_medsfilter   number
   ) 
   return serd_table
   pipelined;
   
end download_serd_util;
/

CREATE OR REPLACE package body download_serd_util
as

   function download_sv_serd_file
   (
      p_medsfilter   number
   )
   return serd_table
   pipelined
   is
      l_serd_rec     serd_record; 
      l_rec_no       number default 0;
      l_lev_no       number default 0;
   begin
   
      for f_rec in 
      (
         select c.data_identifier
         ,  b.marsden_square
         ,  b.degree_squre                   
         ,  b.string_location
         ,  b.quadrant
         ,  c.posn_determination
         ,  c.posn_accuracy_code
         ,  c.additional_posn_ref
         ,  b.hood_archive_year    
         ,  b.date_time
         ,  d.country_code
         ,  d.ices_ship_code
         ,  d.ices_ship_flag
         ,  e.cruise_name    
         ,  c.hood_station_number
         ,  d.mias_institute_code
         ,  d.mias_institute_flag
         ,  c.land_check
         ,  b.number_of_depth_levels
         ,  b.observed_depth
         ,  b.minimum_depth_level
         ,  b.maximum_depth_level
         ,  c.d_corr
         ,  c.t_corr
         ,  c.s_corr
         ,  c.sv_corr              
         ,  c.units 
         ,  f.serd                           
         ,  c.data_type 
         ,  c.data_mode
         ,  c.data_method
         ,  c.wind_dir
         ,  c.wind_speed
         ,  c.dry_air_temp
         ,  c.wet_air_temp
         ,  c.weather
         ,  c.cloud
         ,  c.sea_state 
         ,  c.wave_period
         ,  c.wave_height 
         ,  c.atmospheric_pressure 
         ,  c.water_colour
         ,  c.water_trans
         ,  c.s_scale_code 
         ,  ' '                              bt_sst_instrument
         ,  ' '                              bt_sst_ref
         ,  ' '                              mbt_surface_t_corr
         ,  ' '                              mbt_type_quality
         ,  ' '                              mbt_grade_quality 
         from       v_filter_meds_job_number a
         inner join profile_index_sv         b on b.meds_job_number    = a.meds_job_number
         inner join profile_header_sv        c on c.meds_job_number    = b.meds_job_number and c.meds_observation_number = b.meds_observation_number
         left join ship_details              d on d.meds_ship_number   = b.meds_ship_number
         left join cruise_layer              e on e.meds_cruise_number = b.meds_cruise_number
         left join instrument                f on f.ocean              = b.instrument_code
         where  a.medsfilter  = p_medsfilter
         and    a.label_layer = 'SOUND VELOCITY'
         order by b.meds_job_number
         ,        b.meds_observation_number
      )
      loop
         l_rec_no := l_rec_no + 1;
         
         if f_rec.number_of_depth_levels <= 49 then 
            l_lev_no := f_rec.number_of_depth_levels;
         else
            l_lev_no := 49;
         end if;
         
         l_serd_rec.record_data := '000A'  
            || '2'
            || to_char(l_rec_no,'fm00')
            || f_rec.data_identifier
            || ' '
            || '  '
            || f_rec.marsden_square
            || f_rec.degree_squre
            || f_rec.string_location
            || f_rec.quadrant
            || f_rec.posn_determination
            || f_rec.posn_accuracy_code
            || f_rec.additional_posn_ref 
            || nvl(to_char(f_rec.hood_archive_year), '  ')
            || to_char(f_rec.date_time, 'YYYYMMDD')
            || to_char(f_rec.date_time, 'HH24MI')
            || f_rec.country_code
            || f_rec.ices_ship_code
            || f_rec.ices_ship_flag
            || f_rec.cruise_name
            || f_rec.hood_station_number
            || f_rec.mias_institute_code
            || f_rec.mias_institute_flag
            || f_rec.land_check
            || '0'
            || to_char(l_lev_no,'fm00')
            || nvl(to_char(f_rec.observed_depth),'     ')
            || to_char(f_rec.minimum_depth_level,'fm0000')
            || to_char(f_rec.maximum_depth_level,'fm0000')
            || f_rec.d_corr
            || ' '
            || f_rec.t_corr
            || f_rec.s_corr
            || f_rec.sv_corr
            || f_rec.units
            || f_rec.serd
            || f_rec.data_type
            || f_rec.data_mode
            || f_rec.data_method
            || f_rec.wind_dir
            || f_rec.wind_speed
            || f_rec.dry_air_temp
            || f_rec.wet_air_temp 
            || f_rec.weather
            || f_rec.cloud
            || f_rec.sea_state
            || f_rec.wave_period
            || f_rec.wave_height
            || f_rec.atmospheric_pressure
            || f_rec.water_colour
            || f_rec.water_trans
            || f_rec.s_scale_code
            || f_rec.bt_sst_instrument
            || f_rec.bt_sst_ref
            || f_rec.mbt_surface_t_corr
            || f_rec.mbt_type_quality
            || f_rec.mbt_grade_quality 
         ;   
      
         pipe row (l_serd_rec);
      end loop;
      
      return;      
   end download_sv_serd_file;     
end download_serd_util;
/
