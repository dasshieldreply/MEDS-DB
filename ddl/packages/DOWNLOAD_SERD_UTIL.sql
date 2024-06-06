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

   type header_record is record (
      recordfiller				   char(4)
   ,	recordtype					   char(1)
   ,	recordnumber				   number(2)
   ,	data_identifier			   char(1)
   ,	data_use_code			      char(1)
   ,	file_code					   char(1) 
   ,	marsden_square				   number(3,0)
   ,	degree_square				   number(2,0)
   ,	string_location			   char(15)
   ,	quadrant					      number(1,0)
   ,	posn_determination		   char(1)
   ,	posn_accuracy_code		   char(1)
   ,	additional_posn_ref		   char(12)
   ,	hood_archive_year			   number(2,0)
   ,	observation_date				char(8)
   ,	observation_time				char(4)
   ,	country						   char(2)
   ,	ices_ship_code				   char(2)
   ,	ices_ship_flag				   number(1,0)
   ,	cruise_name    			   char(8)
   ,	hood_station_number		   char(6)
   ,	mias_institute_code			char(3)
   ,	mias_institute_flag			number(1,0)
   ,	land_check					   char(1) 
   ,	depth_level_count				number(2,0)
   ,	observed_depth				   number(5,0)
   ,	minimum_depth_level			number(4,0)
   ,	maximum_depth_level			number(4,0)
   ,	d_corr				         char(3)
   ,	t_corr		               char(3)
   ,	s_corr			            char(4)
   ,	sv_corr              		char(3)
   ,	units 						   char(1)
   ,	instrument_code 				char(2)
   ,	data_type 					   char(1)
   ,	data_mode				      char(1)
   ,	data_method					   char(1)
   ,	wind_dir				         char(2)
   ,	wind_speed					   char(2)
   ,	dry_air_temp			      char(4)
   ,	wet_air_temp			      char(4)
   ,	weather						   char(1)
   ,	cloud						      char(1)
   ,	sea_state 					   char(1)
   ,	wave_period					   char(2)
   ,	wave_height 					char(2)
   ,	atmospheric_pressure 		char(4)
   ,	water_colour					char(2)
   ,	water_trans			         char(2)
   ,	s_scale_code 			      char(1)
   ,	bt_sst_instrument		      char(1)
   ,	bt_sst_ref		            char(4)
   ,	mbt_surface_t_corr	      char(3)
   ,	mbt_type_quality				char(1)
   ,	mbt_grade_quality 			char(1));

   function create_header
   (
      p_header_rec   header_record
   )
   return varchar2
   is
      l_header    char(214);
   begin
      l_header := p_header_rec.recordfiller
         || p_header_rec.recordtype
         || p_header_rec.recordnumber
         || p_header_rec.data_identifier
         || p_header_rec.data_use_code
         || p_header_rec.file_code
         || p_header_rec.marsden_square
         || p_header_rec.degree_square
         || p_header_rec.string_location
         || p_header_rec.quadrant
         || p_header_rec.posn_determination
         || p_header_rec.posn_accuracy_code
         || p_header_rec.additional_posn_ref
         || p_header_rec.hood_archive_year
         || p_header_rec.observation_date
         || p_header_rec.observation_time
         || p_header_rec.country
         || p_header_rec.ices_ship_code
         || p_header_rec.ices_ship_flag
         || p_header_rec.cruise_name
         || p_header_rec.hood_station_number
         || p_header_rec.mias_institute_code
         || p_header_rec.mias_institute_flag
         || p_header_rec.land_check
         || p_header_rec.depth_level_count
         || p_header_rec.observed_depth
         || p_header_rec.minimum_depth_level
         || p_header_rec.maximum_depth_level
         || p_header_rec.d_corr
         || p_header_rec.t_corr
         || p_header_rec.s_corr
         || p_header_rec.sv_corr
         || p_header_rec.units
         || p_header_rec.instrument_code
         || p_header_rec.data_type
         || p_header_rec.data_mode
         || p_header_rec.data_method
         || p_header_rec.wind_dir
         || p_header_rec.wind_speed
         || p_header_rec.dry_air_temp
         || p_header_rec.wet_air_temp
         || p_header_rec.weather
         || p_header_rec.cloud
         || p_header_rec.sea_state
         || p_header_rec.wave_period
         || p_header_rec.wave_height
         || p_header_rec.atmospheric_pressure
         || p_header_rec.water_colour
         || p_header_rec.water_trans
         || p_header_rec.s_scale_code
         || p_header_rec.bt_sst_instrument
         || p_header_rec.bt_sst_ref
         || p_header_rec.mbt_surface_t_corr
         || p_header_rec.mbt_type_quality
         || p_header_rec.mbt_grade_quality;   
      return l_header;
   end create_header;

   function download_sv_serd_file
   (
      p_medsfilter   number
   )
   return serd_table
   pipelined
   is
      l_serd_rec     serd_record; 
      l_header_rec   header_record;
      l_rec_no       number default 0;
   begin
   
      for l_header_rec in 
      (
         select 
            '000A'
         ,  2
         ,  0
         ,  c.data_identifier
         ,  ' ' -- data_use_code
         ,  ' ' -- file_code
         ,  b.marsden_square
         ,  b.degree_squre
         ,  b.string_location
         ,  b.quadrant
         ,  c.posn_determination
         ,  c.posn_accuracy_code
         ,  c.additional_posn_ref
         ,  b.hood_archive_year
         ,  to_char(b.date_time, 'DDMMYYYY')
         ,  to_char(b.date_time, 'HH24MI')
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
         ,  ' ' --c.bt_sst_instrument
         ,  ' ' --c.bt_sst_ref
         ,  ' ' --c.mbt_surface_t_corr
         ,  ' ' --c.mbt_type_quality
         ,  ' ' --c.mbt_grade_quality 
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
         l_serd_rec.record_data := create_header(l_header_rec);
      
         pipe row (l_serd_record);
      end loop;
      
      return;      
   end download_sv_serd_file;     
end download_serd_util;
/
