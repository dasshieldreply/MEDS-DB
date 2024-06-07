create or replace package types_util
as

   subtype header_string      is char(847);
   subtype level_string       is char(24);
   subtype all_levels_string  is varchar2(2000);
   
   type serd_record  is record (
      record_data    varchar2(4000));
      
   type serd_table   is table of serd_record;
   
   type level_record  is record(
      depth_indicator            char(1)
   ,  depth                      number(4,0)
   ,  d_quality                  char(1)
   ,  temperature                number(4,2)
   ,  t_quality                  char(1)
   ,  salinity                   number(5,3)
   ,  s_quality                  char(1)
   ,  sound_velocity             number(5,1)
   ,  sv_quality                 char(1)
   ,  sv_code                    char(1)
   );
   
   type header_record is record(
   	data_identifier			   char(1)
   ,	marsden_square				   number(3,0)
   ,	degree_squre				   number(2,0)
   ,	string_location			   char(15)
   ,	quadrant					      number(1,0)
   ,	posn_determination		   char(1)
   ,	posn_accuracy_code		   char(1)
   ,	additional_posn_ref		   char(12)
   ,	hood_archive_year			   number(2,0)
   ,	date_time				      date
   ,	country_code				   char(2)
   ,	ices_ship_code				   char(2)
   ,	ices_ship_flag				   number(1,0)
   ,	cruise_name    			   char(8)
   ,	hood_station_number		   char(6)
   ,	mias_institute_code			char(3)
   ,	mias_institute_flag			number(1,0)
   ,	land_check					   char(1) 
   ,  number_of_depth_levels     number
   ,	observed_depth				   number(5,0)
   ,	minimum_depth_level			number(4,0)
   ,	maximum_depth_level			number(4,0)
   ,	d_corr				         char(3)
   ,	t_corr		               char(3)
   ,	s_corr			            char(4)
   ,	sv_corr              		char(3)
   ,	units 						   char(1)
   ,	serd 				            char(2)
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
   ,	atmospheric_pressure 		char(5) 
   ,	water_colour					char(2)
   ,	water_trans			         char(2)
   ,	s_scale_code 			      char(1) 
   ,	bt_sst_instrument		      char(1)
   ,	bt_sst_ref		            char(4)
   ,	mbt_surface_t_corr	      char(3)
   ,	mbt_type_quality				char(1)
   ,	mbt_grade_quality 			char(1) 
   ,  no_of_comments             number(2,0)
   ,  comments                   char(640)
   ,  meds_job_number            number
   ,  meds_observation_number    number
   );
end types_util;
/