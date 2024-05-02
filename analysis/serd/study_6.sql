declare
   p_job_number               number default 102589;
   
   v_obs                      number default 0;
   v_offset                   number;
   v_part                     varchar2(100);
   v_rows                     number;
   
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
   data_rec                   data_record;

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
   ,	no_of_comments			   number
   ,	comments				      varchar2(640));
   index_rec                  index_record;
   
begin
   dbms_output. enable (buffer_size => null); 
   dbms_output.put_line(systimestamp);  
   
   -- Each main record is an observation
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

         
        
      for i in 1..f_row.depthlevelcount
      loop
         v_part   := substr(f_row.row_depth_content, v_offset, 24);
         v_offset := v_offset + 24;
         
         data_rec.observation          := v_obs;
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
         
         data_tbl(v_obs) := data_rec;
      end loop;
      
     
   end loop;      

   dbms_output.put_line(systimestamp); 
end;