CREATE OR REPLACE package upload_serd_util
as

   type data_record           is record (
      depthindicatorcode      char(1)
   ,  depthlevel              number 
   ,  temperature             number
   ,  salinity                number
   ,  soundvelocity           number
   ,  depthquality            char(1)
   ,  temperaturequality      char(1) 
   ,  salinityquality         char(1) 
   ,  soundvelocityquality    char(1) 
   ,  soundvelocitycode       char(1));
   
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
  
   procedure parse_serd_file
   (
      p_job_number   number
   );

   procedure parse_serd_data
   (
      p_job_number   number
   ); 
   
   function insert_profile_index (
      p_job_type     number
   ,  p_index_record index_record
   ) return number;
   
end upload_serd_util;
/

-- -----------------------------------------------------------------------------------------------------------------
-- PACKAGE BODY
-- -----------------------------------------------------------------------------------------------------------------

CREATE OR REPLACE package body upload_serd_util
as

   function insert_profile_index (
      p_job_type     number
   ,  p_index_record index_record
   ) return number
   is
      v_rows   number;
   begin
   
      if  p_job_type = 1 then -- SV Probes
         insert into profile_index_sv 
         (
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
         ,   month
         ) 
         values 
         (
             p_index_record.comments
         ,   p_index_record.date_time
         ,   null -- TODO Geospatial field
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
         ,   p_index_record.month
         );
         
         v_rows := SQL%ROWCOUNT;
         
      elsif p_job_type = 2 then -- CTD
         null;
      elsif p_job_type = 8 then -- XBT       
         null;
      end if;
         
      return v_rows;
      
   end insert_profile_index;

   procedure parse_serd_data
   (
      p_job_number   number
   )
   is
      v_obs             number default 0; -- this will be MEDS_OBSERVATION_NUMBER, one for each record type 2
      v_offset          number;
      v_part            varchar2(100);
      v_rows            number;
      v_cruise_number   number;
      v_job_type        number;
      v_ret             number;     
      data_rec          data_record;
      index_rec         index_record;
   begin
      dbms_output.put_line(systimestamp); 
      
      select 
         a.meds_cruise_number
      ,  b.job_type_number
      into 
         v_cruise_number
      ,  v_job_type
      from        meds_processing_job  a
      inner join  job_tracking         b
         on b.meic_number  = a.meic_number
      where a.job_number   = p_job_number;
      dbms_output.put_line('v_cruise_number: ' || v_cruise_number); 
      dbms_output.put_line('v_job_type: '      || v_job_type); 
      
      -- Each record is an observation
      for f_row in 
      (
         select 
            b.*
         from stg_file        a
         inner join v_stg_serd_row_main b 
            on b.stg_file = a.stg_file
         where a.job_number = p_job_number
         order by b.row_sequence
      )
      loop
         v_obs    := v_obs + 1;
         v_offset := 1;      
         
         -- Prepare PROFILE_INDEX
         index_rec.date_time					   := to_date(f_row.observationdate || f_row.observationtime,'YYYYMMDDHH24MI');
         index_rec.year						      := substr(f_row.observationdate,1,4);
         index_rec.month						   := substr(f_row.observationdate,5,2);
         index_rec.instrument_code			   := f_row.instrumentcode;
         index_rec.observed_depth			   := nullif(f_row.depthtoseabed, '     ');
         index_rec.minimum_depth_level		   := f_row.OBSERVATIONDEPTHMIN;
         index_rec.maximum_depth_level		   := f_row.OBSERVATIONDEPTHMAX;
         index_rec.number_of_depth_levels	   := f_row.DEPTHLEVELCOUNT;
         index_rec.marsden_square			   := f_row.MARSDENSQUARE;
         index_rec.quadrant					   := f_row.quadrant;
         index_rec.degree_square				   := f_row.degreesquare;
         index_rec.hood_archive_year		   := nullif(f_row.archiveyear, '  ');
         --index_rec.string_location			:= f_row.;
         --index_rec.latitude					   := f_row.;
         --index_rec.longitude					:= f_row.;
         --index_rec.meds_ship_number			   := f_row.shipnumber;
         --index_rec.meds_cruise_number		   := v_cruise_number;
         index_rec.no_of_comments			   := f_row.commentcount;
         index_rec.comments					   := f_row.commentcontent;
         index_rec.meds_job_number           := p_job_number;
         index_rec.meds_observation_number   := v_obs;

         v_ret := insert_profile_index(
                     p_job_type     => v_job_type
                  ,  p_index_record => index_rec);       
      
         -- Prepare PROFILE_DATA  
         for i in 1..f_row.depthlevelcount
         loop
            v_part   := substr(f_row.row_depth_content, v_offset, 24);
            v_offset := v_offset + 24;
            
            data_rec.depthindicatorcode   := substr(v_part,1,1); 
            data_rec.depthlevel           := substr(v_part,2,4);
            data_rec.depthquality         := substr(v_part,6,1);
            data_rec.temperature          := nullif(substr(v_part,7,4), '    ');
            data_rec.temperaturequality   := substr(v_part,11,1);
            data_rec.salinity             := nullif(substr(v_part,12,5), '     ');
            data_rec.salinityquality      := substr(v_part,17,1);
            data_rec.soundvelocity        := nullif(substr(v_part,18,5), '     ');
            data_rec.soundvelocityquality := substr(v_part,23,1);
            data_rec.soundvelocitycode    := substr(v_part,24,1);
            
            -- insert should come here
         end loop;
                 
      end loop;      
      dbms_output.put_line(systimestamp); 
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
   
end upload_serd_util;
/
