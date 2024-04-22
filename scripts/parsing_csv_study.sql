declare 
   p_job_number      number;
   v_data_type       varchar2(50);
   v_usage           varchar2(50);
   v_index_field     number;
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
   for v_table in (select distinct table_name from field_lookup where data_type_index = v_index_field)
   loop
      dbms_output.put_line('v_table: ' || v_table.table_name);
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
*/
end; 