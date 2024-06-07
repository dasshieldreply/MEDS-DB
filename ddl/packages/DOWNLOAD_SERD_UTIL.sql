CREATE OR REPLACE package download_serd_util
as

   function download_sv_serd_file
   (
      p_medsfilter   number
   ) 
   return types_util.serd_table
   pipelined;
   
end download_serd_util;
/

CREATE OR REPLACE package body download_serd_util
as
   
   function create_header_string
   (
      p_header_record   types_util.header_record
   ,  p_record_no       number -- the main record is always #1
   ,  p_record_tp       number -- 2 for main records, 3 for continuation records
   ,  p_levels_no       number
   )
   return types_util.header_string
   is
      l_header_string   types_util.header_string;
   begin
   
      l_header_string := '000A'  
            || p_record_tp
            || to_char(p_record_no,'fm00')
            || p_header_record.data_identifier
            || ' '
            || '  '
            || p_header_record.marsden_square
            || p_header_record.degree_squre
            || p_header_record.string_location
            || p_header_record.quadrant
            || p_header_record.posn_determination
            || p_header_record.posn_accuracy_code
            || p_header_record.additional_posn_ref 
            || nvl(to_char(p_header_record.hood_archive_year), '  ')
            || to_char(p_header_record.date_time, 'YYYYMMDD')
            || to_char(p_header_record.date_time, 'HH24MI')
            || p_header_record.country_code
            || p_header_record.ices_ship_code
            || p_header_record.ices_ship_flag
            || p_header_record.cruise_name
            || p_header_record.hood_station_number
            || p_header_record.mias_institute_code
            || p_header_record.mias_institute_flag
            || p_header_record.land_check
            || '0'
            || to_char(p_levels_no,'fm00')
            || nvl(to_char(p_header_record.observed_depth),'     ')
            || to_char(p_header_record.minimum_depth_level,'fm0000')
            || to_char(p_header_record.maximum_depth_level,'fm0000')
            || p_header_record.d_corr
            || ' '
            || p_header_record.t_corr
            || p_header_record.s_corr
            || p_header_record.sv_corr
            || p_header_record.units
            || p_header_record.serd
            || p_header_record.data_type
            || p_header_record.data_mode
            || p_header_record.data_method
            || p_header_record.wind_dir
            || p_header_record.wind_speed
            || p_header_record.dry_air_temp
            || p_header_record.wet_air_temp 
            || p_header_record.weather
            || p_header_record.cloud
            || p_header_record.sea_state
            || p_header_record.wave_period
            || p_header_record.wave_height
            || p_header_record.atmospheric_pressure
            || p_header_record.water_colour
            || p_header_record.water_trans
            || p_header_record.s_scale_code
            --|| p_header_record.bt_sst_instrument
            --|| p_header_record.bt_sst_ref
            --|| p_header_record.mbt_surface_t_corr
            --|| p_header_record.mbt_type_quality
            --|| p_header_record.mbt_grade_quality 
            || '                                                                 ' -- 65
            || to_char(p_header_record.no_of_comments,'fm00')
            || rpad(substr(nvl(p_header_record.comments,' '),1,530),530)
         ;   
      return l_header_string;
   end create_header_string;
   
   function create_one_level_string
   (
      p_level_record    types_util.level_record
   )
   return types_util.level_string
   is
      l_level_string    types_util.level_string;
   begin
      --dbms_output.put_line('start depth :' ||p_level_record.depth);
      l_level_string := p_level_record.depth_indicator
                     || to_char(p_level_record.depth,'fm0000') 
                     || p_level_record.d_quality
                     || nvl(replace(to_char(p_level_record.temperature,'fm00.00'),'.',''),'    ') 
                     || p_level_record.t_quality 
                     || nvl(replace(to_char(p_level_record.salinity,'fm00.000'),'.',''),'     ') 
                     || p_level_record.s_quality
                     || nvl(replace(to_char(p_level_record.sound_velocity,'fm0000.0'),'.',''),'     ')
                     || p_level_record.sv_quality
                     || p_level_record.sv_code;
      --dbms_output.put_line('end depth :' ||p_level_record.depth);
      return l_level_string;
   end create_one_level_string;
   
   function create_all_levels_string
   (
      p_meds_job_number          number
   ,  p_meds_observation_number  number
   ,  p_depth_start              number
   ,  p_depth_end                number
   )
   return varchar2
   is
      l_all_levels_string  types_util.all_levels_string;
      l_level_record       types_util.level_record;
   begin
      --dbms_output.put_line('start observation :' || p_meds_observation_number);
      for l_level_record in 
      (
         select 
            '0'
         ,  depth
         ,  d_quality
         ,  temperature
         ,  t_quality
         ,  salinity
         ,  s_quality
         ,  sv_recorded
         ,  sv_quality
         ,  sv_code
         from profile_data_sv
         where meds_job_number       = p_meds_job_number
         and meds_observation_number = p_meds_observation_number
         and depth between p_depth_start and p_depth_end
         order by depth
      )
      loop
      
         if l_all_levels_string is null then 
            l_all_levels_string := create_one_level_string(l_level_record);
         else
            l_all_levels_string := l_all_levels_string || create_one_level_string(l_level_record);
         end if;
      end loop;
      --dbms_output.put_line('end observation :' || p_meds_observation_number);
      return l_all_levels_string;
   end create_all_levels_string;

   function download_sv_serd_file
   (
      p_medsfilter   number
   )
   return types_util.serd_table
   pipelined
   is
      l_serd_record        types_util.serd_record; 
      l_header_record      types_util.header_record;
      l_header_string      types_util.header_string; 
      l_all_levels_string  types_util.all_levels_string;
      l_record_no          number default 0;
      l_levels_no          number default 0;
      l_counter            number default 0;
      l_depth_start        number default 0;
      l_depth_end          number default 0;
   begin
   
      for l_header_record in 
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
         ,  b.no_of_comments
         ,  b.comments
         ,  b.meds_job_number
         ,  b.meds_observation_number
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
         --dbms_output.put_line('read observation ' || l_header_record.meds_observation_number);
         l_record_no    := 1;
         l_levels_no    := l_header_record.number_of_depth_levels;
         l_depth_start  := 0;
         l_depth_end    := 49;
         l_counter      := l_header_record.number_of_depth_levels;
         
         while l_counter > 0
         loop
            l_all_leves_string   := create_all_levels_string(l_header_record.meds_job_number,l_header_record.meds_observation_number,0,49); 
            l_header_string      := create_header_string(l_header_record, l_record_no,2,l_levels_no);
            
                  l_serd_record.record_data  := create_header_string(l_header_record, l_record_no,2,l_levels_no) ||
                                        
         l_counter   := l_header_record.number_of_depth_levels - 49;
         
         
            l_record_no                := l_record_no + 1;
            l_serd_record.record_data  := create_header_string(l_header_record, l_record_no,2,l_levels_no) ||
                                          create_all_levels_string(l_header_record.meds_job_number,l_header_record.meds_observation_number,50,100);          
         end loop;
         --dbms_output.put_line('finished observation ' || l_header_record.meds_observation_number);
         pipe row (l_serd_record);     
         --dbms_output.put_line('piped the row');
      end loop;
      return;      
   end download_sv_serd_file;     

end download_serd_util;
/
