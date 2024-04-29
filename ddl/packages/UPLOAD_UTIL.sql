CREATE OR REPLACE package upload_util
as
   
   procedure delete_stg_file_from_job
   (
      p_job_number   number
   );
   
   procedure parse_csv_file
   (
      p_job_number   number
   );

   procedure parse_serd_file
   (
      p_job_number   number
   );
   
   procedure parse_csv_data
   (
      p_job_number   number
   );   
   
   procedure parse_datatype_biomass
   (
      p_job_number   number
   ); 
   
   procedure parse_datatype_aquapack
   (
      p_job_number   number
   ); 

   procedure parse_datatype_glider
   (
      p_job_number   number
   );    

   procedure parse_datatype_omni_ambient
   (
      p_job_number   number
   );     

   procedure parse_datatype_adcp
   (
      p_job_number   number
   );   
   
   procedure parse_datatype_front_satellite
   (
      p_job_number   number
   );  

end upload_util;
/
-- -----------------------------------------------------------------------------------------------------------------
CREATE OR REPLACE package body upload_util
as

   procedure parse_datatype_front_satellite
   (
      p_job_number   number
   )
   is
      v_stm          varchar2(4000);
      v_ins1         varchar2(1000) default 'insert into front_satellite_observation (location, meds_job_number, meds_observation_number, observered_date) values (sdo_geometry(2002, null, null, sdo_elem_info_array(1, 2, 1), sdo_ordinate_array(';
      v_ins2         varchar2(1000) default 'insert into front_image_data (meds_observation_number, meds_job_number, frontal_depth, frontal_name, frontal_type, frontal_confidence, frontal_line_id, boundary_type) values(';
      v_point_order  number default 0;
   begin
   
     for f_obs in 
      (
         select 
            row_number() over(order by to_number(b.col006), to_number(b.col001))                 as observation
         ,  listagg(b.col010 || ', ' || b.col009, ', ') within group(order by to_number(b.col008)) as poligon      -- longitude, latitude
         ,  b.col006   as observered_date
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
      
         v_stm := v_ins1 
               || f_obs.poligon
               || ')), '
               || p_job_number            || ', '
               || f_obs.observation       || ', ' 
               || 'to_date('     
               || chr(39) 
               || f_obs.observered_date
               || chr(39) 
               || ','
               || chr(39)
               || 'DDMMYYYY' 
               || CHR(39) || '))';
         
         --dbms_output.put_line(v_stm);
         execute immediate v_stm;
      
    /*
         
       select 
         row_number() over(order by to_number(b.col006), to_number(b.col001))
      ,  p_job_number
      ,  null                 as point_type
      ,  null                 as frontal_gradient
      ,  b.col005             as frontal_depth   
      ,  b.col002             as frontal_name
      ,  b.col003             as frontal_type
      ,  null                 as frontal_confidence
      ,  to_number(b.col001)  as frontal_line_id
      ,  b.col004             as boundary_type
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
         b.col009 as latitude
      ,  b.col010 as longitude
      ,  b.col012 as confidence
      ,  b.col011 as strengh
      ,  p_job_number
      ,  c.meds_observation_number
      ,  rownum
      ,  b.col008 as vertexid
      from       stg_file           a
      inner join stg_file_csv_row   b 
         on  b.stg_file   = a.stg_file
      inner join front_image_data   c
         on  c.frontal_line_id   = b.col001
         and c.frontal_name      = b.col002
         and c.frontal_type      = b.col003
         and c.boundary_type     = b.col004
         and c.frontal_depth     = b.col005
         and observered_date     = to_date(to_char(b.col006),'DDMMYYYY')  
      where a.job_number = p_job_number
      order by 
         to_number(b.col006)
      ,  to_number(b.col001)
      ,  to_number(b.col008);
      */
      end loop;
      
   end parse_datatype_front_satellite;

   procedure parse_datatype_adcp
   (
      p_job_number   number
   )
   is
      v_obs number default 0;
   begin
   
      -- Insert the observations and data, from the '.hdr' file loaded
      -- Fields ENABLE, COG, PITCH, ROLL, COMPASS are not listed in FIELD_LOOKUP, so not included in the insert statements
       for f_csv_row in 
      (
         select 
            SDO_GEOMETRY(2001, null, SDO_POINT_TYPE(b.col006, b.col005, NULL), NULL, NULL) as location -- Longitude, latitude
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
      
      commit;
      
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
      
   end parse_datatype_adcp;

   procedure parse_datatype_omni_ambient
   (
      p_job_number   number
   )   
   is
   begin
      -- Insert the observations first, grouped by date, latitude and longitude
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
      ,  SDO_GEOMETRY(2001, null, SDO_POINT_TYPE(b.col005, b.col006, NULL), NULL, NULL) -- Longitude, latitude
      ,  to_date(b.col001 || ' ' || b.col002, 'dd/mm/yyyy hh24:mi:ss') 
      ,  row_number() over(order by b.col001, b.col002, b.col005, b.col006)
      ,  p_job_number
      from       stg_file         a
      inner join stg_file_csv_row b
         on b.stg_file   = a.stg_file
      where a.job_number = p_job_number
      group by 
         b.col001
      ,  b.col002
      ,  b.col005
      ,  b.col006;

      -- Insert all data, referencing the observation
      for f_stg_file in (select stg_file from stg_file where job_number = p_job_number)
      loop
         insert into omni_ambient_data 
         (
            depth 
         ,	wave_height 
         ,	wind_speed 
         ,	ofp_number 
         ,	wind_direction 
         ,	wave_direction 
         ,	sea_state 
         ,	contact_density 
         ,	s05_10 
         ,	s20_50 
         ,	contact_details 
         ,	qc 
         ,	record_number 
         ,	comments 
         ,	meds_observation_number 
         ,	meds_job_number 
         ,	s00_05 
         ,	s10_20 
         ,	ship 
         ,	country 
         ,	platform_type 
         ,	month 
         ,	precipitation 
         ,	time 
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
         ,	hz_75 
         ,	buoy_type 
         ,	channel 
         ,	hz_950
         ) 
         select 
            a.col106
         ,	a.col107
         ,	a.col111
         ,	a.col120
         ,	a.col110
         ,	a.col108
         ,	a.col109
         ,	a.col113
         ,	a.col115
         ,	a.col117
         ,	a.col118
         ,	a.col126
         ,	a.col125
         ,	a.col128
         ,  b.meds_observation_number
         ,  p_job_number
         ,	a.col114
         ,	a.col116
         ,	a.col122
         ,	a.col121
         ,	a.col119
         ,	a.col004
         ,	a.col112
         ,	a.col003
         ,	a.col007
         ,	a.col008
         ,	a.col009
         ,	a.col010
         ,	a.col011
         ,	a.col012
         ,	a.col013
         ,	a.col014
         ,	a.col015
         ,	a.col016
         ,	a.col017
         ,	a.col018
         ,	a.col019
         ,	a.col020
         ,	a.col021
         ,	a.col022
         ,	a.col024
         ,	a.col025
         ,	a.col026
         ,	a.col027
         ,	a.col028
         ,	a.col029
         ,	a.col030
         ,	a.col031
         ,	a.col032
         ,	a.col033
         ,	a.col034
         ,	a.col035
         ,	a.col036
         ,	a.col037
         ,	a.col038
         ,	a.col039
         ,	a.col040
         ,	a.col041
         ,	a.col042
         ,	a.col043
         ,	a.col044
         ,	a.col045
         ,	a.col046
         ,	a.col047
         ,	a.col048
         ,	a.col049
         ,	a.col051
         ,	a.col052
         ,	a.col053
         ,	a.col054
         ,	a.col055
         ,	a.col056
         ,	a.col057
         ,	a.col058
         ,	a.col059
         ,	a.col060
         ,	a.col061
         ,	a.col062
         ,	a.col063
         ,	a.col064
         ,	a.col065
         ,	a.col023
         ,	a.col127
         ,	a.col123
         ,	a.col050
         from       stg_file_csv_row         a
         inner join omni_ambient_observation b 
            on  b.meds_job_number = p_job_number 
            and b.date_recorded   = to_date(a.col001 || ' ' || a.col002, 'dd/mm/yyyy hh24:mi:ss') 
            and b.longitude       = a.col005 
            and b.latitude        = a.col006
         where a.stg_file         = f_stg_file.stg_file
         order by b.meds_observation_number;
      end loop;

   end parse_datatype_omni_ambient;

   procedure parse_datatype_glider
   (
      p_job_number   number
   )
   is
      v_stm          varchar2(4000);
      v_ins1         varchar2(1000) default 'insert into glider_threaded_observation (location, meds_job_number, meds_observation_number, mid_latitude, mid_longitude, profile_id, profile_dir, distance_traveled, mid_time) values (sdo_geometry(2022, null, null, sdo_elem_info_array(1,2,1), sdo_ordinate_array(';
      v_ins2         varchar2(1000) default 'insert into glider_threaded_data (meds_job_number, meds_observation_number, depth, temperature, temp_flag, salinity, sal_flag, sound_speed, density, chlorophyll, hydrocarbons, gelbstoffe, bioluminescence, longitude, latitude, date_recorded, point_order, bbp700) values (';
      v_point_order  number default 0;
   begin

      for f_obs in 
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
         --dbms_output.put_line(f_obs.profile_dir || f_obs.profile_id || f_obs.mid_latitude || f_obs.mid_time);
         v_stm := v_ins1 
         || f_obs.poligon
         || ')),'
         || p_job_number            || ','
         || f_obs.profile_id        || ',' -- profile_id is unique, serving as observation
         || f_obs.mid_latitude      || ','
         || f_obs.mid_longitude     || ','
         || f_obs.profile_id        || ','
         || f_obs.profile_dir       || ','
         || f_obs.distance_traveled || ','
         || f_obs.mid_time 
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
            where a.stg_file = f_obs.stg_file 
            and   a.col012   = f_obs.profile_dir 
            and   a.col013   = f_obs.profile_id
            order by a.col005
         ) loop
               v_point_order := v_point_order + 1;
               
               v_stm := v_ins2 
               || p_job_number          || ','
               || f_obs.profile_id      || ',' -- unique, server as observation
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
      p_job_number   number
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
         SDO_GEOMETRY(2001, null, SDO_POINT_TYPE(b.col004, b.col003, NULL), NULL, NULL) -- Longitude, latitude
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
      p_job_number   number
   )   
   is
   begin
      -- Insert the observations first, grouped by date, latitude and longitude
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
         row_number() over(order by b.col001, b.col002, b.col003, b.col004)
      ,  p_job_number
      ,  SDO_GEOMETRY(2001, null, SDO_POINT_TYPE(b.col004, b.col003, NULL), NULL, NULL) -- Longitude, latitude
      ,  to_date(b.col001 || ' ' || b.col002, 'dd/mm/yyyy hh24:mi:ss') 
      ,  b.col003
      ,  b.col004
      from       stg_file         a
      inner join stg_file_csv_row b 
         on b.stg_file   = a.stg_file
      where a.job_number = p_job_number
      group by 
         b.col001
      ,  b.col002
      ,  b.col003
      ,  b.col004;

      -- Insert all data, referencing the observations      
      for f_stg_file in (select stg_file from stg_file where job_number = p_job_number)
      loop
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
            a.col005
         ,  a.col006
         ,  a.col007
         ,  a.col008
         ,  a.col009
         ,  a.col010
         ,  p_job_number
         ,  b.meds_observation_number
         from       stg_file_csv_row    a
         inner join biomass_observation b 
            on  b.meds_job_number = p_job_number 
            and b.date_recorded   = to_date(a.col001 || ' ' || a.col002, 'dd/mm/yyyy hh24:mi:ss') 
            and b.latitude        = a.col003 
            and b.longitude       = a.col004 
         where a.stg_file         = f_stg_file.stg_file
         order by b.meds_observation_number;
      end loop;
