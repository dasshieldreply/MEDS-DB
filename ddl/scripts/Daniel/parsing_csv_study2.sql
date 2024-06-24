declare 
   p_job_number      number;
   v_data_type       varchar2(50);
   v_usage           varchar2(50);
   v_index_field     number;
   v_columns         varchar2(4000);
   v_values          varchar2(4000);
   v_obs             number;
begin
   p_job_number := :p_job_number;
   
   select data_type
   into v_data_type
   from meds_processing_job
   where job_number = p_job_number;
   dbms_output.put_line('v_data_type: ' || v_data_type);
   
   select usage
   ,  index_field
   into v_usage
   ,  v_index_field
   from job_lookups 
   where type='Data Type' 
   and description  = v_data_type;
   dbms_output.put_line('v_usage: '       || v_usage);
   dbms_output.put_line('v_index_field: ' || v_index_field);
    
   -- Loop through all the tables involved in the job type 
   for f_table in (select distinct table_name from field_lookup where data_type_index = v_index_field)
   loop
      dbms_output.put_line('f_table: ' || f_table.table_name);
      
      v_columns   := '';
      v_values    := '';
      v_obs       := 0;
      
      -- Get the table fields
      for f_field_lookup in (select * from field_lookup where data_type_index = v_index_field and table_name = f_table.table_name order by field_position)
      loop
         dbms_output.put_line('f_field_lookup.field_position: ' || f_field_lookup.field_position || ' f_field_lookup.field_name: ' || f_field_lookup.field_name );
         -- Populate insert column names
         v_columns := v_columns || ', ' || f_field_lookup.field_name;

         -- Populate job derived columns
         if f_field_lookup.field_position = 0 then
            if    f_field_lookup.field_name = 'MEDS_JOB_NUMBER' then 
               v_values := v_values || ', ' || p_job_number;
            elsif f_field_lookup.field_name = 'MEDS_OBSERVATION_NUMBER'
            
            end;
         end if;

      end loop;     
      
      v_columns := ltrim(v_columns, ', ');
      dbms_output.put_line('v_columns: ' || v_columns);
   end loop;
   
/*    
   for v_stg_file_csv_row in (select * from stg_file_csv_row where job_number = p_job_number order by row_sequence)
   loop
      dbm_output.put_line();
   
   end loop;
   
   execute immediate  
         'UPDATE employees SET '  
      || col_in  
      || ' = :val WHERE employee_id = :val'  
      using value_in, id_in;  
      
      for each distinct table found for the data type
      -- start the insert
      'insert into v_table_name(' 
      -- loop through the table field definition
      for all fields in fields list
         v_field_name ',' ||
      end for
      ') values ('
      invoque function to get the value of corresponding column in the csv row
      ')   
      
-------------

      select listagg(field_name, ',') within group(order by field_position) 
      into v_columns
      where data_type_index = v_index_field 
      and table_name = f_table.table_name;
      dbms_output.put_line('v_columns: ' || v_columns);
*/
end; 