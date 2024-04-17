declare
   v_stg_file     number default 29644181340345843500368252723417213678;
   v_serd_stg_header     serd_stg_header%ROWTYPE;
begin
   dbms_output. enable (buffer_size => null);
   
   for t_row_content in (select row_content from stg_file_serd_row where stg_file = v_stg_file)
   loop
      v_serd_stg_header.record_type                            := substr(t_row_content.row_content,5,1);
      v_serd_stg_header.record_sequence						     	:= substr(t_row_content.row_content,6,2);
      v_serd_stg_header.data_identifier						     	:= substr(t_row_content.row_content,8,1);
      v_serd_stg_header.data_use_code						      	:= substr(t_row_content.row_content,9,1);
      v_serd_stg_header.file_code								      := substr(t_row_content.row_content,10,2);
      v_serd_stg_header.marsden_square						      	:= substr(t_row_content.row_content,12,3);
      v_serd_stg_header.degree_square						      	:= substr(t_row_content.row_content,15,2);
      v_serd_stg_header.geo_position							     	:= substr(t_row_content.row_content,17,15);
      v_serd_stg_header.quadrant_code						      	:= substr(t_row_content.row_content,32,1);
      v_serd_stg_header.position_determination_code	   		:= substr(t_row_content.row_content,33,1);
      v_serd_stg_header.position_accuracy_code			   		:= substr(t_row_content.row_content,34,1);
      v_serd_stg_header.position_additional_reference	   		:= substr(t_row_content.row_content,35,12);
      v_serd_stg_header.archive_year						      	:= case when trim(substr(t_row_content.row_content,47,2)) is not null then substr(t_row_content.row_content,47,2) else null end;
      v_serd_stg_header.observation_date					   		:= to_date(substr(t_row_content.row_content,49,8),'YYYYMMDD');
      v_serd_stg_header.observation_time					   		:= to_date(substr(t_row_content.row_content,57,4),'HH24MI');
      v_serd_stg_header.country_code						      	:= substr(t_row_content.row_content,61,2);
      v_serd_stg_header.ship_number							        	:= substr(t_row_content.row_content,63,2);
      v_serd_stg_header.ship_number_type					   		:= substr(t_row_content.row_content,65,1);
      v_serd_stg_header.originator_cruise_number			  		:= substr(t_row_content.row_content,66,8);
      v_serd_stg_header.station_number 						     	:= substr(t_row_content.row_content,74,6);
      v_serd_stg_header.institute_number						   	:= substr(t_row_content.row_content,80,3);
      v_serd_stg_header.institute_number_type				     	:= substr(t_row_content.row_content,83,1);
      v_serd_stg_header.land_check_indicator				   		:= substr(t_row_content.row_content,84,1); -- there is a filler after
      v_serd_stg_header.depth_level_number				     		:= substr(t_row_content.row_content,86,2);
      v_serd_stg_header.seabed_depth						      	:= case when trim(substr(t_row_content.row_content,88,5)) is not null then substr(t_row_content.row_content,88,5) else null end;
      --v_serd_stg_header.min_observation_depth			     		:= substr(t_row_content.row_content,93,4); LAST LINE HAS THE VALUE WITH A '-'
      v_serd_stg_header.max_observation_depth			     		:= substr(t_row_content.row_content,97,4);
      v_serd_stg_header.depth_correction				   			:= case when trim(substr(t_row_content.row_content,101,2)) is not null then substr(t_row_content.row_content,101,2) else null end; -- there is a filler after 
      --v_serd_stg_header.temperature_correction			   		:= substr(t_row_content.row_content,105,3); SOME VALUES HAVE '+  '      
      --v_serd_stg_header.salinity_correction				   		:= substr(t_row_content.row_content,108,4); SOME VALUES HAVE '+  ' 
      --v_serd_stg_header.sound_velocity_correction		   		:= substr(t_row_content.row_content,112,3); SOME VALUES HAVE '+  ' 
      v_serd_stg_header.observation_unit_code			     		:= substr(t_row_content.row_content,115,1);
      v_serd_stg_header.instrument_code				      		:= substr(t_row_content.row_content,116,2);
      --v_serd_stg_header.data_type_code					      		:= substr(t_row_content.row_content,118,1); DONT GET IT
      v_serd_stg_header.data_mode_code					      		:= substr(t_row_content.row_content,119,1);
      v_serd_stg_header.data_method_code			   				:= substr(t_row_content.row_content,120,1);
      v_serd_stg_header.wind_direction_code		   				:= case when trim(substr(t_row_content.row_content,121,2)) is not null then substr(t_row_content.row_content,121,2) else null end; 
      v_serd_stg_header.wind_speed						      		:= case when trim(substr(t_row_content.row_content,123,2)) is not null then substr(t_row_content.row_content,123,2) else null end; 
      v_serd_stg_header.dry_air_temperature			   			:= case when trim(substr(t_row_content.row_content,125,4)) is not null then substr(t_row_content.row_content,125,4) else null end; 
      v_serd_stg_header.wet_air_temperature						   := case when trim(substr(t_row_content.row_content,129,4)) is not null then substr(t_row_content.row_content,129,4) else null end; 
      v_serd_stg_header.weather_code							      := case when trim(substr(t_row_content.row_content,133,4)) is not null then substr(t_row_content.row_content,133,4) else null end; 
      v_serd_stg_header.cloud_coverage_code						   := case when trim(substr(t_row_content.row_content,134,1)) is not null then substr(t_row_content.row_content,134,1) else null end; 
      v_serd_stg_header.sea_state_code							      := case when trim(substr(t_row_content.row_content,135,1)) is not null then substr(t_row_content.row_content,135,1) else null end;
      v_serd_stg_header.wave_period								      := case when trim(substr(t_row_content.row_content,136,2)) is not null then substr(t_row_content.row_content,136,2) else null end;
      v_serd_stg_header.wave_height								      := case when trim(substr(t_row_content.row_content,138,2)) is not null then substr(t_row_content.row_content,138,2) else null end;
      --v_serd_stg_header.atmospheric_pressure						   := case when trim(substr(t_row_content.row_content,140,5)) is not null then substr(t_row_content.row_content,140,5) else null end; LAST LINE HAS THE VALUE WITH A '-'
      v_serd_stg_header.water_colour_code						      := case when trim(substr(t_row_content.row_content,145,2)) is not null then substr(t_row_content.row_content,145,2) else null end;
      v_serd_stg_header.water_transparency						   := case when trim(substr(t_row_content.row_content,147,2)) is not null then substr(t_row_content.row_content,147,2) else null end;
      v_serd_stg_header.salinity_scale_code						   := case when trim(substr(t_row_content.row_content,149,1)) is not null then substr(t_row_content.row_content,149,1) else null end;
      v_serd_stg_header.bt_sea_surface_instrument_code		   := case when trim(substr(t_row_content.row_content,150,1)) is not null then substr(t_row_content.row_content,150,1) else null end;
      v_serd_stg_header.bt_sea_surface_reference_temperature	:= case when trim(substr(t_row_content.row_content,151,4)) is not null then substr(t_row_content.row_content,151,4) else null end;
      v_serd_stg_header.mbt_sea_surface_temperature_correction	:= case when trim(substr(t_row_content.row_content,155,3)) is not null then substr(t_row_content.row_content,155,3) else null end;
      v_serd_stg_header.mbt_type_quality_code				      := case when trim(substr(t_row_content.row_content,140,5)) is not null then substr(t_row_content.row_content,158,1) else null end;
      v_serd_stg_header.mbt_grade_quality_code					   := case when trim(substr(t_row_content.row_content,140,5)) is not null then substr(t_row_content.row_content,159,1) else null end;

      dbms_output.put_line('------------------------------------------' );
      dbms_output.put_line('record_type:' || v_serd_stg_header.record_type);
      dbms_output.put_line('record_sequence:' || v_serd_stg_header.record_sequence);
      dbms_output.put_line('data_identifier:' || v_serd_stg_header.data_identifier);
      dbms_output.put_line('data_use_code:' || v_serd_stg_header.data_use_code);
      dbms_output.put_line('file_code:' || v_serd_stg_header.file_code);
      dbms_output.put_line('marsden_square:' || v_serd_stg_header.marsden_square);
      dbms_output.put_line('degree_square:' || v_serd_stg_header.degree_square);
      dbms_output.put_line('geo_position:' || v_serd_stg_header.geo_position);
      dbms_output.put_line('quadrant_code:' || v_serd_stg_header.quadrant_code);
      dbms_output.put_line('position_determination_code:' || v_serd_stg_header.position_determination_code);
      dbms_output.put_line('position_accuracy_code:' || v_serd_stg_header.position_accuracy_code);
      dbms_output.put_line('position_additional_reference:' || v_serd_stg_header.position_additional_reference);
      dbms_output.put_line('archive_year:' || v_serd_stg_header.archive_year);
      dbms_output.put_line('observation_date:' || v_serd_stg_header.observation_date);
      dbms_output.put_line('observation_time:' || TO_CHAR(v_serd_stg_header.observation_time,'HH24:MI'));
      dbms_output.put_line('country_code:' || v_serd_stg_header.country_code);
      dbms_output.put_line('ship_number:' || v_serd_stg_header.ship_number);
      dbms_output.put_line('ship_number_type:' || v_serd_stg_header.ship_number_type);
      dbms_output.put_line('originator_cruise_number:' || v_serd_stg_header.originator_cruise_number);
      dbms_output.put_line('station_number:' || v_serd_stg_header.station_number);
      dbms_output.put_line('institute_number:' || v_serd_stg_header.institute_number);
      dbms_output.put_line('institute_number_type:' || v_serd_stg_header.institute_number_type);
      dbms_output.put_line('land_check_indicator:' || v_serd_stg_header.land_check_indicator);
      dbms_output.put_line('depth_level_number:' || v_serd_stg_header.depth_level_number);
      dbms_output.put_line('seabed_depth:' || v_serd_stg_header.seabed_depth);
      dbms_output.put_line('min_observation_depth:' || v_serd_stg_header.min_observation_depth);
      dbms_output.put_line('max_observation_depth:' || v_serd_stg_header.max_observation_depth);
      dbms_output.put_line('depth_correction:' || v_serd_stg_header.depth_correction);
      dbms_output.put_line('temperature_correction:' || v_serd_stg_header.temperature_correction);
      dbms_output.put_line('salinity_correction:' || v_serd_stg_header.salinity_correction);
      dbms_output.put_line('sound_velocity_correction:' || v_serd_stg_header.sound_velocity_correction);
      dbms_output.put_line('observation_unit_code:' || v_serd_stg_header.observation_unit_code);
      dbms_output.put_line('instrument_code:' || v_serd_stg_header.instrument_code);
      dbms_output.put_line('data_type_code:' || v_serd_stg_header.data_type_code);
      dbms_output.put_line('data_mode_code:' || v_serd_stg_header.data_mode_code);
      dbms_output.put_line('data_method_code:' || v_serd_stg_header.data_method_code);
      dbms_output.put_line('wind_direction_code:' || v_serd_stg_header.wind_direction_code);
      dbms_output.put_line('wind_speed:' || v_serd_stg_header.wind_speed);
      dbms_output.put_line('dry_air_temperature:' || v_serd_stg_header.dry_air_temperature);
      dbms_output.put_line('wet_air_temperature:' || v_serd_stg_header.wet_air_temperature);
      dbms_output.put_line('weather_code:' || v_serd_stg_header.weather_code);
      dbms_output.put_line('cloud_coverage_code:' || v_serd_stg_header.cloud_coverage_code);
      dbms_output.put_line('sea_state_code:' || v_serd_stg_header.sea_state_code);
      dbms_output.put_line('wave_period:' || v_serd_stg_header.wave_period);
      dbms_output.put_line('wave_height:' || v_serd_stg_header.wave_height);
      dbms_output.put_line('atmospheric_pressure:' || v_serd_stg_header.atmospheric_pressure);
      dbms_output.put_line('water_colour_code:' || v_serd_stg_header.water_colour_code);
      dbms_output.put_line('water transparency:' || v_serd_stg_header.water_transparency);
      dbms_output.put_line('salinity_scale_code:' || v_serd_stg_header.salinity_scale_code);
      dbms_output.put_line('bt_sea_surface_instrument_code:' || v_serd_stg_header.bt_sea_surface_instrument_code);
      dbms_output.put_line('bt_sea_surface_reference_temperature:' || v_serd_stg_header.bt_sea_surface_reference_temperature);
      dbms_output.put_line('mbt_sea_surface_temperature_correction:' || v_serd_stg_header.mbt_sea_surface_temperature_correction);
      dbms_output.put_line('mbt_type_quality_code:' || v_serd_stg_header.mbt_type_quality_code);
      dbms_output.put_line('mbt_grade_quality_code:' || v_serd_stg_header.mbt_grade_quality_code);
--      dbms_output.put_line('-----' || substr(t_row_content.row_content,112,3) ||'-----' );

   end loop;
end;
/
