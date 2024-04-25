select * from meds_processing_job where job_number=101607;
SELECT * from job_lookups where type='Data Type' and usage = 'Glider_threaded';
select * from data_types_table;

select * from field_lookup 
where data_type_index = 92
AND INCLUDE_IN_INPUT=1
order by table_name,field_position;

select * from stg_file where job_number=102588;
select * from stg_file_csv_row where stg_file=30447970874638867972461094227036245014 order by row_sequence;
select count(*) from stg_file_csv_row where stg_file=30447970874638867972461094227036245014;

select distinct meds_job_number from glider_threaded_observation;
select distinct meds_job_number from glider_threaded_data;

ALTER SESSION SET NLS_DATE_FORMAT='DD-MON-YYYY HH24:MI:SS';

select * from glider_threaded_observation where meds_job_number=101607;                        -- ONE OBSERVATION FOR EACH line, unique observation has no date, dates are per data l ine
select * from glider_threaded_data where meds_job_number=101607 order by meds_observation_number;
select count(*) from glider_threaded_observation where meds_job_number=101607 ;                --1132
select count(*) from glider_threaded_data where meds_job_number=101607 ;                       --22561

select * from data_types_table;