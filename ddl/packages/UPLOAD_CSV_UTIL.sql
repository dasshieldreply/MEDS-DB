CREATE OR REPLACE package upload_csv_util
as

   procedure delete_stg_file_from_job
   (
      p_job_number   in number
   );

   procedure delete_stg_file
   (
      p_stg_file   in number
   );
   
   procedure parse_csv_file
   (
      p_job_number   in number
   );

   procedure parse_csv_data
   (
      p_job_number   in number
   );   
       
end upload_csv_util;
/

-- -----------------------------------------------------------------------------------------------------------------
-- PACKAGE BODY
-- -----------------------------------------------------------------------------------------------------------------

CREATE OR REPLACE package body upload_csv_util
as

   procedure parse_datatype_front_satellite
   (
      p_job_number   in number
   )
   is
      v_stm    varchar2(4000);
      v_ins    varchar2(1000) default 'insert into front_satellite_observation (location, meds_job_number, meds_observation_number, observered_date) values (sdo_geometry(2002, null, null, sdo_elem_info_array(1, 2, 1), sdo_ordinate_array(';
   begin
      dbms_output. enable (buffer_size => null); 
   
     for f_row in 
      (
         select 
            row_number() over(order by to_number(b.col006), to_number(b.col001))                   as observation
         ,  listagg(b.col010 || ', ' || b.col009, ', ') within group(order by to_number(b.col008)) as glideline      -- longitude, latitude in sequence of vertex_id
         ,  b.col006             as observered_date
         ,  b.col005             as frontal_depth   
         ,  b.col002             as frontal_name
         ,  b.col003             as frontal_type   
         ,  b.col004             as boundary_type
         ,  to_number(b.col001)  as frontal_line_id
         ,  a.stg_file
         from       stg_file         a
         inner join stg_file_csv_row b 
            on b.stg_file   = a.stg_file
         where a.job_number = p_job_number
         group by 
            a.stg_file
         ,  b.col001
         ,  b.col002
         ,  b.col003
         ,  b.col004
         ,  b.col005
         ,  b.col006
         order by 
            to_number(b.col006)
         ,  to_number(b.col001)
      ) loop
      
         v_stm := v_ins 
               || f_row.glideline
               || ')), '
               || p_job_number      || ', '
               || f_row.observation || ', ' 
               || 'to_date('     
               || chr(39) 
               || f_row.observered_date
               || chr(39) 
               || ','
               || chr(39)
               || 'DDMMYYYY' 
               || CHR(39) || '))';
         
         --dbms_output.put_line(v_stm);
         execute immediate v_stm;
      end loop;
           
      insert into front_image_data 
      (
         meds_observation_number
      ,  meds_job_number
      ,  point_type           
      ,  frontal_gradient     
      ,  frontal_depth
      ,  frontal_name
      ,  frontal_type
      ,  frontal_confidence
      ,  frontal_line_id
      ,  boundary_type
      )      
       select 
         row_number() over(order by to_number(b.col006), to_number(b.col001))
      ,  p_job_number
      ,  null                 -- Not in FIELD_LOOKUP
      ,  null                 -- Not in FIELD_LOOKUP
      ,  b.col005               
      ,  b.col002             
      ,  b.col003             
      ,  null                 -- Not in FIELD_LOOKUP
      ,  to_number(b.col001)  
      ,  b.col004             
      from       stg_file         a
      inner join stg_file_csv_row b 
         on b.stg_file   = a.stg_file
      where a.job_number = p_job_number
      group by 
         a.stg_file
      ,  b.col001
      ,  b.col002
      ,  b.col003
      ,  b.col004
      ,  b.col005
      ,  b.col006
      order by 
         to_number(b.col006)
      ,  to_number(b.col001);
           
      commit; -- front_image_data is used in the next insert, so the previous transaction must end, to avoid error ORA-12838
      
      -- Table front_image_repeat has the rows fom the csv, one by one, and it contain the line of the satellite immage 
      insert into front_image_repeat 
      (
         latitude
      ,  longitude
      ,  confidence
      ,  strength
      ,  meds_job_number
      ,  meds_observation_number
      ,  point_order
      ,  vertex_id
      ) 
      select 
         latitude
      ,  longitude
      ,  confidence
      ,  strength
      ,  job_number
      ,  observation
      ,  rownum
      ,  vertex_id 
      from
      (
         select 
            b.col009       as latitude
         ,  b.col010       as longitude
         ,  b.col012       as confidence
         ,  b.col011       as strength
         ,  p_job_number   as job_number
         ,  (
               select c.meds_observation_number 
               from front_image_data c 
               where c.frontal_line_id = b.col001
               and c.frontal_name      = b.col002
               and c.frontal_type      = b.col003
               and c.boundary_type     = b.col004
               and c.frontal_depth     = b.col005
            )              as observation
         ,  b.col008       as vertex_id
         from       stg_file           a
         inner join stg_file_csv_row   b 
            on  b.stg_file  = a.stg_file
         where a.job_number = p_job_number
         order by 
            observation
         ,  to_number(b.col006)
         ,  to_number(b.col001)
         ,  to_number(b.col008)
      ) d;
      
      commit;
   
   exception
      when others then
         delete from front_satellite_observation   where meds_job_number = p_job_number;
         delete from front_image_data              where meds_job_number = p_job_number;
         delete from front_image_repeat            where meds_job_number = p_job_number;
         --TODO  log here
         commit;
       
   end parse_datatype_front_satellite;

   procedure parse_datatype_adcp
   (
      p_job_number   in number
   )
   is
      v_obs number default 0;
   begin
   
      -- Insert the observations and data, from the '.hdr' file loaded
      -- Fields ENABLE, COG, PITCH, ROLL, COMPASS are not listed in FIELD_LOOKUP, so not included in the insert statements
       for f_csv_row in 
      (
         select 
            SDO_GEOMETRY(2001, 4326, SDO_POINT_TYPE(b.col006, b.col005, NULL), NULL, NULL) as location -- Longitude, latitude
         ,  b.col006	as longitude
         ,  b.col005	as latitude
         ,  to_date(b.col003, 'dd/mm/yyyy hh24:mi:ss')   as date_recorded
         ,  b.col010	   as profile
         ,	b.col011 	as depth_bsl_trans 
         ,	b.col014 	as heading 
         ,	b.col021 	as temperature 
         ,	b.col012 	as bin_size 
         ,	b.col013 	as bin_1_distance 
         ,	b.col007 	as water_depth 
         ,	b.col008 	as no_bins 
         ,	b.col009  	as no_ensembles 
         ,	b.col015 	as speed_ship 
         ,	b.col016 	as dir_ship 
         ,	b.col017 	as u_ship 
         ,	b.col018 	as v_ship 
         ,	b.col019 	as u_bottom 
         ,	b.col020 	as v_bottom 
         ,	b.col022 	as scale_factor 
         ,	b.col010 	as "profile" 
         ,	b.col004 	as julian_day
         from       stg_file         a
         inner join stg_file_csv_row b
            on b.stg_file   = a.stg_file  
         where a.job_number = p_job_number
         and lower(a.filename) like '%.hdr'  -- Two files are uploaded for an ADCP job, a '.hdr' and a '.dat'. The '.hdr' file has the observations and data.
         order by b.row_sequence
      )
      loop
         v_obs := v_obs + 1;
         
         insert into adcp_observation 
         (
            location
         ,  meds_job_number
         ,  meds_observation_number
         ,  longitude
         ,  latitude
         ,  date_recorded
         ,  profile
         ) 
         values
         (
            f_csv_row.location
         ,  p_job_number
         ,  v_obs
         ,  f_csv_row.longitude
         ,  f_csv_row.latitude
         ,  f_csv_row.date_recorded
         ,  f_csv_row.profile
         );
         
         insert into adcp_data (
         	meds_job_number 
         ,	meds_observation_number 
         ,	depth_bsl_trans 
         ,	heading
         ,	temperature 
         ,	bin_size 
         ,	bin_1_distance 
         ,	water_depth 
         ,	no_bins 
         ,	no_ensembles 
         ,	speed_ship 
         ,	dir_ship 
         ,	u_ship 
         ,	v_ship 
         ,	u_bottom 
         ,	v_bottom 
         ,	scale_factor 
         ,	profile
         ,	julian_day
         ) 
         values 
         (
         	p_job_number 
         ,	v_obs 
         ,	f_csv_row.depth_bsl_trans 
         ,	f_csv_row.heading
         ,	f_csv_row.temperature 
         ,	f_csv_row.bin_size 
         ,	f_csv_row.bin_1_distance 
         ,	f_csv_row.water_depth 
         ,	f_csv_row.no_bins 
         ,	f_csv_row.no_ensembles 
         ,	f_csv_row.speed_ship 
         ,	f_csv_row.dir_ship 
         ,	f_csv_row.u_ship 
         ,	f_csv_row.v_ship 
         ,	f_csv_row.u_bottom 
         ,	f_csv_row.v_bottom 
         ,	f_csv_row.scale_factor 
         ,	f_csv_row.profile
         ,	f_csv_row.julian_day
         );
      end loop;
      
      commit; -- adcp_observation is used in the next insert, so the previous transaction must end, to avoid error ORA-12838
      
      -- Insert repeat, using profile to get the observation
      -- Fields ENSEMBLE and DATA_ID are not present in FIELDS_LOOKUP
      insert into adcp_repeat 
      (
         meds_job_number
      ,  meds_observation_number
      ,  bin
      ,  speed
      ,  direction
      ,  u_east_west
      ,  v_north_south
      ,  w_vertical
      ,  error
      ,  percentage_error
      ,  echo_int_average
      ,  depth_bsl
      ,  quality
      ,  profile
      ) 
      select 
         a.job_number
      ,  c.meds_observation_number
      ,  b.col002
      ,  b.col004
      ,  b.col005
      ,  b.col006
      ,  b.col007
      ,  b.col008
      ,  b.col009
      ,  b.col010
      ,  b.col011
      ,  b.col003
      ,  b.col012
      ,  b.col001
      from       stg_file            a
      inner join stg_file_csv_row    b 
         on b.stg_file          = a.stg_file
      inner join adcp_observation    c 
         on  c.meds_job_number  = a.job_number 
         and to_char(c.profile) = b.col001
      where a.job_number        = p_job_number
      and   lower(a.filename) like '%.dat'
      order by 
         c.meds_observation_number
      ,  c.profile;
      
   exception
      when others then
         delete from adcp_observation where meds_job_number = p_job_number;
         delete from adcp_data        where meds_job_number = p_job_number;
         delete from adcp_repeat      where meds_job_number = p_job_number;
         --TODO  log here
         commit;
      
   end parse_datatype_adcp;

   procedure parse_datatype_omni_ambient
   (
      p_job_number   in number
   )   
   is
   begin
      -- Insert the observations first, an observation per csv row
      insert into omni_ambient_observation 
      (
          latitude
      ,   longitude
      ,   location
      ,   date_recorded
      ,   meds_observation_number
      ,   meds_job_number
      ) 
      select 
         b.col006
      ,  b.col005
      ,  SDO_GEOMETRY(2001, 4326, SDO_POINT_TYPE(b.col005, b.col006, NULL), NULL, NULL) -- Longitude, latitude
      ,  to_date(b.col001 || ' ' || b.col002, 'dd/mm/yyyy hh24:mi:ss') 
      ,  row_sequence
      ,  p_job_number
      from       stg_file         a
      inner join stg_file_csv_row b
         on b.stg_file   = a.stg_file
      where a.job_number = p_job_number
      order by row_sequence;

      insert into omni_ambient_data 
      (	
         meds_job_number
      ,	meds_observation_number
      ,	time
      ,	month
      ,	hz_3_15
      ,	hz_4
      ,	hz_5
      ,	hz_6_3
      ,	hz_8
      ,	hz_10
      ,	hz_12_5
      ,	hz_16
      ,	hz_20
      ,	hz_25
      ,	hz_31_5
      ,	hz_40
      ,	hz_50
      ,	hz_55
      ,	hz_60
      ,	hz_63
      ,	hz_75
      ,	hz_80
      ,	hz_100
      ,	hz_115
      ,	hz_120
      ,	hz_125
      ,	hz_135
      ,	hz_150
      ,	hz_155
      ,	hz_160
      ,	hz_200
      ,	hz_240
      ,	hz_248
      ,	hz_250
      ,	hz_300
      ,	hz_305
      ,	hz_315
      ,	hz_400
      ,	hz_440
      ,	hz_450
      ,	hz_500
      ,	hz_600
      ,	hz_605
      ,	hz_630
      ,	hz_660
      ,	hz_800
      ,	hz_850
      ,	hz_950
      ,	hz_1000
      ,	hz_1150
      ,	hz_1205
      ,	hz_1250
      ,	hz_1500
      ,	hz_1600
      ,	hz_1700
      ,	hz_2000
      ,	hz_2400
      ,	hz_2500
      ,	hz_3150
      ,	hz_4000
      ,	hz_5000
      ,	hz_6300
      ,	hz_8000
      ,	hz_174
      ,	hz_720
      ,	hz_900
      ,	hz_333
      ,	hz_650
      ,	hz_1800
      ,	hz_30
      ,	hz_750
      ,	hz_170
      ,	hz_172
      ,	hz_298
      ,	hz_360
      ,	hz_480
      ,	hz_540
      ,	hz_49
      ,	hz_131
      ,	hz_295
      ,	hz_460
      ,	hz_640
      ,	hz_645
      ,	hz_330
      ,	hz_90
      ,	hz_110
      ,	hz_140
      ,	hz_310
      ,	hz_1050
      ,	hz_29
      ,	hz_180
      ,	hz_105
      ,	hz_290
      ,	hz_420
      ,	hz_71
      ,	hz_368
      ,	hz_77
      ,	hz_145
      ,	hz_286
      ,	hz_173
      ,	hz_246
      ,	hz_585
      ,	hz_793
      ,	hz_340
      ,	hz_446
      ,	hz_808
      ,	depth
      ,	wave_height
      ,	wave_direction
      ,	sea_state
      ,	wind_direction
      ,	wind_speed
      ,	precipitation
      ,	contact_density
      ,	s00_05
      ,	s05_10
      ,	s10_20
      ,	s20_50
      ,	contact_details
      ,	platform_type
      ,	ofp_number
      ,	country
      ,	ship
      ,	channel
      ,	record_number
      ,	qc
      ,	buoy_type
      ,	comments
      ) 
      select
         p_job_number
      ,	b.row_sequence
      ,	b.col003
      ,	b.col004
      ,	b.col007
      ,	b.col008
      ,	b.col009
      ,	b.col010
      ,	b.col011
      ,	b.col012
      ,	b.col013
      ,	b.col014
      ,	b.col015
      ,	b.col016
      ,	b.col017
      ,	b.col018
      ,	b.col019
      ,	b.col020
      ,	b.col021
      ,	b.col022
      ,	b.col023
      ,	b.col024
      ,	b.col025
      ,	b.col026
      ,	b.col027
      ,	b.col028
      ,	b.col029
      ,	b.col030
      ,	b.col031
      ,	b.col032
      ,	b.col033
      ,	b.col034
      ,	b.col035
      ,	b.col036
      ,	b.col037
      ,	b.col038
      ,	b.col039
      ,	b.col040
      ,	b.col041
      ,	b.col042
      ,	b.col043
      ,	b.col044
      ,	b.col045
      ,	b.col046
      ,	b.col047
      ,	b.col048
      ,	b.col049
      ,	b.col050
      ,	b.col051
      ,	b.col052
      ,	b.col053
      ,	b.col054
      ,	b.col055
      ,	b.col056
      ,	b.col057
      ,	b.col058
      ,	b.col059
      ,	b.col060
      ,	b.col061
      ,	b.col062
      ,	b.col063
      ,	b.col064
      ,	b.col065
      ,	b.col066
      ,	b.col067
      ,	b.col068
      ,	b.col069
      ,	b.col070
      ,	b.col071
      ,	b.col072
      ,	b.col073
      ,	b.col074
      ,	b.col075
      ,	b.col076
      ,	b.col077
      ,	b.col078
      ,	b.col079
      ,	b.col080
      ,	b.col081
      ,	b.col082
      ,	b.col083
      ,	b.col084
      ,	b.col085
      ,	b.col086
      ,	b.col087
      ,	b.col088
      ,	b.col089
      ,	b.col090
      ,	b.col091
      ,	b.col092
      ,	b.col093
      ,	b.col094
      ,	b.col095
      ,	b.col096
      ,	b.col097
      ,	b.col098
      ,	b.col099
      ,	b.col100
      ,	b.col101
      ,	b.col102
      ,	b.col103
      ,	b.col104
      ,	b.col105
      ,	b.col106
      ,	b.col107
      ,	b.col108
      ,	b.col109
      ,	b.col110
      ,	b.col111
      ,	b.col112
      ,	b.col113
      ,	b.col114
      ,	b.col115
      ,	b.col116
      ,	b.col117
      ,	b.col118
      ,	b.col119
      ,	b.col120
      ,	b.col121
      ,	b.col122
      ,	b.col123
      ,	b.col124
      ,	b.col125
      ,	b.col126
      ,	b.col128
      ,	b.col129
      ,	b.col130
      ,	b.col131
      from       stg_file         a
      inner join stg_file_csv_row b
         on b.stg_file   = a.stg_file
      where a.job_number = p_job_number
      order by row_sequence;

   end parse_datatype_omni_ambient;

   procedure parse_datatype_glider
   (
      p_job_number   in number
   )
   is
      v_stm          varchar2(4000);
      v_ins1         varchar2(1000) default 'insert into glider_threaded_observation (location, meds_job_number, meds_observation_number, mid_latitude, mid_longitude, profile_id, profile_dir, distance_traveled, mid_time) values (sdo_geometry(2002, 4326, null, sdo_elem_info_array(1,2,1), sdo_ordinate_array(';
      v_ins2         varchar2(1000) default 'insert into glider_threaded_data (meds_job_number, meds_observation_number, depth, temperature, temp_flag, salinity, sal_flag, sound_speed, density, chlorophyll, hydrocarbons, gelbstoffe, bioluminescence, longitude, latitude, date_recorded, point_order, bbp700) values (';
      v_point_order  number default 0;
   begin

      for f_row in 
      (
         select 
            b.col012 as profile_dir
         ,  b.col013 as profile_id
         ,  b.col015 as distance_traveled
         ,  b.col016 as mid_latitude
         ,  b.col017 as mid_longitude
         ,  b.col018 as mid_time
         ,  listagg(b.col002 || ', ' || b.col001, ',') within group(order by rownum) as poligon
         ,  a.stg_file 
         from       stg_file         a
         inner join stg_file_csv_row b 
            on b.stg_file   = a.stg_file
         where a.job_number = p_job_number
         group by 
            a.stg_file
         ,  b.col012
         ,  b.col013
         ,  b.col015
         ,  b.col016
         ,  b.col017
         ,  b.col018
         order by 2
      ) loop
         --dbms_output.put_line(f_row.profile_dir || f_row.profile_id || f_row.mid_latitude || f_row.mid_time);
         v_stm := v_ins1 
         || f_row.poligon
         || ')),'
         || p_job_number            || ','
         || f_row.profile_id        || ',' -- profile_id is unique, serving as observation
         || f_row.mid_latitude      || ','
         || f_row.mid_longitude     || ','
         || f_row.profile_id        || ','
         || f_row.profile_dir       || ','
         || f_row.distance_traveled || ','
         || f_row.mid_time 
         || ')';
         
         --dbms_output.put_line(v_stm);
         execute immediate v_stm;
        
         for f_dat in 
         (       
            select 
               nvl(a.col005, 'null') as depth
            ,  nvl(a.col006, 'null') as temperature      
            ,  nvl(a.col007, 'null') as temp_flag
            ,  nvl(a.col008, 'null') as salinity    
            ,  nvl(a.col009, 'null') as sal_flag    
            ,  nvl(a.col010, 'null') as sound_speed    
            ,  nvl(a.col011, 'null') as density    
            ,  nvl(a.col022, 'null') as chlorophyll   
            ,  nvl(a.col019, 'null') as hydrocarbons    
            ,  nvl(a.col020, 'null') as gelbstoffe    
            ,  nvl(a.col021, 'null') as bioluminescence    
            ,  nvl(a.col001, 'null') as latitude 
            ,  nvl(a.col002, 'null') as longitude    
            ,  nvl(a.col023, 'null') as bbp700  
            ,  'to_date(' || chr(39) || a.col003 || chr(39) || ',' || chr(39) || 'DDMMYYYY' || chr(39) || ')' as date_recorded 
            from stg_file_csv_row  a
            where a.stg_file = f_row.stg_file 
            and   a.col012   = f_row.profile_dir 
            and   a.col013   = f_row.profile_id
            order by a.col005
         ) loop
               v_point_order := v_point_order + 1;
               
               v_stm := v_ins2 
               || p_job_number          || ','
               || f_row.profile_id      || ',' -- unique, server as observation
               || f_dat.depth           || ','
               || f_dat.temperature     || ','
               || f_dat.temp_flag       || ','
               || f_dat.salinity        || ','
               || f_dat.sal_flag        || ','
               || f_dat.sound_speed     || ','
               || f_dat.density         || ','
               || f_dat.chlorophyll     || ','
               || f_dat.hydrocarbons    || ','
               || f_dat.gelbstoffe      || ','
               || f_dat.bioluminescence || ','
               || f_dat.longitude       || ','
               || f_dat.latitude        || ','
               || f_dat.date_recorded   || ','
               || v_point_order         || ',' 
               || f_dat.bbp700            
               || ')';
   
               execute immediate v_stm;   
               --dbms_output.put_line(v_stm);           
         end loop;
      end loop; 
      
   end parse_datatype_glider;

   procedure parse_datatype_aquapack
   (
      p_job_number   in number
   )   
   is
   begin
      -- Insert the observations first, grouped by profile_id (date, latitude and longitude added for safety)
      insert into aquapack_profile_observation 
      (
         location
      ,  meds_job_number
      ,  meds_observation_number
      ,  longitude
      ,  latitude
      ,  date_recorded
      ,  seabed_depth      
      ) 
      select 
         SDO_GEOMETRY(2001, 4326, SDO_POINT_TYPE(b.col004, b.col003, NULL), NULL, NULL) -- Longitude, latitude
      ,  p_job_number
      ,  b.col017 -- profile_id and observation number
      ,  b.col004
      ,  b.col003
      ,  to_date(b.col001 || ' ' || b.col002, 'dd/mm/yyyy hh24:mi:ss') 
      ,  b.col005
      from       stg_file         a
      inner join stg_file_csv_row b    
         on b.stg_file   = a.stg_file
      where a.job_number = p_job_number
      group by 
         b.col017
      ,  b.col001
      ,  b.col002
      ,  b.col003
      ,  b.col004
      ,  b.col005
      order by 6 ,4, 5;

      -- Insert all data, using profile_id as the observation
      insert into aquapack_profile_data (
         meds_job_number
      ,  meds_observation_number
      ,  pressure
      ,  depth
      ,  temperature
      ,  conductivity
      ,  salinity
      ,  sound_speed
      ,  hydrocarbons
      ,  gelbstoffe
      ,  chlorophyll
      ,  bioluminescence
      ,  turbidity
      ,  profile_id
      )
      select 
         a.job_number
      ,  b.col017 -- two uses: profile_id is always med_observation_number (TODO Confirm the assumption)
      ,  b.col006
      ,  b.col007
      ,  b.col008
      ,  b.col009
      ,  b.col010
      ,  b.col011
      ,  b.col012
      ,  b.col013
      ,  b.col014
      ,  b.col015
      ,  b.col016
      ,  b.col017
      from       stg_file           a      
      inner join stg_file_csv_row   b 
         on b.stg_file   = a.stg_file
      where a.job_number = p_job_number
      order by 2, 4;

   end parse_datatype_aquapack;

   procedure parse_datatype_biomass
   (
      p_job_number   in number
   )   
   is
   begin
      -- Insert the observations first, one observation per CSV file row
      insert into biomass_observation 
      (
         meds_observation_number
      ,  meds_job_number
      ,  location
      ,  date_recorded
      ,  latitude
      ,  longitude
      ) 
      select 
         b.row_sequence
      ,  p_job_number
      ,  SDO_GEOMETRY(2001, 4326, SDO_POINT_TYPE(b.col004, b.col003, NULL), NULL, NULL) -- Longitude, latitude
      ,  to_date(b.col001 || ' ' || b.col002, 'dd/mm/yyyy hh24:mi:ss') 
      ,  b.col003
      ,  b.col004
      from       stg_file         a
      inner join stg_file_csv_row b 
         on b.stg_file   = a.stg_file
      where a.job_number = p_job_number
      order by b.row_sequence;

      -- Insert the data    
      insert into biomass_data 
      (
         upper_depth
      ,  lower_depth
      ,  total_displacement_vol
      ,  total_settled_volume
      ,  total_wet_mass
      ,  total_dry_mass
      ,  meds_job_number
      ,  meds_observation_number
      ) 
      select 
         b.col005
      ,  b.col006
      ,  b.col007
      ,  b.col008
      ,  b.col009
      ,  b.col010
      ,  p_job_number
      ,  b.row_sequence
      from       stg_file         a
      inner join stg_file_csv_row b 
         on b.stg_file   = a.stg_file
      where a.job_number = p_job_number
      order by b.row_sequence;
    
   end parse_datatype_biomass;

   procedure parse_csv_data
   (
      p_job_number      in number
   )
   is
      v_data_type       varchar2(50);
      v_tbl             varchar2(100);
      v_stg_file        number;
      v_index_field     number;
      v_cnt             number default 0;
   begin
      dbms_output. enable (buffer_size => null); 
      
      select data_type
      into v_data_type
      from meds_processing_job
      where job_number = p_job_number;
      dbms_output.put_line('v_data_type: ' || v_data_type);
      
      select index_field
      into v_index_field
      from job_lookups 
      where type = 'Data Type' 
      and usage  = v_data_type;           
      dbms_output.put_line('v_index_field: ' || v_index_field);
      
      select table_name
      into  v_tbl
      from field_lookup
      where data_type_index = v_index_field
      and include_in_input = 1
      fetch first row only;
      dbms_output.put_line('v_tbl: ' || v_tbl);
      
      --Verify if the job has been already loaded in the destination tables. 
      --TODO This will be better if we save in OBSERVATION
      execute immediate 'select count(1) from ' || v_tbl || ' where meds_job_number = ' || p_job_number into v_cnt;
      
      if v_cnt > 0 then
         dbms_output.put_line('Job already submitted');
         return;
      end if;
      
      if    v_index_field  = 89 then
         parse_datatype_biomass        (p_job_number => p_job_number);
      elsif v_index_field  = 94 then
         parse_datatype_aquapack       (p_job_number => p_job_number);
      elsif v_index_field  = 92 then
         parse_datatype_glider         (p_job_number => p_job_number);
      elsif v_index_field  = 16 then
         parse_datatype_omni_ambient   (p_job_number => p_job_number);
      elsif v_index_field  = 88 then
         parse_datatype_adcp           (p_job_number => p_job_number);
      elsif v_index_field  = 82 then
         parse_datatype_front_satellite(p_job_number => p_job_number);
      end if;
      
      exception
         when others then
            rollback;
   end parse_csv_data;
      
   procedure parse_csv_file
   (
      p_job_number   in number
   )
   is
      v_stg_file     number;
   begin
      
      -- Delete any data already loaded for the same jobare already data for the key, and delete it
      delete from stg_file_csv_row 
      where stg_file in 
      (
         select stg_file
         from stg_file
         where job_number = p_job_number
      );
            
      insert into stg_file_csv_row
      (
         stg_file
      ,  row_sequence
      ,	col001,col002,col003,col004,col005,col006,col007,col008,col009,col010,col011,col012,col013,col014,col015,col016,col017,col018,col019,col020
      ,  col021,col022,col023,col024,col025,col026,col027,col028,col029,col030,col031,col032,col033,col034,col035,col036,col037,col038,col039,col040
      ,  col041,col042,col043,col044,col045,col046,col047,col048,col049,col050,col051,col052,col053,col054,col055,col056,col057,col058,col059,col060
      ,  col061,col062,col063,col064,col065,col066,col067,col068,col069,col070,col071,col072,col073,col074,col075,col076,col077,col078,col079,col080
      ,	col081,col082,col083,col084,col085,col086,col087,col088,col089,col090,col091,col092,col093,col094,col095,col096,col097,col098,col099,col100
      ,	col101,col102,col103,col104,col105,col106,col107,col108,col109,col110,col111,col112,col113,col114,col115,col116,col117,col118,col119,col120
      ,	col121,col122,col123,col124,col125,col126,col127,col128,col129,col130,col131,col132,col133,col134,col135,col136,col137,col138,col139,col140
      ,	col141,col142,col143,col144,col145,col146,col147,col148,col149,col150,col151,col152,col153,col154,col155,col156,col157,col158,col159,col160
      ,	col161,col162,col163,col164,col165,col166,col167,col168,col169,col170,col171,col172,col173,col174,col175,col176,col177,col178,col179,col180
      ,	col181,col182,col183,col184,col185,col186,col187,col188,col189,col190,col191,col192,col193,col194,col195,col196,col197,col198,col199,col200
      )   
      select
         a.stg_file
      ,  rownum
      ,	b.col001,b.col002,b.col003,b.col004,b.col005,b.col006,b.col007,b.col008,b.col009,b.col010,b.col011,b.col012,b.col013,b.col014,b.col015,b.col016,b.col017,b.col018,b.col019,b.col020
      ,	b.col021,b.col022,b.col023,b.col024,b.col025,b.col026,b.col027,b.col028,b.col029,b.col030,b.col031,b.col032,b.col033,b.col034,b.col035,b.col036,b.col037,b.col038,b.col039,b.col040
      ,	b.col041,b.col042,b.col043,b.col044,b.col045,b.col046,b.col047,b.col048,b.col049,b.col050,b.col051,b.col052,b.col053,b.col054,b.col055,b.col056,b.col057,b.col058,b.col059,b.col060
      ,	b.col061,b.col062,b.col063,b.col064,b.col065,b.col066,b.col067,b.col068,b.col069,b.col070,b.col071,b.col072,b.col073,b.col074,b.col075,b.col076,b.col077,b.col078,b.col079,b.col080
      ,	b.col081,b.col082,b.col083,b.col084,b.col085,b.col086,b.col087,b.col088,b.col089,b.col090,b.col091,b.col092,b.col093,b.col094,b.col095,b.col096,b.col097,b.col098,b.col099,b.col100
      ,	b.col101,b.col102,b.col103,b.col104,b.col105,b.col106,b.col107,b.col108,b.col109,b.col110,b.col111,b.col112,b.col113,b.col114,b.col115,b.col116,b.col117,b.col118,b.col119,b.col120
      ,	b.col121,b.col122,b.col123,b.col124,b.col125,b.col126,b.col127,b.col128,b.col129,b.col130,b.col131,b.col132,b.col133,b.col134,b.col135,b.col136,b.col137,b.col138,b.col139,b.col140
      ,	b.col141,b.col142,b.col143,b.col144,b.col145,b.col146,b.col147,b.col148,b.col149,b.col150,b.col151,b.col152,b.col153,b.col154,b.col155,b.col156,b.col157,b.col158,b.col159,b.col160
      ,	b.col161,b.col162,b.col163,b.col164,b.col165,b.col166,b.col167,b.col168,b.col169,b.col170,b.col171,b.col172,b.col173,b.col174,b.col175,b.col176,b.col177,b.col178,b.col179,b.col180
      ,	b.col181,b.col182,b.col183,b.col184,b.col185,b.col186,b.col187,b.col188,b.col189,b.col190,b.col191,b.col192,b.col193,b.col194,b.col195,b.col196,b.col197,b.col198,b.col199,b.col200
      from stg_file a
      cross apply table
      (
         apex_data_parser.parse
         (
              p_content   => a.content,
              p_skip_rows => 0,
              p_file_name => replace(replace(a.filename,'.dat','.csv'),'hdr','csv')      
         ) 
      ) b
      where a.job_number = p_job_number;
      
   end parse_csv_file;

   procedure delete_stg_file_from_job
   (
      p_job_number     in number
   )
   is
   begin
      for f_stg_file in 
      (
         select stg_file 
         from stg_file 
         where job_number = p_job_number
      )
      loop
         delete from stg_file_serd_row where stg_file = f_stg_file.stg_file;
         delete from stg_file_csv_row  where stg_file = f_stg_file.stg_file;
      end loop;
      
      delete from stg_file where job_number = p_job_number;
   end delete_stg_file_from_job;

   procedure delete_stg_file
   (
      p_stg_file     in number
   )
   is
   begin
      delete from stg_file_serd_row where stg_file = p_stg_file;
      delete from stg_file_csv_row  where stg_file = p_stg_file;
      delete from stg_file          where stg_file = p_stg_file;
   end delete_stg_file;

end upload_csv_util;
/
