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
   
   <<involved_tables>> -- Loop through all the tables involved in the job type 
   for f_table in (select distinct table_name from field_lookup where data_type_index = v_index_field)
   loop
      --dbms_output.put_line('f_table: ' || f_table.table_name);
      v_stmt := 'insert into ' || f_table.table_name || '(';
      
      select listagg(field_name, ',') within group(order by field_position) 
      into v_columns
      from field_lookup
      where data_type_index = v_index_field 
      and table_name = f_table.table_name;
      
      v_stmt := v_stmt || v_columns || ')' || chr(10) || 'select ';
      
      
      v_stmt := v_stmt || 'from stg_file_csv_row where stg_file = ' || v_stg_file;
      
      dbms_output.put_line(v_stmt);     
   end loop involved_tables;
end;
/