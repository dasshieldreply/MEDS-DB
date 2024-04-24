declare 
   p_job_number      number;
   v_data_type       varchar2(50);
   v_usage           varchar2(50);
   v_index_field     number;
   v_columns         varchar2(4000);
   v_values          varchar2(4000);
   v_obs             number;
   v_stg_file        number;
   v_stmt            varchar2(4000);
begin
   p_job_number := 102537;
   dbms_output. enable (buffer_size => null); 
   
   select data_type
   into v_data_type
   from meds_processing_job
   where job_number = p_job_number;
   dbms_output.put_line('v_data_type: ' || v_data_type);
   
   select stg_file
   into v_stg_file
   from stg_file
   where job_number = p_job_number;
   dbms_output.put_line('v_stg_file: ' || v_stg_file);
   
   select usage
   ,  index_field
   into v_usage
   ,  v_index_field
   from job_lookups 
   where type='Data Type' 
   and usage  = v_data_type;
   dbms_output.put_line('v_usage: '       || v_usage);
   dbms_output.put_line('v_index_field: ' || v_index_field);

   <<csv_data>> -- Loop through the csv content
   for f_row in (select * from stg_file_csv_row where stg_file = v_stg_file order by row_sequence) 
   loop
       
      <<involved_tables>> -- Loop through all the tables involved in the job type 
      for f_table in (select distinct table_name from field_lookup where data_type_index = v_index_field)
      loop
         --dbms_output.put_line('f_table: ' || f_table.table_name);
         v_columns   := '';
         v_values    := '';
         v_obs       := 0;
         
         <<table_fields>> -- Get the table fields
         for f_field_lookup in (select * from field_lookup where data_type_index = v_index_field and table_name = f_table.table_name order by field_position)
         loop
            v_columns := v_columns || ', ' || f_field_lookup.field_name; -- Populate insert column names
            
            if f_field_lookup.field_position = 0 then  -- Populate job derived columns
               if f_field_lookup.field_name = 'MEDS_JOB_NUMBER' then 
                  v_values := v_values || ', ' || p_job_number;
               elsif f_field_lookup.field_name = 'MEDS_OBSERVATION_NUMBER' then
                  v_values := v_values || ', ' || f_row.row_sequence;
               elsif f_field_lookup.field_name = 'LOCATION' then
                  v_values := v_values || ', NULL' ;
               end if;
            else  -- Populate by position
               if f_field_lookup.field_position = 1 then
                  v_values := v_values || ', ' || nvl(f_row.col001, 'null');
               elsif f_field_lookup.field_position = 2 then
                  v_values := v_values || ', ' || nvl(f_row.col002, 'null');
               elsif f_field_lookup.field_position = 3 then
                  v_values := v_values || ', ' || nvl(f_row.col003, 'null');
               elsif f_field_lookup.field_position = 4 then
                  v_values := v_values || ', ' || nvl(f_row.col004, 'null');
               elsif f_field_lookup.field_position = 5 then
                  v_values := v_values || ', ' || nvl(f_row.col005, 'null'); 
               elsif f_field_lookup.field_position = 6 then
                  v_values := v_values || ', ' || nvl(f_row.col006, 'null');
               elsif f_field_lookup.field_position = 7 then
                  v_values := v_values || ', ' || nvl(f_row.col007, 'null');
               elsif f_field_lookup.field_position = 8 then
                  v_values := v_values || ', ' || nvl(f_row.col008, 'null');
               elsif f_field_lookup.field_position = 9 then
                  v_values := v_values || ', ' || nvl(f_row.col009, 'null'); 
               elsif f_field_lookup.field_position = 10 then
                  v_values := v_values || ', ' || nvl(f_row.col010, 'null'); 
               elsif f_field_lookup.field_position = 11 then
                  v_values := v_values || ', ' || nvl(f_row.col011, 'null'); 
               end if;
            end if;        
      
         end loop table_fields;     
         
         v_columns := ltrim(v_columns, ', ');
         --dbms_output.put_line('v_columns: ' || v_columns);
         v_values := ltrim(v_values, ', ');
         --dbms_output.put_line('v_values: ' || v_values);         
         v_stmt := 'insert into ' || f_table.table_name || '(' || v_columns || ') ' || chr(10) || 'values(' || v_values || ')';
         dbms_output.put_line(v_stmt); 
      end loop involved_tables;
   end loop csv_data;
end; 

