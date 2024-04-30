declare
   v_depth           number;
   v_offset          number;
   v_part            varchar2(100);
   type data_sv_rec  is record (
      depthindicatorcode   char(1)
   ,  depthlevel           number 
   ,  temperature          number
   ,  salinity             number
   ,  soundvelocity        number
   ,  depthquality         char(1)
   ,  temperaturequality   char(1) 
   ,  salinityquality      char(1) 
   ,  soundvelocityquality char(1) 
   ,  soundvelocitycode    char(1));
   data_sv           data_sv_rec;
begin
   for t_stg_row in 
   (
      select 
         depthlevelcount,
         row_depth_content
      from v_stg_serd_row_main where stg_file = 30993878339334963181291093484775326951 
      order by row_sequence
   )
   loop
      dbms_output.ENABLE (buffer_size => NULL);
      
      v_depth  := 0;
      v_offset := 0;
   
      for i in 1..t_stg_row.depthlevelcount
      loop
         v_part   := substr(t_stg_row.row_depth_content, v_offset, 23);
         v_offset := v_offset + 24;
         v_depth  := v_depth  + 1;
         
         data_sv.depthindicatorcode   := substr(v_part,1,1); 
         data_sv.depthlevel           := substr(v_part,2,4);
         data_sv.depthquality         := substr(v_part,6,1);
         --data_sv.temperature          := substr(v_part,7,4);
         data_sv.temperaturequality   := substr(v_part,11,1);
         --data_sv.salinity             := substr(v_part,12,5);
         data_sv.salinityquality      := substr(v_part,17,1);
         data_sv.soundvelocity        := substr(v_part,18,5);
         data_sv.soundvelocityquality := substr(v_part,23,1);
         data_sv.soundvelocitycode    := substr(v_part,24,1);
         
         dbms_output.put_line('Part #' || v_depth || ' - ' || v_part);
         dbms_output.put_line('data_sv.depthindicatorcode: ' || data_sv.depthindicatorcode);
         dbms_output.put_line('data_sv.depthlevel: ' || data_sv.depthlevel);
         dbms_output.put_line('data_sv.depthquality: ' || data_sv.depthquality);
         dbms_output.put_line('data_sv.temperature: ' || data_sv.temperature);
         dbms_output.put_line('data_sv.temperaturequality: ' || data_sv.temperaturequality);
         dbms_output.put_line('data_sv.salinity: ' || data_sv.salinity);
         dbms_output.put_line('data_sv.salinityquality: ' || data_sv.salinityquality);
         dbms_output.put_line('data_sv.soundvelocity: ' || data_sv.soundvelocity);
         dbms_output.put_line('data_sv.soundvelocityquality: ' || data_sv.soundvelocityquality);
         dbms_output.put_line('data_sv.soundvelocitycode: ' || data_sv.soundvelocitycode);
         dbms_output.put_line('------------------------');
      end loop;
   end loop;
end;