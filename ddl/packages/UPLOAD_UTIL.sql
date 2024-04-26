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
      p_job_number   number,
      p_stg_file     number
   ); 
   
   procedure parse_datatype_aquapack
   (
      p_job_number   number,
      p_stg_file     number
   ); 

   procedure parse_datatype_glider
   (
      p_job_number   number,
      p_stg_file     number
   );    
   
end upload_util;
/
-- -----------------------------------------------------------------------------------------------------------------
CREATE OR REPLACE package body upload_util
as

  procedure parse_datatype_glider
   (
      p_job_number   number,
      p_stg_file     number
   )   
   is
   begin
      -- Insert the observations first, grouped by profile_dir, profile_id, distance_traveled, mid_latitude, mid_longitude, mid_time
      insert into glider_threaded_observation 
      (
         location
      ,  meds_job_number
      ,  meds_observation_number
      ,  profile_dir
      ,  profile_id
      ,  distance_traveled
      ,  mid_latitude
      ,  mid_longitude
      ,  mid_time
      ) 
      select 
         null
      ,  p_job_number  
      ,  col013 -- profile_id is taken as observation
      ,  col012
      ,  col013
      ,  col015
      ,  col016
      ,  col017
      ,  col018
      from  stg_file_csv_row
      where stg_file = p_stg_file
      group by 
         col012
      ,  col013
      ,  col015
      ,  col016
      ,  col017
      ,  col018
      order by 3;
            
      -- Insert all data, referencing the observation
      insert into glider_threaded_data (
         meds_job_number
      ,  meds_observation_number
      ,  depth
      ,  pressure
      ,  temperature
      ,  temp_flag
      ,  salinity
      ,  sal_flag
      ,  sound_speed
      ,  density
      ,  chlorophyll
      ,  hydrocarbons
      ,  gelbstoffe
      ,  bioluminescence
      ,  longitude
      ,  latitude
      ,  date_recorded
      ,  point_order
      ,  bbp700
      ) 
      select 
         p_job_number
      ,  b.meds_observation_number
      ,  a.col005
      ,  null  -- pressure is not in fields_lookup
      ,  a.col006      
      ,  a.col007
      ,  a.col008      
      ,  a.col009      
      ,  a.col010      
      ,  a.col011      
      ,  a.col022      
      ,  a.col019      
      ,  a.col020      
      ,  a.col021      
      ,  a.col001      
      ,  a.col002      
      ,  to_date(to_char(col003),'DDMMYYYY')    
      ,  a.col013      
      ,  a.col023      
      from       stg_file_csv_row            a
      inner join glider_threaded_observation b 
         on  b.meds_job_number   = p_job_number 
         and b.profile_dir       = a.col012
         and b.profile_id        = a.col013
         and b.distance_traveled = a.col015
         and b.mid_latitude      = a.col016
         and b.mid_longitude     = a.col017
         and b.mid_time          = a.col018
      where a.stg_file=p_stg_file
      order by b.meds_observation_number
      , a.col005;
      
   end parse_datatype_glider;

   procedure parse_datatype_aquapack
   (
      p_job_number   number,
      p_stg_file     number
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
         null
      ,  p_job_number
      ,  col017 -- profile_id
      ,  col004
      ,  col003
      ,  to_date(col001 || ' ' || col002, 'dd/mm/yyyy hh24:mi:ss') 
      ,  col005
      from  stg_file_csv_row
      where stg_file = p_stg_file
      group by col017
      ,  col001
      ,  col002
      ,  col003
      ,  col004
      ,  col005
      order by 1, 6,4, 5;

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
         p_job_number
      ,  a.col017 -- two uses: profile_id is always med_observation_number (TODO Confirm the assumption)
      ,  a.col006
      ,  a.col007
      ,  a.col008
      ,  a.col009
      ,  a.col010
      ,  a.col011
      ,  a.col012
      ,  a.col013
      ,  a.col014
      ,  a.col015
      ,  a.col016
      ,  a.col017
      from       stg_file_csv_row    a
      where a.stg_file=p_stg_file
      order by 2, 4;
      
   end parse_datatype_aquapack;

   procedure parse_datatype_biomass
   (
      p_job_number   number,
      p_stg_file     number
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
         row_number() over(order by col001,col002,col003,col004)
      ,  p_job_number
      ,  null
      ,  to_date(col001 || ' ' || col002, 'dd/mm/yyyy hh24:mi:ss') 
      ,  col003
      ,  col004
      from  stg_file_csv_row
      where stg_file = p_stg_file
      group by col001
      ,  col002
      ,  col003
      ,  col004;
      
      -- Insert all data, referencing the observation
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
      where a.stg_file=p_stg_file
      order by b.meds_observation_number;
      
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

      select data_type
      into v_data_type
      from meds_processing_job
      where job_number = p_job_number;
      
      select index_field
      into v_index_field
      from job_lookups 
      where type = 'Data Type' 
      and usage  = v_data_type;           
      
      select table_name
      into  v_tbl
      from field_lookup
      where data_type_index = v_index_field
      and include_in_input = 1
      fetch first row only;
      
      --Verify if the job has been already loaded in the destination tables. 
      -- TODO This will be better if we save in OBSERVATION
      execute immediate 'select count(1) from ' || v_tbl || ' where meds_job_number = ' || p_job_number into v_cnt;
      
      if v_cnt > 0 then
         return;
      end if;
      
      select stg_file
      into   v_stg_file
      from   stg_file
      where  job_number = p_job_number;

      if    v_index_field  = 89 then
         upload_util.parse_datatype_biomass  (p_job_number => p_job_number, p_stg_file => v_stg_file);
      elsif v_index_field  = 94 then
         upload_util.parse_datatype_aquapack (p_job_number => p_job_number, p_stg_file => v_stg_file);
      elsif v_index_field  = 92 then
         upload_util.parse_datatype_glider   (p_job_number => p_job_number, p_stg_file => v_stg_file);
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
      
      -- Verify if there are already data for the key, and delete it
      select stg_file
      into v_stg_file
      from stg_file
      where job_number = p_job_number;
      
      delete from stg_file_csv_row where stg_file = v_stg_file;
      
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
              p_file_name => a.filename      
         ) 
      ) b
      where a.stg_file = v_stg_file;
      
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