/*
      select 
         b.col005
      ,  b.col006
      ,  b.col007
      ,  b.col008
      ,  b.col009
      ,  b.col010
      ,  a.job_number
      ,  c.meds_observation_number
      from       stg_file            a
      inner join stg_file_csv_row    b 
         on b.stg_file         = a.stg_file
      inner join biomass_observation c 
         on  c.meds_job_number = a.job_number 
         and c.date_recorded   = to_date(b.col001 || ' ' || b.col002, 'dd/mm/yyyy hh24:mi:ss') 
         and c.latitude        = b.col003 
         and c.longitude       = b.col004 
      where a.job_number       = p_job_number
      order by c.meds_observation_number;
*/      
   end parse_datatype_biomass;

   procedure parse_csv_data
   (
      p_job_number    number
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
         return;
      end if;
      
      if    v_index_field  = 89 then
         upload_util.parse_datatype_biomass        (p_job_number => p_job_number);
      elsif v_index_field  = 94 then
         upload_util.parse_datatype_aquapack       (p_job_number => p_job_number);
      elsif v_index_field  = 92 then
         upload_util.parse_datatype_glider         (p_job_number => p_job_number);
      elsif v_index_field  = 16 then
         upload_util.parse_datatype_omni_ambient   (p_job_number => p_job_number);
      elsif v_index_field  = 88 then
         upload_util.parse_datatype_adcp           (p_job_number => p_job_number);
      elsif v_index_field  = 82 then
         upload_util.parse_datatype_front_satellite(p_job_number => p_job_number);
      end if;
      
      exception
         when others then
            rollback;
   end parse_csv_data;
      
   procedure parse_csv_file
   (
      p_job_number   number
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
   begin
      
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
   end parse_serd_file;   
   
   procedure delete_stg_file_from_job
   (
      p_job_number     number
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
end upload_util;
/
