create or replace procedure dev_parse_csv_data
(
   p_job_number    in   number
)
as
   v_data_type       varchar2(50);
   v_usage           varchar2(50);
   v_username        varchar2(50);
   v_columns         varchar2(4000);
   v_values          varchar2(4000);
   v_stmt            varchar2(4000);
   v_stg_file        number;
   v_index_field     number;
   v_cnt             number default 0;
   v_obs_table_name  varchar(100);
   v_col_date        varchar(100);
   v_col_date_type   number;
   v_col_longitude   varchar(100);
   v_col_latitude    varchar(100);
begin
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
   
   -- Get the full name of the observation table for the job type 
   -- TODO find a way to verifiy if the table name is found aor is duplicated, and report back if not
   select distinct table_name
   into v_obs_table_name
   from field_lookup
   where data_type_index = v_index_field
   and upper(table_name) like ('%OBSERVATION%');
   dbms_output.put_line('v_obs_table_name: ' || v_obs_table_name);   
   
   -- Find out what are the columns that make and observation table: DATE_RECORDED, LONGITUDE, LATITUDE
   select distinct table_name
   into v_obs_table_name
   from field_lookup
   where data_type_index = v_index_field
   and upper(table_name) like ('%OBSERVATION%');
   dbms_output.put_line('v_obs_table_name: ' || v_obs_table_name);  
   
   
   
   
   -- find datatime, longitude, latitude columns
   -- select distinct on those generic columns found, using dyamic sql
   -- insert observation records
   -- using dynamic sql, read each observation and select the related data records
   -- prepare the insert for records found
   -- execute dynamic sql with inserts


end dev_parse_csv_data;