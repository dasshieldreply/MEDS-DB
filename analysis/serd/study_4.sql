declare
   p_job_number            number default 102589;
   
   v_obs                   number default 0;
   v_offset                number;
   v_part                  varchar2(100);
   v_rows                  number;
   type data_record        is record (
      depthindicatorcode   char(1)
   ,  depthlevel           number 
   ,  temperature          number
   ,  salinity             number
   ,  soundvelocity        number
   ,  depthquality         char(1)
   ,  temperaturequality   char(1) 
   ,  salinityquality      char(1) 
   ,  soundvelocityquality char(1) 
   ,  soundvelocitycode    char(1)
   ,  observation          number);
   data_rec                data_record;
   type data_table         is table of data_record index by binary_integer;
   data_tbl                data_table default data_table();
   
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
      
      dbms_output.put_line('observation: ' 		   || v_obs);   
      dbms_output.put_line('depth levels: ' 		   || f_row.depthlevelcount);
        
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
      
      for i in 1..data_tbl.count
      loop
         dbms_output.put_line('observation         : ' || data_tbl(i).observation);
         dbms_output.put_line('depthlevel          : ' || data_tbl(i).depthlevel);
         dbms_output.put_line('depthindicatorcode  : ' || data_tbl(i).depthindicatorcode);
         dbms_output.put_line('depthlevel          : ' || data_tbl(i).depthlevel);
         dbms_output.put_line('depthquality        : ' || data_tbl(i).depthquality);
         dbms_output.put_line('temperature         : ' || data_tbl(i).temperature);
         dbms_output.put_line('temperaturequality  : ' || data_tbl(i).temperaturequality);
         dbms_output.put_line('salinity            : ' || data_tbl(i).salinity);
         dbms_output.put_line('salinityquality     : ' || data_tbl(i).salinityquality);
         dbms_output.put_line('soundvelocity       : ' || data_tbl(i).soundvelocity);
         dbms_output.put_line('soundvelocityquality: ' || data_tbl(i).soundvelocityquality);
         dbms_output.put_line('soundvelocitycode   : ' || data_tbl(i).soundvelocitycode);   
      end loop;
      dbms_output.put_line('-----------------------------------------------------------------');      
   end loop;      

   dbms_output.put_line(systimestamp); 
end;