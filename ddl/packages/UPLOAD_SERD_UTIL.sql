CREATE OR REPLACE package upload_serd_util
as

   procedure parse_serd_file
   (
      p_job_number         in number
   );

   procedure parse_serd_data
   (
      p_job_number         in  number,
      o_meds_ship_number   out number,
      o_instrument_code    out number
   ); 

   procedure update_processing_job
   (
      p_job_number         in number,
      p_meds_ship_number   in number,
      p_instrument_code    in number
   );    
   
   function only_one_instrument_data_type
   (
      p_job_number           in number
   ) return boolean;
   
end upload_serd_util;
/

CREATE OR REPLACE package body upload_serd_util
as

   g_package constant varchar2(31) := $$plsql_unit || '.';
   
   type index_record          is record (
      date_time				   date
   ,	year					      number
   ,	month					      number
   ,	instrument_code			number
   ,	observed_depth			   number
   ,	minimum_depth_level		number
   ,	maximum_depth_level		number
   ,	number_of_depth_levels	number
   ,	marsden_square			   number
   ,	quadrant				      number
   ,	degree_square			   number
   ,	duplicate_flag			   number
   ,	hood_archive_year		   number
   ,	string_location			varchar2(15)
   ,	latitude				      number 
   ,	longitude				   number
   ,	meds_ship_number		   number
   ,	meds_cruise_number		number
   ,  meds_observation_number number
   ,  meds_job_number         number
   ,	no_of_comments			   number
   ,	comments				      varchar2(640));
   
   type header_record         is record (
      additional_posn_ref		varchar2(12)
   ,	atmospheric_pressure	   varchar2(5)
   ,	bt_sst_instrument		   varchar2(1)
   ,	bt_sst_ref				   varchar2(4)
   ,	cloud					      varchar2(1)
   ,	data_identifier			varchar2(1)
   ,	data_method				   varchar2(1)
   ,	data_mode				   varchar2(1)
   ,	data_type				   varchar2(1)
   ,	dry_air_temp			   varchar2(4)
   ,	d_corr					   varchar2(3)
   ,	file_filler				   varchar2(4)
   ,	hood_cruise_id			   varchar2(8)
   ,	hood_station_number		varchar2(6)
   ,	land_check				   varchar2(1)
   ,	mbt_grade_quality		   varchar2(1)
   ,	mbt_surface_t_corr		varchar2(3)
   ,	mbt_type_quality		   varchar2(1)
   ,	meds_job_number			number
   ,	meds_observation_number	number
   ,	posn_accuracy_code		varchar2(1)
   ,	posn_determination		varchar2(1)
   ,	sea_state				   varchar2(1)
   ,	sv_corr					   varchar2(3)
   ,	s_corr					   varchar2(4)
   ,	s_scale_code			   varchar2(1)
   ,	t_corr					   varchar2(3)
   ,	units					      varchar2(1)
   ,	water_colour			   varchar2(2)
   ,	water_trans				   varchar2(2)
   ,	wave_height				   varchar2(2)
   ,	wave_period				   varchar2(2)
   ,	weather					   varchar2(1)
   ,	wet_air_temp			   varchar2(4)
   ,	wind_dir				      varchar2(2)
   ,	wind_speed				   varchar2(2));
   
   function only_one_instrument_data_type
   (
         p_job_number           in number
   )
   return boolean
   is
      v_cnt number default 0;
   begin

      select 
         count(distinct c.data_type)
      into 
         v_cnt
      from        stg_file             a
      inner join  v_stg_serd_row_main  b
         on b.stg_file   = a.stg_file
      inner join  instrument           c
         on c.serd       = b.instrumentcode      
      where a.job_number = p_job_number;
      
      return (v_cnt = 1);
   
   end only_one_instrument_data_type;
   
   function parse_decimal
   (
         p_input_string    varchar2
      ,  p_number_decimals number
   )
   return number
   is
   begin
      --dbms_output.put_line('p_input_string length: ' || length(trim(p_input_string)));    
    
      if length(trim(p_input_string)) is null then
         return null;
      end if;
      
      if p_number_decimals > length(p_input_string) then
            dbms_output.put_line('return 2'); 
         return null;
      end if;
      
      return to_number(substr(p_input_string,1,length(p_input_string) - p_number_decimals) || '.' || substr(p_input_string,length(p_input_string)-(p_number_decimals-1),p_number_decimals));
   
   end parse_decimal;
   
   procedure update_processing_job
   (
      p_job_number         in number,
      p_meds_ship_number   in number,
      p_instrument_code    in number
   ) is
   begin
      
      update meds_processing_job
      set meds_ship_number = p_meds_ship_number,
          instrument_code  = p_instrument_code
      where job_number =  p_job_number;    
      
   end update_processing_job;
   
   procedure insert_ship (
      p_ICES_country_code           in varchar2 
   ,  p_ship_number                 in varchar2
   ,  p_ship_number_code            in number   -- to ensure no blank will arrive here from the SERD file
   ,  p_MIAS_institute_code         in varchar2
   ,  p_MIAS_institute_number_code  in number   -- to ensure no blank will arrive here from the SERD file
   ,  p_meds_cruise_number          in number   -- should come from JOB_TRACKING
   ,  p_supplier                    in varchar2 -- should come from JOB_TRACKING
   ,  o_meds_ship_number            out number
   )
   is
      v_meds_ship_number            number;
   begin
   
      select meds_ship_number
      into v_meds_ship_number
      from ship_details
      where country_code      = p_ICES_country_code
      and ices_ship_code      = p_ship_number
      and ices_ship_flag      = p_ship_number_code
      and mias_institute_code = p_MIAS_institute_code
      and mias_institute_flag = p_MIAS_institute_number_code
      and upper(vessel_name)  = upper(p_supplier)
      and meds_cruise_number  = p_meds_cruise_number;
      
      o_meds_ship_number :=  v_meds_ship_number; 
      
   exception
      when no_data_found then 
      
         insert into ship_details (
            country_code
         ,  ices_ship_code
         ,  mias_institute_code
         ,  mias_institute_flag
         ,  ices_ship_flag
         ,  vessel_name
         ,  meds_cruise_number) 
         values (
            p_ICES_country_code
         ,  p_ship_number
         ,  p_MIAS_institute_code
         ,  p_MIAS_institute_number_code 
         ,  p_ship_number_code
         ,  upper(p_supplier)
         ,  p_meds_cruise_number) 
         returning meds_ship_number into v_meds_ship_number;
         
         o_meds_ship_number :=  v_meds_ship_number;  
            --dbms_output.put_line('Ship created ' || v_meds_ship_number); 
         
   end insert_ship;
   
   procedure insert_profile_index (
      p_instr_data_type       in number
   ,  p_index_record          in index_record
   ) 
   is
   begin
   
      if    p_instr_data_type = 1 then -- Temperature Only
         insert into profile_index_tonly (
            comments
         ,	date_time
         ,	location
         ,	meds_job_number
         ,	meds_cruise_number
         ,	instrument_code
         ,	meds_observation_number
         ,	observed_depth
         ,	minimum_depth_level
         ,	maximum_depth_level
         ,	number_of_depth_levels
         ,	marsden_square
         ,	quadrant
         ,	degree_squre
         ,	duplicate_flag
         ,	year
         ,	no_of_comments
         ,	hood_archive_year
         ,	string_location
         ,	latitude
         ,	longitude
         ,	meds_ship_number
         ,	month) 
         values (
            p_index_record.comments
         ,	p_index_record.date_time
         ,	SDO_GEOMETRY(2001, NULL, SDO_POINT_TYPE(p_index_record.longitude, p_index_record.latitude, NULL), NULL, NULL)
         ,	p_index_record.meds_job_number
         ,	p_index_record.meds_cruise_number
         ,	p_index_record.instrument_code
         ,	p_index_record.meds_observation_number
         ,	p_index_record.observed_depth
         ,	p_index_record.minimum_depth_level
         ,	p_index_record.maximum_depth_level
         ,	p_index_record.number_of_depth_levels
         ,	p_index_record.marsden_square
         ,	p_index_record.quadrant
         ,	p_index_record.degree_square
         ,	p_index_record.duplicate_flag
         ,	p_index_record.year
         ,	p_index_record.no_of_comments
         ,	p_index_record.hood_archive_year
         ,	p_index_record.string_location
         ,	p_index_record.latitude
         ,	p_index_record.longitude
         ,	p_index_record.meds_ship_number
         ,	p_index_record.month);        
      elsif p_instr_data_type = 2 then -- Temperature Salinity
         insert into profile_index_ts (
            comments
         ,	date_time
         ,	location
         ,	meds_job_number
         ,	meds_cruise_number
         ,	instrument_code
         ,	meds_observation_number
         ,	observed_depth
         ,	minimum_depth_level
         ,	maximum_depth_level
         ,	number_of_depth_levels
         ,	marsden_square
         ,	quadrant
         ,	degree_squre
         ,	duplicate_flag
         ,	year
         ,	no_of_comments
         ,	hood_archive_year
         ,	string_location
         ,	latitude
         ,	longitude
         ,	meds_ship_number
         ,	month)
         values (
            p_index_record.comments
         ,	p_index_record.date_time
         ,	SDO_GEOMETRY(2001, NULL, SDO_POINT_TYPE(p_index_record.longitude, p_index_record.latitude, NULL), NULL, NULL)
         ,	p_index_record.meds_job_number
         ,	p_index_record.meds_cruise_number
         ,	p_index_record.instrument_code
         ,	p_index_record.meds_observation_number
         ,	p_index_record.observed_depth
         ,	p_index_record.minimum_depth_level
         ,	p_index_record.maximum_depth_level
         ,	p_index_record.number_of_depth_levels
         ,	p_index_record.marsden_square
         ,	p_index_record.quadrant
         ,	p_index_record.degree_square
         ,	p_index_record.duplicate_flag
         ,	p_index_record.year
         ,	p_index_record.no_of_comments
         ,	p_index_record.hood_archive_year
         ,	p_index_record.string_location
         ,	p_index_record.latitude
         ,	p_index_record.longitude
         ,	p_index_record.meds_ship_number
         ,	p_index_record.month);
      elsif p_instr_data_type = 3 then -- Sound Velocity    
         insert into profile_index_sv (
             comments
         ,   date_time
         ,   location
         ,   meds_job_number
         ,   meds_cruise_number
         ,   instrument_code
         ,   meds_observation_number
         ,   observed_depth
         ,   minimum_depth_level
         ,   maximum_depth_level
         ,   number_of_depth_levels
         ,   marsden_square
         ,   quadrant
         ,   degree_squre
         ,   duplicate_flag
         ,   year
         ,   no_of_comments
         ,   hood_archive_year
         ,   string_location
         ,   latitude
         ,   longitude
         ,   meds_ship_number
         ,   month) 
         values (
             p_index_record.comments
         ,   p_index_record.date_time
         ,   SDO_GEOMETRY(2001, NULL, SDO_POINT_TYPE(p_index_record.longitude, p_index_record.latitude, NULL), NULL, NULL)
         ,   p_index_record.meds_job_number
         ,   p_index_record.meds_cruise_number
         ,   p_index_record.instrument_code
         ,   p_index_record.meds_observation_number
         ,   p_index_record.observed_depth
         ,   p_index_record.minimum_depth_level
         ,   p_index_record.maximum_depth_level
         ,   p_index_record.number_of_depth_levels
         ,   p_index_record.marsden_square
         ,   p_index_record.quadrant
         ,   p_index_record.degree_square
         ,   p_index_record.duplicate_flag
         ,   p_index_record.year
         ,   p_index_record.no_of_comments
         ,   p_index_record.hood_archive_year
         ,   p_index_record.string_location
         ,   p_index_record.latitude
         ,   p_index_record.longitude
         ,   p_index_record.meds_ship_number
         ,   p_index_record.month);
      end if;
      
   end insert_profile_index;

   procedure insert_profile_header (
      p_instr_data_type       in number
   ,  p_header_record         in header_record
   ) 
   is
   begin
   
      if    p_instr_data_type = 1 then -- Temperature Only
         insert into profile_header_tonly (
         	additional_posn_ref
         ,	land_check
         ,	hood_cruise_id
         ,	meds_observation_number
         ,	meds_job_number
         ,	wind_speed
         ,	wind_dir
         ,	wet_air_temp
         ,	dry_air_temp
         ,	wave_height
         ,	wave_period
         ,	bt_sst_ref
         ,	d_corr
         ,	t_corr
         ,	atmospheric_pressure
         ,	bt_sst_instrument
         ,	hood_station_number
         ,	mbt_surface_t_corr
         ,	water_trans
         ,	water_colour
         ,	mbt_type_quality
         ,	mbt_grade_quality
         ,	cloud
         ,	sea_state
         ,	weather
         ,	s_scale_code
         ,	posn_determination
         ,	posn_accuracy_code
         ,	data_method
         ,	data_mode
         ,	units
         ,	data_type
         ,	data_identifier
         ,	file_filler) 
         values (
            p_header_record.additional_posn_ref
         ,	p_header_record.land_check
         ,	p_header_record.hood_cruise_id
         ,	p_header_record.meds_observation_number
         ,	p_header_record.meds_job_number
         ,	p_header_record.wind_speed
         ,	p_header_record.wind_dir
         ,	p_header_record.wet_air_temp
         ,	p_header_record.dry_air_temp
         ,	p_header_record.wave_height
         ,	p_header_record.wave_period
         ,	p_header_record.bt_sst_ref
         ,	p_header_record.d_corr
         ,	p_header_record.t_corr
         ,	p_header_record.atmospheric_pressure
         ,	p_header_record.bt_sst_instrument
         ,	p_header_record.hood_station_number
         ,	p_header_record.mbt_surface_t_corr
         ,	p_header_record.water_trans
         ,	p_header_record.water_colour
         ,	p_header_record.mbt_type_quality
         ,	p_header_record.mbt_grade_quality
         ,	p_header_record.cloud
         ,	p_header_record.sea_state
         ,	p_header_record.weather
         ,	p_header_record.s_scale_code
         ,	p_header_record.posn_determination
         ,	p_header_record.posn_accuracy_code
         ,	p_header_record.data_method
         ,	p_header_record.data_mode
         ,	p_header_record.units
         ,	p_header_record.data_type
         ,	p_header_record.data_identifier
         ,	p_header_record.file_filler);                 
      elsif p_instr_data_type = 2 then -- Temperature Salinity
         insert into profile_header_ts (
            additional_posn_ref
         ,	land_check
         ,	hood_cruise_id
         ,	meds_observation_number
         ,	meds_job_number
         ,	weather
         ,	wind_dir
         ,	wind_speed
         ,	t_corr
         ,	s_corr
         ,	dry_air_temp
         ,	d_corr
         ,	hood_station_number
         ,	wet_air_temp
         ,	sea_state
         ,	cloud
         ,	water_colour
         ,	water_trans
         ,	wave_period
         ,	sv_corr
         ,	atmospheric_pressure
         ,	wave_height
         ,	s_scale_code
         ,	posn_determination
         ,	posn_accuracy_code
         ,	data_method
         ,	data_mode
         ,	units
         ,	data_type
         ,	data_identifier
         ,	file_filler
         ) values (
            p_header_record.additional_posn_ref
         ,	p_header_record.land_check
         ,	p_header_record.hood_cruise_id
         ,	p_header_record.meds_observation_number
         ,	p_header_record.meds_job_number
         ,	p_header_record.weather
         ,	p_header_record.wind_dir
         ,	p_header_record.wind_speed
         ,	p_header_record.t_corr
         ,	p_header_record.s_corr
         ,	p_header_record.dry_air_temp
         ,	p_header_record.d_corr
         ,	p_header_record.hood_station_number
         ,	p_header_record.wet_air_temp
         ,	p_header_record.sea_state
         ,	p_header_record.cloud
         ,	p_header_record.water_colour
         ,	p_header_record.water_trans
         ,	p_header_record.wave_period
         ,	p_header_record.sv_corr
         ,	p_header_record.atmospheric_pressure
         ,	p_header_record.wave_height
         ,	p_header_record.s_scale_code
         ,	p_header_record.posn_determination
         ,	p_header_record.posn_accuracy_code
         ,	p_header_record.data_method
         ,	p_header_record.data_mode
         ,	p_header_record.units
         ,	p_header_record.data_type
         ,	p_header_record.data_identifier
         ,	p_header_record.file_filler
         );
      elsif p_instr_data_type = 3 then -- Sound Velocity    
         insert into profile_header_sv (
            additional_posn_ref
         ,	atmospheric_pressure
         ,	cloud
         ,	data_identifier
         ,	data_method
         ,	data_mode
         ,	data_type
         ,	dry_air_temp
         ,	d_corr
         ,	file_filler
         ,	hood_cruise_id
         ,	hood_station_number
         ,	land_check
         ,	meds_job_number
         ,	meds_observation_number
         ,	posn_accuracy_code
         ,	posn_determination
         ,	sea_state
         ,	sv_corr
         ,	s_corr
         ,	s_scale_code
         ,	t_corr
         ,	units
         ,	water_colour
         ,	water_trans
         ,	wave_height
         ,	wave_period
         ,	weather
         ,	wet_air_temp
         ,	wind_dir
         ,	wind_speed) 
         values (
            p_header_record.additional_posn_ref
         ,	p_header_record.atmospheric_pressure
         ,	p_header_record.cloud
         ,	p_header_record.data_identifier
         ,	p_header_record.data_method
         ,	p_header_record.data_mode
         ,	p_header_record.data_type
         ,	p_header_record.dry_air_temp
         ,	p_header_record.d_corr
         ,	p_header_record.file_filler
         ,	p_header_record.hood_cruise_id
         ,	p_header_record.hood_station_number
         ,	p_header_record.land_check
         ,	p_header_record.meds_job_number
         ,	p_header_record.meds_observation_number
         ,	p_header_record.posn_accuracy_code
         ,	p_header_record.posn_determination
         ,	p_header_record.sea_state
         ,	p_header_record.sv_corr
         ,	p_header_record.s_corr
         ,	p_header_record.s_scale_code
         ,	p_header_record.t_corr
         ,	p_header_record.units
         ,	p_header_record.water_colour
         ,	p_header_record.water_trans
         ,	p_header_record.wave_height
         ,	p_header_record.wave_period
         ,	p_header_record.weather
         ,	p_header_record.wet_air_temp
         ,	p_header_record.wind_dir
         ,	p_header_record.wind_speed);
      end if;
      
   end insert_profile_header;
      
   procedure insert_profile_data (
      p_instr_data_type          in number
   ,  p_job_number               in number
   ,  p_observation_number       in number
   ,  p_depht_level_count        in number      -- f_main_row.depthlevelcount
   ,  p_depth_row_content        in varchar2    -- f_main_row.row_depth_content
   ) 
   is
      type data_record           is record(
         depth	                  number
      ,  depth_indicator	      varchar2(1)
      ,  d_quality	            varchar2(1)
      ,  salinity             	number   
      ,  sv_calculated	         number   
      ,  sv_code	               varchar2(1)
      ,  sv_quality	            varchar2(1)
      ,  sv_recorded	            number   
      ,  s_quality	            varchar2(1)
      ,  temperature	            number   
      ,  t_quality	            varchar2(1));
      
      data_rec                   data_record;
      v_part                     varchar2(1000);
      v_offset                   number default 1;
   begin
       
      for i in 1..p_depht_level_count 
      loop
         v_part   := substr(p_depth_row_content, v_offset, 24);
         v_offset := v_offset + 24;
         --dbms_output.put_line('observation ' || p_observation_number || ' ' || v_part); 
                
         data_rec.depth_indicator   := substr(v_part,1,1); 
         data_rec.depth             := substr(v_part,2,4);
         data_rec.d_quality         := substr(v_part,6,1);
         data_rec.temperature       := parse_decimal(substr(v_part,7,4), 2);   -- Degrees celsius to hundredths
         data_rec.t_quality         := substr(v_part,11,1);
         data_rec.salinity          := parse_decimal(substr(v_part,12,5), 3);  -- Parts per thousand to thousandths
         data_rec.s_quality         := substr(v_part,17,1);
         data_rec.sv_calculated     := parse_decimal(substr(v_part,18,5), 1);  -- Metres per second to tenths
         data_rec.sv_recorded       := data_rec.sv_calculated;
         data_rec.sv_quality        := substr(v_part,23,1);
         data_rec.sv_code           := substr(v_part,24,1);

         if    p_instr_data_type = 1 then -- Temperature Only
            insert into profile_data_tonly (
                depth
            ,   temperature
            ,   meds_job_number
            ,   meds_observation_number
            ,   t_quality
            ,   d_quality) 
            values (
                data_rec.depth
            ,   data_rec.temperature
            ,   p_job_number
            ,   p_observation_number
            ,   data_rec.t_quality
            ,   data_rec.d_quality);         
         elsif p_instr_data_type = 2 then -- Temperature Salinity
            insert into profile_data_ts (
                depth
            ,   temperature
            ,   salinity
            ,   sv_calculated
            ,   meds_observation_number
            ,   meds_job_number
            ,   depth_indicator
            ,   t_quality
            ,   sv_quality
            ,   s_quality
            ,   d_quality
            ,   sv_code) 
            values (
                data_rec.depth
            ,   data_rec.temperature
            ,   data_rec.salinity
            ,   data_rec.sv_calculated
            ,   p_observation_number
            ,   p_job_number
            ,   data_rec.depth_indicator
            ,   data_rec.t_quality
            ,   data_rec.sv_quality
            ,   data_rec.s_quality
            ,   data_rec.d_quality
            ,   data_rec.sv_code);
         elsif p_instr_data_type = 3 then -- Sound Velocity    
            insert into profile_data_sv (
                depth
            ,   temperature
            ,   salinity
            ,   sv_recorded
            ,   meds_job_number
            ,   meds_observation_number
            ,   sv_quality
            ,   d_quality
            ,   t_quality
            ,   s_quality
            ,   sv_code) 
            values (
                data_rec.depth
            ,   data_rec.temperature
            ,   data_rec.salinity
            ,   data_rec.sv_recorded
            ,   p_job_number
            ,   p_observation_number
            ,   data_rec.sv_quality
            ,   data_rec.d_quality
            ,   data_rec.t_quality
            ,   data_rec.s_quality
            ,   data_rec.sv_code);
         end if;
       
      end loop;
       
   end insert_profile_data;

   procedure parse_serd_data
   (
      p_job_number         in  number,
      o_meds_ship_number   out number,
      o_instrument_code    out number
   )
   is

      v_tbl                varchar2(100);
      v_supplier           varchar2(50);
      v_obs                number default 0; -- this will be MEDS_OBSERVATION_NUMBER, one for each record type 2
      v_rows               number;
      v_instr_data_type    number;
      v_meds_cruise_number number;

      index_rec            index_record;
      header_rec           header_record;
      
      l_params             logger.tab_param; 
      l_scope              constant varchar2(61) := g_package||'parse_serd_data';
   begin
      --dbms_output. enable (buffer_size => null); 
      --logger.set_level      (p_level   => 8 );      
      logger.append_param   (p_params  => l_params
                           , p_name    => 'parse_serd_data'
                           , p_val     => p_job_number); 
      logger.log_information(p_text    => 'Start' 
                            ,p_scope   => l_scope 
                            ,p_params  => l_params 
                            ); 
      
      select 
         a.meds_cruise_number
      ,  b.supplier
      into 
         v_meds_cruise_number
      ,  v_supplier
      from        meds_processing_job  a
      inner join  job_tracking         b
         on b.meic_number  = a.meic_number
      where a.job_number   = p_job_number;
      
      -- Find which type of SERD is being uploaded getting the data type from the instrument codes in the file (should not have more than one instrument per job upload)
      -- It will crash if mixed data types are in the same file. Refactoring should consider custom exceptions
      select distinct 
          c.data_type
      into 
         v_instr_data_type
      from       stg_file            a
      inner join v_stg_serd_row_main b 
          on b.stg_file  = a.stg_file
      inner join instrument          c 
          on c.serd      = b.instrumentcode
      where a.job_number = p_job_number;
      
      -- Verify if the job has already been uploaded in the PROFILE tables
      if    v_instr_data_type = 1 then -- Temperature Only
         v_tbl := 'PROFILE_INDEX_TONLY';
      elsif v_instr_data_type = 2 then -- Temperature Salinity
         v_tbl := 'PROFILE_INDEX_TS';
      elsif v_instr_data_type = 3 then -- Sound Velocity       
         v_tbl := 'PROFILE_INDEX_SV';
      end if;
 
      execute immediate 'select count(1) from ' || v_tbl || ' where meds_job_number = ' || p_job_number into v_rows;

      if v_rows > 0 then
         --dbms_output.put_line('Job already loaded'); 
         logger.log_information(p_text  => 'Job already loaded' 
                               ,p_scope => l_scope); 
         --logger.set_level      (p_level => 2 ); 
         logger.log_information(p_text  => 'End' 
                               ,p_scope => l_scope);
         return;
      end if;
      
      -- Process the SERD upload
      for f_main_row in 
      (
         select 
            b.*
         from stg_file        a
         inner join v_stg_serd_row_main b 
            on b.stg_file = a.stg_file
         where a.job_number = p_job_number
         order by b.row_sequence
      )
      loop -- Each record is an observation
         v_obs    := v_obs + 1;
         
         -- PROFILE_INDEX 
         index_rec.date_time					   := to_date(f_main_row.observationdate || f_main_row.observationtime,'YYYYMMDDHH24MI');
         index_rec.year						      := substr(f_main_row.observationdate,1,4);
         index_rec.month						   := substr(f_main_row.observationdate,5,2);        
         index_rec.observed_depth			   := nullif(f_main_row.depthtoseabed, '     ');
         index_rec.minimum_depth_level		   := f_main_row.OBSERVATIONDEPTHMIN;
         index_rec.maximum_depth_level		   := f_main_row.OBSERVATIONDEPTHMAX;
         index_rec.number_of_depth_levels	   := f_main_row.DEPTHLEVELCOUNT;
         index_rec.marsden_square			   := f_main_row.MARSDENSQUARE;
         index_rec.quadrant					   := f_main_row.quadrant;
         index_rec.degree_square				   := f_main_row.degreesquare;
         index_rec.hood_archive_year		   := nullif(f_main_row.archiveyear, '  ');
         index_rec.no_of_comments			   := f_main_row.commentcount;
         index_rec.comments					   := trim(f_main_row.commentcontent);
         index_rec.meds_job_number           := p_job_number;
         index_rec.meds_observation_number   := v_obs;
         index_rec.string_location           := f_main_row.positiongeo;
         index_rec.latitude	               := substr(f_main_row.positiongeo,1,3) + round(substr(f_main_row.positiongeo,4,4)/600, 4);
         index_rec.longitude                 := substr(f_main_row.positiongeo,8,4) + round(substr(f_main_row.positiongeo,12,4)/600, 4);
         index_rec.meds_cruise_number        := v_meds_cruise_number;
         
         select ocean
         into index_rec.instrument_code
         from instrument
         where serd = f_main_row.instrumentcode;

         upload_serd_util.insert_ship(p_ices_country_code          => f_main_row.country,
                                      p_ship_number                => f_main_row.shipnumber,
                                      p_ship_number_code           => f_main_row.shipnumbercode ,       -- might crash if not 0/1?
                                      p_mias_institute_code        => f_main_row.institutenumber,
                                      p_mias_institute_number_code => f_main_row.institutenumbercode,   -- might crash if not 0/1?
                                      p_supplier                   => v_supplier,
                                      p_meds_cruise_number         => v_meds_cruise_number,
                                      o_meds_ship_number           => index_rec.meds_ship_number);
                                        
         -- PROFILE_HEADER          
         header_rec.additional_posn_ref		:= f_main_row.positionreference;
         header_rec.atmospheric_pressure		:= f_main_row.atmosphericpressure;
         header_rec.cloud					      := f_main_row.cloud;
         header_rec.data_identifier			   := f_main_row.dataid;
         header_rec.data_method				   := f_main_row.METHOD;
         header_rec.data_mode				      := f_main_row.datamode;
         header_rec.data_type				      := f_main_row.datatype;
         header_rec.dry_air_temp				   := f_main_row.airtemperaturedry; -- digits
         header_rec.d_corr					      := f_main_row.depthcorrection;
         --header_rec.file_filler				   := f_main_row. ;
         --header_rec.hood_cruise_id			   := f_main_row. ;
         header_rec.hood_station_number		:= f_main_row.station;
         header_rec.land_check				   := f_main_row.landcheck;
         header_rec.meds_job_number			   := p_job_number;
         header_rec.meds_observation_number	:= v_obs;
         header_rec.posn_accuracy_code		   := f_main_row.positionaccuracy;
         header_rec.posn_determination		   := f_main_row.positionmiascode;
         header_rec.sea_state				      := f_main_row.seastate;
         header_rec.sv_corr					   := f_main_row.soundvelocitycorrection;
         header_rec.s_corr					      := f_main_row.salinitycorrection;
         header_rec.s_scale_code				   := f_main_row.salinityscalecode;
         header_rec.t_corr					      := f_main_row.temperaturecorrection;
         header_rec.units					      := f_main_row.units;
         header_rec.water_colour				   := f_main_row.watercolour;
         header_rec.water_trans				   := f_main_row.watertransparency;
         header_rec.wave_height				   := f_main_row.waveheight;
         header_rec.wave_period				   := f_main_row.waveperiod;
         header_rec.weather					   := f_main_row.weather;
         header_rec.wet_air_temp				   := f_main_row.airtemperaturewet;
         header_rec.wind_dir					   := f_main_row.winddirection;
         header_rec.wind_speed				   := f_main_row.windspeed;	                              
      
         insert_profile_header(p_instr_data_type => v_instr_data_type,
                               p_header_record   => header_rec);
                              
         -- PROFILE_DATA  
         insert_profile_data (p_instr_data_type    => v_instr_data_type,
                              p_job_number         => p_job_number,
                              p_observation_number => v_obs,
                              p_depht_level_count  => f_main_row.depthlevelcount,
                              p_depth_row_content  => f_main_row.row_depth_content); 
                              
         -- Continuation records
         -- For each main record found, get all the continuation records with the same grouping (which is the geographycal position at the end!)
         for f_cont_row in 
         (
            select *
            from v_stg_serd_row_continuation
            where stg_file = f_main_row.stg_file
            and row_group_content = f_main_row.row_group_content
         )loop
            insert_profile_data (p_instr_data_type    => v_instr_data_type,
                                 p_job_number         => p_job_number,
                                 p_observation_number => v_obs,
                                 p_depht_level_count  => f_cont_row.depthlevelcount,
                                 p_depth_row_content  => f_cont_row.row_depth_content); 
                                 
            index_rec.number_of_depth_levels := index_rec.number_of_depth_levels + f_cont_row.depthlevelcount;
         end loop;
         
         -- Insert PROFILE_INDEX after all the continuation rows depth level were accounted for
         insert_profile_index(p_instr_data_type => v_instr_data_type,
                              p_index_record    => index_rec);
      
      end loop;      

      o_meds_ship_number  := index_rec.meds_ship_number; 
      o_instrument_code   := index_rec.instrument_code;
      
      --logger.set_level      (p_level => 2 );      
      logger.log_information(p_text  => 'End' 
                            ,p_scope => l_scope);    
      
      exception 
         when others then 
            logger.log_error('Unhandled exception', l_scope, null, l_params); 
            --logger.set_level(p_level   => 2 ); 
            
   end parse_serd_data;  

   procedure parse_serd_file
   (
      p_job_number    number
   )
   is
      v_clob      clob     default empty_clob();
      v_line      number;
      v_offset    number;
      v_len       number;
      v_read      number;
      v_string    varchar2(32000);
      
      l_params             logger.tab_param; 
      l_scope              constant varchar2(61) := g_package||'parse_serd_file';
   begin
   
      logger.append_param   (p_params  => l_params
                           , p_name    => 'parse_serd_file'
                           , p_val     => p_job_number); 
      logger.log_information(p_text    => 'Start' 
                            ,p_scope   => l_scope 
                            ,p_params  => l_params 
                            ); 
      
      for t_stg_file in (select stg_file, content from stg_file where job_number = p_job_number)
      loop
         delete from stg_file_serd_row where stg_file = t_stg_file.stg_file;
         v_line   := 0;
         v_offset := 1;
         v_clob   := to_clob(t_stg_file.content);
         v_len    := dbms_lob.getlength(v_clob);
         
         --dbms_output.ENABLE (buffer_size => NULL);
         --dbms_output.put_line(v_len);
         
         while(v_offset <= v_len)
         loop
            v_read := instr(v_clob, CHR(10), v_offset, 1);
            
            exit when v_read = 0;
            
            v_string := dbms_lob.substr(v_clob, v_read - v_offset, v_offset);  
            v_line   := v_line + 1;
            v_offset := v_read + 1;
      
            insert into stg_file_serd_row
            (
               stg_file,
               row_sequence,
               row_content
            )
            values
            (
               t_stg_file.stg_file,
               v_line,
               v_string
            );
            --dbms_output.put_line('Line #' || v_line || ' - ' || substr(v_string,1,1000));
         end loop;
      end loop;
      
      logger.log_information(p_text  => 'End' 
                            ,p_scope => l_scope);     
      
      exception 
         when others then 
            logger.log_error('Unhandled exception', l_scope, null, l_params); 
      end parse_serd_file;  
   
end upload_serd_util;
/
