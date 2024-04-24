CREATE OR REPLACE package upload_util
as
   type a_values  is varray(5) of varchar2(512);
   
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
   
   function get_csv_field_position
   (
      p_csv_record   in stg_file_csv_row%rowtype
    , p_field_pos    in number
    , p_field_type   in number
    , p_job_number   in number
    , p_obs_number   in number
   ) return  varchar2;
   
   function get_csv_field_type
   (
      p_csv_values      in a_values
   ,  p_field_type      in number
   ,  p_job_number      in number
   ,  p_obs_number      in number
   ) return  varchar2;

end upload_util;
/

CREATE OR REPLACE package body upload_util
as

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

   function get_csv_field_type
   (
      p_csv_values      in a_values
   ,  p_field_type      in number
   ,  p_job_number      in number
   ,  p_obs_number      in number
   ) return  varchar2
   as
      v_ret    varchar2(512);
   begin
     -- dbms_output.put_line('inside get_csv_field_type: ' || p_field_type);
      
      if p_field_type = 1 then      -- String Value, Floating Point Value, Integer Value
         v_ret := p_csv_values(1);
      elsif p_field_type = 2 then   -- Floating Point Value 
         v_ret := p_csv_values(1);      
      elsif p_field_type = 3 then   -- Integer Value
         v_ret := p_csv_values(1);
      elsif p_field_type = 5 then   -- Date and Time as consecutive fields
        v_ret := 'TO_DATE(''' || to_char(to_date(p_csv_values(1) || ' ' || p_csv_values(2), 'DD/MM/YYYY HH24:MI:SS'), 'YYYY-MM-DD HH24:MI:SS') || ''',''YYYY-MM-DD HH24:MI:SS'')';
      elsif p_field_type = 6  then 	-- Date/Time (single) Field
         v_ret := p_csv_values(1);
      elsif p_field_type = 7  then 	-- Floating Point Index Value for Repeat Fields
         v_ret := p_csv_values(1);
      elsif p_field_type = 8  then 	-- MEDS Job Number
         v_ret := p_job_number;
      elsif p_field_type = 9  then 	-- MEDS Observation Number
         v_ret := p_obs_number;
      elsif p_field_type = 11 then 	-- MD_SYS.SDO_GEOMETRY Field - Point
         v_ret := 'NULL';
      else
         v_ret := p_csv_values(1);
      end if;
/*      
      elsif p_field_type = 4  then  -- Latitude/Longitude Degrees and Minutes as consecutive fields
      elsif p_field_type = 5  then  -- Date and Time as consecutive fields
      elsif p_field_type = 10 then 	-- Incremental Integer Index for Repeat Fields
      elsif p_field_type = 12 then 	-- Latitude/Longitude as Floating Point Value
      elsif p_field_type = 13 then 	-- Repeat Line Index - String
      elsif p_field_type = 14 then 	-- Repeat Line Index - Floating Point
      elsif p_field_type = 15 then 	-- Repeat Line Index - Integer
      elsif p_field_type = 16 then 	-- MEDS Job/Observation Index Link - String
      elsif p_field_type = 17 then 	-- Data Use Code as String
      elsif p_field_type = 18 then 	-- Repeat field Value - String
      elsif p_field_type = 19 then 	-- Lat/Long as DD MM.MMH (D - Degrees,M-Minutes,H-Hemisphere)
      elsif p_field_type = 20 then 	-- MEDS Job/Observation Index Link - Float
      elsif p_field_type = 21 then 	-- MEDS Job/Observation Index Link - Integer
      elsif p_field_type = 22 then 	-- Date Only Field (no time)
      elsif p_field_type = 23 then 	-- MEDS Job Number Index Link - String
      elsif p_field_type = 24 then 	-- Repeat Line Index - Increments MEDS Job Number when it changes
      elsif p_field_type = 25 then 	-- Lat/Long Degrees and Minutes as Four Consecutive Fields
      elsif p_field_type = 26 then 	-- MEDS Job Change - only output data for diferent meds job no.
      elsif p_field_type = 29 then 	-- Lat/Long Degrees and Minutes Followed by hemishere field
      elsif p_field_type = 27 then 	-- MD_SYS.SDO_GEOMETRY Field - Line
      elsif p_field_type = 28 then 	-- MD_SYS.SDO_GEOMETRY Field - Polygon
      elsif p_field_type = 30 then 	-- Link to other table - Integer
      elsif p_field_type = 31 then 	-- Link to other table - String
      elsif p_field_type = 32 then 	-- Link to other table - Float
      elsif p_field_type = 33 then 	-- End of repeat - to check for end of repeat data - Add column to test in repeat value box
      elsif p_field_type = 34 then 	-- Point Order -  Ordering of Points for Polygons and Lines
      elsif p_field_type = 35 then 	-- MD_SYS.SDO_GEOMETRY Field - Points binned as lines
      
 */     
      return v_ret;
   end get_csv_field_type;

   function get_csv_field_position
   (
      p_csv_record   in stg_file_csv_row%rowtype
    , p_field_pos    in number
    , p_field_type   in number
    , p_job_number   in number
    , p_obs_number   in number
   ) return varchar2
   as
      v_val a_values := a_values();
   begin
      --dbms_output.put_line('inside get_csv_field_position: ' || p_field_pos);
      v_val.extend(5);
      if p_field_pos = 1 then
         v_val(1)  := nvl(p_csv_record.col001, 'null');
         v_val(2)  := nvl(p_csv_record.col002, 'null');
         v_val(3)  := nvl(p_csv_record.col003, 'null');
         v_val(4)  := nvl(p_csv_record.col004, 'null');
         v_val(5)  := nvl(p_csv_record.col005, 'null');
      elsif p_field_pos = 2 then
         v_val(1)  := nvl(p_csv_record.col002, 'null');
         v_val(2)  := nvl(p_csv_record.col003, 'null');
         v_val(3)  := nvl(p_csv_record.col004, 'null');
         v_val(4)  := nvl(p_csv_record.col005, 'null');
         v_val(5)  := nvl(p_csv_record.col006, 'null');
      elsif p_field_pos = 3 then
         v_val(1)  := nvl(p_csv_record.col003, 'null');
         v_val(2)  := nvl(p_csv_record.col004, 'null');
         v_val(3)  := nvl(p_csv_record.col005, 'null');
         v_val(4)  := nvl(p_csv_record.col006, 'null');
         v_val(5)  := nvl(p_csv_record.col007, 'null');
      elsif p_field_pos = 4 then
         v_val(1)  := nvl(p_csv_record.col004, 'null');
         v_val(2)  := nvl(p_csv_record.col005, 'null');
         v_val(3)  := nvl(p_csv_record.col006, 'null');
         v_val(4)  := nvl(p_csv_record.col007, 'null');
         v_val(5)  := nvl(p_csv_record.col008, 'null');
      elsif p_field_pos = 5 then
         v_val(1)  := nvl(p_csv_record.col005, 'null');
         v_val(2)  := nvl(p_csv_record.col006, 'null');
         v_val(3)  := nvl(p_csv_record.col007, 'null');
         v_val(4)  := nvl(p_csv_record.col008, 'null');
         v_val(5)  := nvl(p_csv_record.col009, 'null');
      elsif p_field_pos = 6 then
         v_val(1)  := nvl(p_csv_record.col006, 'null');
         v_val(2)  := nvl(p_csv_record.col007, 'null');
         v_val(3)  := nvl(p_csv_record.col008, 'null');
         v_val(4)  := nvl(p_csv_record.col009, 'null');
         v_val(5)  := nvl(p_csv_record.col010, 'null');
      elsif p_field_pos = 7 then
         v_val(1)  := nvl(p_csv_record.col007, 'null');
         v_val(2)  := nvl(p_csv_record.col008, 'null');
         v_val(3)  := nvl(p_csv_record.col009, 'null');
         v_val(4)  := nvl(p_csv_record.col010, 'null');
         v_val(5)  := nvl(p_csv_record.col011, 'null');
      elsif p_field_pos = 8 then
         v_val(1)  := nvl(p_csv_record.col008, 'null');
         v_val(2)  := nvl(p_csv_record.col009, 'null');
         v_val(3)  := nvl(p_csv_record.col010, 'null');
         v_val(4)  := nvl(p_csv_record.col011, 'null');
         v_val(5)  := nvl(p_csv_record.col012, 'null');
      elsif p_field_pos = 9 then
         v_val(1)  := nvl(p_csv_record.col009, 'null');
         v_val(2)  := nvl(p_csv_record.col010, 'null');
         v_val(3)  := nvl(p_csv_record.col011, 'null');
         v_val(4)  := nvl(p_csv_record.col012, 'null');
         v_val(5)  := nvl(p_csv_record.col013, 'null');
      elsif p_field_pos = 10 then
         v_val(1)  := nvl(p_csv_record.col010, 'null');
         v_val(2)  := nvl(p_csv_record.col011, 'null');
         v_val(3)  := nvl(p_csv_record.col012, 'null');
         v_val(4)  := nvl(p_csv_record.col013, 'null');
         v_val(5)  := nvl(p_csv_record.col014, 'null');
      elsif p_field_pos = 11 then
         v_val(1)  := nvl(p_csv_record.col011, 'null');
         v_val(2)  := nvl(p_csv_record.col012, 'null');
         v_val(3)  := nvl(p_csv_record.col013, 'null');
         v_val(4)  := nvl(p_csv_record.col014, 'null');
         v_val(5)  := nvl(p_csv_record.col015, 'null');
      elsif p_field_pos = 12 then
         v_val(1)  := nvl(p_csv_record.col012, 'null');
         v_val(2)  := nvl(p_csv_record.col013, 'null');
         v_val(3)  := nvl(p_csv_record.col014, 'null');
         v_val(4)  := nvl(p_csv_record.col015, 'null');
         v_val(5)  := nvl(p_csv_record.col016, 'null');
      elsif p_field_pos = 13 then
         v_val(1)  := nvl(p_csv_record.col013, 'null');
         v_val(2)  := nvl(p_csv_record.col014, 'null');
         v_val(3)  := nvl(p_csv_record.col015, 'null');
         v_val(4)  := nvl(p_csv_record.col016, 'null');
         v_val(5)  := nvl(p_csv_record.col017, 'null');
      elsif p_field_pos = 14 then
         v_val(1)  := nvl(p_csv_record.col014, 'null');
         v_val(2)  := nvl(p_csv_record.col015, 'null');
         v_val(3)  := nvl(p_csv_record.col016, 'null');
         v_val(4)  := nvl(p_csv_record.col017, 'null');
         v_val(5)  := nvl(p_csv_record.col018, 'null');
      elsif p_field_pos = 15 then
         v_val(1)  := nvl(p_csv_record.col015, 'null');
         v_val(2)  := nvl(p_csv_record.col016, 'null');
         v_val(3)  := nvl(p_csv_record.col017, 'null');
         v_val(4)  := nvl(p_csv_record.col018, 'null');
         v_val(5)  := nvl(p_csv_record.col019, 'null');
      elsif p_field_pos = 16 then
         v_val(1)  := nvl(p_csv_record.col016, 'null');
         v_val(2)  := nvl(p_csv_record.col017, 'null');
         v_val(3)  := nvl(p_csv_record.col018, 'null');
         v_val(4)  := nvl(p_csv_record.col019, 'null');
         v_val(5)  := nvl(p_csv_record.col020, 'null');
      elsif p_field_pos = 17 then
         v_val(1)  := nvl(p_csv_record.col017, 'null');
         v_val(2)  := nvl(p_csv_record.col018, 'null');
         v_val(3)  := nvl(p_csv_record.col019, 'null');
         v_val(4)  := nvl(p_csv_record.col020, 'null');
         v_val(5)  := nvl(p_csv_record.col021, 'null');
      elsif p_field_pos = 18 then
         v_val(1)  := nvl(p_csv_record.col018, 'null');
         v_val(2)  := nvl(p_csv_record.col019, 'null');
         v_val(3)  := nvl(p_csv_record.col020, 'null');
         v_val(4)  := nvl(p_csv_record.col021, 'null');
         v_val(5)  := nvl(p_csv_record.col022, 'null');
      elsif p_field_pos = 19 then
         v_val(1)  := nvl(p_csv_record.col019, 'null');
         v_val(2)  := nvl(p_csv_record.col020, 'null');
         v_val(3)  := nvl(p_csv_record.col021, 'null');
         v_val(4)  := nvl(p_csv_record.col022, 'null');
         v_val(5)  := nvl(p_csv_record.col023, 'null');
      elsif p_field_pos = 20 then
         v_val(1)  := nvl(p_csv_record.col020, 'null');
         v_val(2)  := nvl(p_csv_record.col021, 'null');
         v_val(3)  := nvl(p_csv_record.col022, 'null');
         v_val(4)  := nvl(p_csv_record.col023, 'null');
         v_val(5)  := nvl(p_csv_record.col024, 'null');
      elsif p_field_pos = 21 then
         v_val(1)  := nvl(p_csv_record.col021, 'null');
         v_val(2)  := nvl(p_csv_record.col022, 'null');
         v_val(3)  := nvl(p_csv_record.col023, 'null');
         v_val(4)  := nvl(p_csv_record.col024, 'null');
         v_val(5)  := nvl(p_csv_record.col025, 'null');
      elsif p_field_pos = 22 then
         v_val(1)  := nvl(p_csv_record.col022, 'null');
         v_val(2)  := nvl(p_csv_record.col023, 'null');
         v_val(3)  := nvl(p_csv_record.col024, 'null');
         v_val(4)  := nvl(p_csv_record.col025, 'null');
         v_val(5)  := nvl(p_csv_record.col026, 'null');
      elsif p_field_pos = 23 then
         v_val(1)  := nvl(p_csv_record.col023, 'null');
         v_val(2)  := nvl(p_csv_record.col024, 'null');
         v_val(3)  := nvl(p_csv_record.col025, 'null');
         v_val(4)  := nvl(p_csv_record.col026, 'null');
         v_val(5)  := nvl(p_csv_record.col027, 'null');
      elsif p_field_pos = 24 then
         v_val(1)  := nvl(p_csv_record.col024, 'null');
         v_val(2)  := nvl(p_csv_record.col025, 'null');
         v_val(3)  := nvl(p_csv_record.col026, 'null');
         v_val(4)  := nvl(p_csv_record.col027, 'null');
         v_val(5)  := nvl(p_csv_record.col028, 'null');
      elsif p_field_pos = 25 then
         v_val(1)  := nvl(p_csv_record.col025, 'null');
         v_val(2)  := nvl(p_csv_record.col026, 'null');
         v_val(3)  := nvl(p_csv_record.col027, 'null');
         v_val(4)  := nvl(p_csv_record.col028, 'null');
         v_val(5)  := nvl(p_csv_record.col029, 'null');
      elsif p_field_pos = 26 then
         v_val(1)  := nvl(p_csv_record.col026, 'null');
         v_val(2)  := nvl(p_csv_record.col027, 'null');
         v_val(3)  := nvl(p_csv_record.col028, 'null');
         v_val(4)  := nvl(p_csv_record.col029, 'null');
         v_val(5)  := nvl(p_csv_record.col030, 'null');
      elsif p_field_pos = 27 then
         v_val(1)  := nvl(p_csv_record.col027, 'null');
         v_val(2)  := nvl(p_csv_record.col028, 'null');
         v_val(3)  := nvl(p_csv_record.col029, 'null');
         v_val(4)  := nvl(p_csv_record.col030, 'null');
         v_val(5)  := nvl(p_csv_record.col031, 'null');
      elsif p_field_pos = 28 then
         v_val(1)  := nvl(p_csv_record.col028, 'null');
         v_val(2)  := nvl(p_csv_record.col029, 'null');
         v_val(3)  := nvl(p_csv_record.col030, 'null');
         v_val(4)  := nvl(p_csv_record.col031, 'null');
         v_val(5)  := nvl(p_csv_record.col032, 'null');
      elsif p_field_pos = 29 then
         v_val(1)  := nvl(p_csv_record.col029, 'null');
         v_val(2)  := nvl(p_csv_record.col030, 'null');
         v_val(3)  := nvl(p_csv_record.col031, 'null');
         v_val(4)  := nvl(p_csv_record.col032, 'null');
         v_val(5)  := nvl(p_csv_record.col033, 'null');
      elsif p_field_pos = 30 then
         v_val(1)  := nvl(p_csv_record.col030, 'null');
         v_val(2)  := nvl(p_csv_record.col031, 'null');
         v_val(3)  := nvl(p_csv_record.col032, 'null');
         v_val(4)  := nvl(p_csv_record.col033, 'null');
         v_val(5)  := nvl(p_csv_record.col034, 'null');
      elsif p_field_pos = 31 then
         v_val(1)  := nvl(p_csv_record.col031, 'null');
         v_val(2)  := nvl(p_csv_record.col032, 'null');
         v_val(3)  := nvl(p_csv_record.col033, 'null');
         v_val(4)  := nvl(p_csv_record.col034, 'null');
         v_val(5)  := nvl(p_csv_record.col035, 'null');
      elsif p_field_pos = 32 then
         v_val(1)  := nvl(p_csv_record.col032, 'null');
         v_val(2)  := nvl(p_csv_record.col033, 'null');
         v_val(3)  := nvl(p_csv_record.col034, 'null');
         v_val(4)  := nvl(p_csv_record.col035, 'null');
         v_val(5)  := nvl(p_csv_record.col036, 'null');
      elsif p_field_pos = 33 then
         v_val(1)  := nvl(p_csv_record.col033, 'null');
         v_val(2)  := nvl(p_csv_record.col034, 'null');
         v_val(3)  := nvl(p_csv_record.col035, 'null');
         v_val(4)  := nvl(p_csv_record.col036, 'null');
         v_val(5)  := nvl(p_csv_record.col037, 'null');
      elsif p_field_pos = 34 then
         v_val(1)  := nvl(p_csv_record.col034, 'null');
         v_val(2)  := nvl(p_csv_record.col035, 'null');
         v_val(3)  := nvl(p_csv_record.col036, 'null');
         v_val(4)  := nvl(p_csv_record.col037, 'null');
         v_val(5)  := nvl(p_csv_record.col038, 'null');
      elsif p_field_pos = 35 then
         v_val(1)  := nvl(p_csv_record.col035, 'null');
         v_val(2)  := nvl(p_csv_record.col036, 'null');
         v_val(3)  := nvl(p_csv_record.col037, 'null');
         v_val(4)  := nvl(p_csv_record.col038, 'null');
         v_val(5)  := nvl(p_csv_record.col039, 'null');
      elsif p_field_pos = 36 then
         v_val(1)  := nvl(p_csv_record.col036, 'null');
         v_val(2)  := nvl(p_csv_record.col037, 'null');
         v_val(3)  := nvl(p_csv_record.col038, 'null');
         v_val(4)  := nvl(p_csv_record.col039, 'null');
         v_val(5)  := nvl(p_csv_record.col040, 'null');
      elsif p_field_pos = 37 then
         v_val(1)  := nvl(p_csv_record.col037, 'null');
         v_val(2)  := nvl(p_csv_record.col038, 'null');
         v_val(3)  := nvl(p_csv_record.col039, 'null');
         v_val(4)  := nvl(p_csv_record.col040, 'null');
         v_val(5)  := nvl(p_csv_record.col041, 'null');
      elsif p_field_pos = 38 then
         v_val(1)  := nvl(p_csv_record.col038, 'null');
         v_val(2)  := nvl(p_csv_record.col039, 'null');
         v_val(3)  := nvl(p_csv_record.col040, 'null');
         v_val(4)  := nvl(p_csv_record.col041, 'null');
         v_val(5)  := nvl(p_csv_record.col042, 'null');
      elsif p_field_pos = 39 then
         v_val(1)  := nvl(p_csv_record.col039, 'null');
         v_val(2)  := nvl(p_csv_record.col040, 'null');
         v_val(3)  := nvl(p_csv_record.col041, 'null');
         v_val(4)  := nvl(p_csv_record.col042, 'null');
         v_val(5)  := nvl(p_csv_record.col043, 'null');
      elsif p_field_pos = 40 then
         v_val(1)  := nvl(p_csv_record.col040 'null');
         v_val(2)  := nvl(p_csv_record.col041, 'null');
         v_val(3)  := nvl(p_csv_record.col042, 'null');
         v_val(4)  := nvl(p_csv_record.col043, 'null');
         v_val(5)  := nvl(p_csv_record.col044, 'null');
      elsif p_field_pos = 41 then
         v_val(1)  := nvl(p_csv_record.col041, 'null');
         v_val(2)  := nvl(p_csv_record.col042, 'null');
         v_val(3)  := nvl(p_csv_record.col043, 'null');
         v_val(4)  := nvl(p_csv_record.col044, 'null');
         v_val(5)  := nvl(p_csv_record.col045, 'null');
      elsif p_field_pos = 42 then
         v_val(1)  := nvl(p_csv_record.col042, 'null');
         v_val(2)  := nvl(p_csv_record.col043, 'null');
         v_val(3)  := nvl(p_csv_record.col044, 'null');
         v_val(4)  := nvl(p_csv_record.col045, 'null');
         v_val(5)  := nvl(p_csv_record.col046, 'null');
      elsif p_field_pos = 43 then
         v_val(1)  := nvl(p_csv_record.col043, 'null');
         v_val(2)  := nvl(p_csv_record.col044, 'null');
         v_val(3)  := nvl(p_csv_record.col045, 'null');
         v_val(4)  := nvl(p_csv_record.col046, 'null');
         v_val(5)  := nvl(p_csv_record.col047, 'null');
      elsif p_field_pos = 44 then
         v_val(1)  := nvl(p_csv_record.col044, 'null');
         v_val(2)  := nvl(p_csv_record.col045, 'null');
         v_val(3)  := nvl(p_csv_record.col046, 'null');
         v_val(4)  := nvl(p_csv_record.col047, 'null');
         v_val(5)  := nvl(p_csv_record.col048, 'null');
      elsif p_field_pos = 45 then
         v_val(1)  := nvl(p_csv_record.col045, 'null');
         v_val(2)  := nvl(p_csv_record.col046, 'null');
         v_val(3)  := nvl(p_csv_record.col047, 'null');
         v_val(4)  := nvl(p_csv_record.col048, 'null');
         v_val(5)  := nvl(p_csv_record.col049, 'null');
      elsif p_field_pos = 46 then
         v_val(1)  := nvl(p_csv_record.col046, 'null');
         v_val(2)  := nvl(p_csv_record.col047, 'null');
         v_val(3)  := nvl(p_csv_record.col048, 'null');
         v_val(4)  := nvl(p_csv_record.col049, 'null');
         v_val(5)  := nvl(p_csv_record.col050, 'null');
      elsif p_field_pos = 47 then
         v_val(1)  := nvl(p_csv_record.col047, 'null');
         v_val(2)  := nvl(p_csv_record.col048, 'null');
         v_val(3)  := nvl(p_csv_record.col049, 'null');
         v_val(4)  := nvl(p_csv_record.col050, 'null');
         v_val(5)  := nvl(p_csv_record.col051, 'null');
      elsif p_field_pos = 48 then
         v_val(1)  := nvl(p_csv_record.col048, 'null');
         v_val(2)  := nvl(p_csv_record.col049, 'null');
         v_val(3)  := nvl(p_csv_record.col050, 'null');
         v_val(4)  := nvl(p_csv_record.col051, 'null');
         v_val(5)  := nvl(p_csv_record.col052, 'null');
      elsif p_field_pos =49 then
         v_val(1)  := nvl(p_csv_record.col049, 'null');
         v_val(2)  := nvl(p_csv_record.col050, 'null');
         v_val(3)  := nvl(p_csv_record.col051, 'null');
         v_val(4)  := nvl(p_csv_record.col052, 'null');
         v_val(5)  := nvl(p_csv_record.col053, 'null');
      elsif p_field_pos = 50 then
         v_val(1)  := nvl(p_csv_record.col050, 'null');
         v_val(2)  := nvl(p_csv_record.col051, 'null');
         v_val(3)  := nvl(p_csv_record.col052, 'null');
         v_val(4)  := nvl(p_csv_record.col053, 'null');
         v_val(5)  := nvl(p_csv_record.col054, 'null');
      elsif p_field_pos = 51 then
         v_val(1)  := nvl(p_csv_record.col051, 'null');
         v_val(2)  := nvl(p_csv_record.col052, 'null');
         v_val(3)  := nvl(p_csv_record.col053, 'null');
         v_val(4)  := nvl(p_csv_record.col054, 'null');
         v_val(5)  := nvl(p_csv_record.col055, 'null');
      elsif p_field_pos = 52 then
         v_val(1)  := nvl(p_csv_record.col052, 'null');
         v_val(2)  := nvl(p_csv_record.col053, 'null');
         v_val(3)  := nvl(p_csv_record.col054, 'null');
         v_val(4)  := nvl(p_csv_record.col055, 'null');
         v_val(5)  := nvl(p_csv_record.col056, 'null');
      elsif p_field_pos = 53 then
         v_val(1)  := nvl(p_csv_record.col053, 'null');
         v_val(2)  := nvl(p_csv_record.col054, 'null');
         v_val(3)  := nvl(p_csv_record.col055, 'null');
         v_val(4)  := nvl(p_csv_record.col056, 'null');
         v_val(5)  := nvl(p_csv_record.col057, 'null');
      elsif p_field_pos = 54 then
         v_val(1)  := nvl(p_csv_record.col054, 'null');
         v_val(2)  := nvl(p_csv_record.col055, 'null');
         v_val(3)  := nvl(p_csv_record.col056, 'null');
         v_val(4)  := nvl(p_csv_record.col057, 'null');
         v_val(5)  := nvl(p_csv_record.col058, 'null');
      elsif p_field_pos = 55 then
         v_val(1)  := nvl(p_csv_record.col055, 'null');
         v_val(2)  := nvl(p_csv_record.col056, 'null');
         v_val(3)  := nvl(p_csv_record.col057, 'null');
         v_val(4)  := nvl(p_csv_record.col058, 'null');
         v_val(5)  := nvl(p_csv_record.col059, 'null');
      elsif p_field_pos = 56 then
         v_val(1)  := nvl(p_csv_record.col056, 'null');
         v_val(2)  := nvl(p_csv_record.col057, 'null');
         v_val(3)  := nvl(p_csv_record.col058, 'null');
         v_val(4)  := nvl(p_csv_record.col059, 'null');
         v_val(5)  := nvl(p_csv_record.col060, 'null');
      elsif p_field_pos = 57 then
         v_val(1)  := nvl(p_csv_record.col057, 'null');
         v_val(2)  := nvl(p_csv_record.col058, 'null');
         v_val(3)  := nvl(p_csv_record.col059, 'null');
         v_val(4)  := nvl(p_csv_record.col060, 'null');
         v_val(5)  := nvl(p_csv_record.col061, 'null');
      elsif p_field_pos = 58 then
         v_val(1)  := nvl(p_csv_record.col058, 'null');
         v_val(2)  := nvl(p_csv_record.col059, 'null');
         v_val(3)  := nvl(p_csv_record.col060, 'null');
         v_val(4)  := nvl(p_csv_record.col061, 'null');
         v_val(5)  := nvl(p_csv_record.col062, 'null');
      elsif p_field_pos = 59 then
         v_val(1)  := nvl(p_csv_record.col059, 'null');
         v_val(2)  := nvl(p_csv_record.col060, 'null');
         v_val(3)  := nvl(p_csv_record.col061, 'null');
         v_val(4)  := nvl(p_csv_record.col062, 'null');
         v_val(5)  := nvl(p_csv_record.col063, 'null');
      elsif p_field_pos = 60 then
         v_val(1)  := nvl(p_csv_record.col060, 'null');
         v_val(2)  := nvl(p_csv_record.col061, 'null');
         v_val(3)  := nvl(p_csv_record.col062, 'null');
         v_val(4)  := nvl(p_csv_record.col063, 'null');
         v_val(5)  := nvl(p_csv_record.col064, 'null');
      elsif p_field_pos = 61 then
         v_val(1)  := nvl(p_csv_record.col061, 'null');
         v_val(2)  := nvl(p_csv_record.col062, 'null');
         v_val(3)  := nvl(p_csv_record.col063, 'null');
         v_val(4)  := nvl(p_csv_record.col064, 'null');
         v_val(5)  := nvl(p_csv_record.col065, 'null');
      elsif p_field_pos = 62 then
         v_val(1)  := nvl(p_csv_record.col062, 'null');
         v_val(2)  := nvl(p_csv_record.col063, 'null');
         v_val(3)  := nvl(p_csv_record.col064, 'null');
         v_val(4)  := nvl(p_csv_record.col065, 'null');
         v_val(5)  := nvl(p_csv_record.col066, 'null');
      elsif p_field_pos = 63 then
         v_val(1)  := nvl(p_csv_record.col063, 'null');
         v_val(2)  := nvl(p_csv_record.col064, 'null');
         v_val(3)  := nvl(p_csv_record.col065, 'null');
         v_val(4)  := nvl(p_csv_record.col066, 'null');
         v_val(5)  := nvl(p_csv_record.col067, 'null');
      elsif p_field_pos = 64 then
         v_val(1)  := nvl(p_csv_record.col064, 'null');
         v_val(2)  := nvl(p_csv_record.col065, 'null');
         v_val(3)  := nvl(p_csv_record.col066, 'null');
         v_val(4)  := nvl(p_csv_record.col067, 'null');
         v_val(5)  := nvl(p_csv_record.col068, 'null');
      elsif p_field_pos = 65 then
         v_val(1)  := nvl(p_csv_record.col065, 'null');
         v_val(2)  := nvl(p_csv_record.col066, 'null');
         v_val(3)  := nvl(p_csv_record.col067, 'null');
         v_val(4)  := nvl(p_csv_record.col068, 'null');
         v_val(5)  := nvl(p_csv_record.col069, 'null');
      elsif p_field_pos = 66 then
         v_val(1)  := nvl(p_csv_record.col066, 'null');
         v_val(2)  := nvl(p_csv_record.col067, 'null');
         v_val(3)  := nvl(p_csv_record.col068, 'null');
         v_val(4)  := nvl(p_csv_record.col069, 'null');
         v_val(5)  := nvl(p_csv_record.col060, 'null');
      elsif p_field_pos = 67 then
         v_val(1)  := nvl(p_csv_record.col067, 'null');
         v_val(2)  := nvl(p_csv_record.col068, 'null');
         v_val(3)  := nvl(p_csv_record.col069, 'null');
         v_val(4)  := nvl(p_csv_record.col070, 'null');
         v_val(5)  := nvl(p_csv_record.col071, 'null');
      elsif p_field_pos = 68 then
         v_val(1)  := nvl(p_csv_record.col068, 'null');
         v_val(2)  := nvl(p_csv_record.col069, 'null');
         v_val(3)  := nvl(p_csv_record.col070, 'null');
         v_val(4)  := nvl(p_csv_record.col071, 'null');
         v_val(5)  := nvl(p_csv_record.col072, 'null');
      elsif p_field_pos = 69 then
         v_val(1)  := nvl(p_csv_record.col069, 'null');
         v_val(2)  := nvl(p_csv_record.col070, 'null');
         v_val(3)  := nvl(p_csv_record.col071, 'null');
         v_val(4)  := nvl(p_csv_record.col072, 'null');
         v_val(5)  := nvl(p_csv_record.col073, 'null');
      elsif p_field_pos = 70 then
         v_val(1)  := nvl(p_csv_record.col070, 'null');
         v_val(2)  := nvl(p_csv_record.col071, 'null');
         v_val(3)  := nvl(p_csv_record.col072, 'null');
         v_val(4)  := nvl(p_csv_record.col073, 'null');
         v_val(5)  := nvl(p_csv_record.col074, 'null');
      elsif p_field_pos = 71 then
         v_val(1)  := nvl(p_csv_record.col071, 'null');
         v_val(2)  := nvl(p_csv_record.col072, 'null');
         v_val(3)  := nvl(p_csv_record.col073, 'null');
         v_val(4)  := nvl(p_csv_record.col074, 'null');
         v_val(5)  := nvl(p_csv_record.col075, 'null');
      elsif p_field_pos = 72 then
         v_val(1)  := nvl(p_csv_record.col072, 'null');
         v_val(2)  := nvl(p_csv_record.col073, 'null');
         v_val(3)  := nvl(p_csv_record.col074, 'null');
         v_val(4)  := nvl(p_csv_record.col075, 'null');
         v_val(5)  := nvl(p_csv_record.col076, 'null');
      elsif p_field_pos = 73 then
         v_val(1)  := nvl(p_csv_record.col073, 'null');
         v_val(2)  := nvl(p_csv_record.col074, 'null');
         v_val(3)  := nvl(p_csv_record.col075, 'null');
         v_val(4)  := nvl(p_csv_record.col076, 'null');
         v_val(5)  := nvl(p_csv_record.col077, 'null');
      elsif p_field_pos = 74 then
         v_val(1)  := nvl(p_csv_record.col074, 'null');
         v_val(2)  := nvl(p_csv_record.col075, 'null');
         v_val(3)  := nvl(p_csv_record.col076, 'null');
         v_val(4)  := nvl(p_csv_record.col077, 'null');
         v_val(5)  := nvl(p_csv_record.col078, 'null');
      elsif p_field_pos = 75 then
         v_val(1)  := nvl(p_csv_record.col075, 'null');
         v_val(2)  := nvl(p_csv_record.col076, 'null');
         v_val(3)  := nvl(p_csv_record.col077, 'null');
         v_val(4)  := nvl(p_csv_record.col078, 'null');
         v_val(5)  := nvl(p_csv_record.col079, 'null');
      elsif p_field_pos = 76 then
         v_val(1)  := nvl(p_csv_record.col076, 'null');
         v_val(2)  := nvl(p_csv_record.col077, 'null');
         v_val(3)  := nvl(p_csv_record.col078, 'null');
         v_val(4)  := nvl(p_csv_record.col079, 'null');
         v_val(5)  := nvl(p_csv_record.col080, 'null');
      elsif p_field_pos = 77 then
         v_val(1)  := nvl(p_csv_record.col077, 'null');
         v_val(2)  := nvl(p_csv_record.col078, 'null');
         v_val(3)  := nvl(p_csv_record.col079, 'null');
         v_val(4)  := nvl(p_csv_record.col080, 'null');
         v_val(5)  := nvl(p_csv_record.col081, 'null');
      elsif p_field_pos = 78 then
         v_val(1)  := nvl(p_csv_record.col078, 'null');
         v_val(2)  := nvl(p_csv_record.col079, 'null');
         v_val(3)  := nvl(p_csv_record.col080, 'null');
         v_val(4)  := nvl(p_csv_record.col081, 'null');
         v_val(5)  := nvl(p_csv_record.col082, 'null');
      elsif p_field_pos = 79 then
         v_val(1)  := nvl(p_csv_record.col079, 'null');
         v_val(2)  := nvl(p_csv_record.col080, 'null');
         v_val(3)  := nvl(p_csv_record.col081, 'null');
         v_val(4)  := nvl(p_csv_record.col082, 'null');
         v_val(5)  := nvl(p_csv_record.col083, 'null');
      end if;
      
      return get_csv_field_type(v_val, p_field_type, p_job_number, p_obs_number);   
   end get_csv_field_position;
   
   procedure parse_csv_data
   (
      p_job_number    number
   )
   is
      v_data_type       varchar2(50);
      v_usage           varchar2(50);
      v_username        varchar2(50);
      v_columns         varchar2(4000);
      v_values          varchar2(4000);
      v_stmt            varchar2(4000);
      v_stg_file        number;
      v_index_field     number;
      v_cnt             number default 0;
      p_csv_record      stg_file_csv_row%rowtype;
   begin
      dbms_output. enable (buffer_size => null); 
      
      select data_type
      into v_data_type
      from meds_processing_job
      where job_number = p_job_number;
      --dbms_output.put_line('v_data_type: ' || v_data_type);
      
      select stg_file
      into v_stg_file
      from stg_file
      where job_number = p_job_number;
      --dbms_output.put_line('v_stg_file: ' || v_stg_file);
      
      select usage
      ,  index_field
      into v_usage
      ,  v_index_field
      from job_lookups 
      where type='Data Type' 
      and usage  = v_data_type;
      --dbms_output.put_line('v_usage: '       || v_usage);
      --dbms_output.put_line('v_index_field: ' || v_index_field);
      
      set transaction name 'csv_parsing';
      
      <<involved_tables>> -- Loop through all the tables involved in the job type 
      for f_table in 
      (
         select distinct table_name 
         from  field_lookup 
         where data_type_index = v_index_field
      )
      loop
         --dbms_output.put_line('f_table: ' || f_table.table_name);
         --Verify if the job has been already loaded in the destination table
         v_stmt := ' select count(1) from ' || f_table.table_name || ' where meds_job_number = ' || p_job_number;
         execute immediate v_stmt into v_cnt;
         
         if v_cnt > 0 then
            --dbms_output.put_line('Skipping ' || f_table.table_name);
            continue;
         end if;
        
         <<csv_data>> -- Loop through the csv content
         for f_row in 
         (
            select * 
            from  stg_file_csv_row 
            where stg_file = v_stg_file 
            order by row_sequence
         ) 
         loop
            --dbms_output.put_line('v_row_sequence: ' || f_row.row_sequence);
            v_columns   := '';
            v_values    := '';
            
            <<table_fields>> 
            for f_field_lookup in 
            (
               select * 
               from  field_lookup 
               where data_type_index = v_index_field 
               and   table_name      = f_table.table_name 
               order by field_position
            )
            loop
               --dbms_output.put_line('f_field_lookup.field_name: ' || f_field_lookup.field_name);
               v_columns := v_columns || ', ' || f_field_lookup.field_name; -- Populate insert column names
               v_values  := v_values  || ', ' || upload_util.get_csv_field_position(p_csv_record => f_row,
                                                                                    p_field_pos  => f_field_lookup.field_position,
                                                                                    p_field_type => f_field_lookup.field_type,
                                                                                    p_job_number => p_job_number,
                                                                                    p_obs_number => f_row.row_sequence);
            end loop table_fields;     
            v_columns := ltrim(v_columns, ', ');
            --dbms_output.put_line('v_columns: ' || v_columns);
            v_values := ltrim(v_values, ', ');
            --dbms_output.put_line('v_values: ' || v_values);         
            v_stmt := 'insert into ' || f_table.table_name || '(' || v_columns || ') ' || chr(10) || 'values(' || v_values || ')';
            --dbms_output.put_line(v_stmt); 
   
            execute immediate v_stmt;
         end loop csv_data;            
      end loop involved_tables;
   
      commit ;
      
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
end upload_util;
/
