select * from meds_processing_job where job_number=102460;
SELECT * from job_lookups where type='Data Type' and usage = 'Glider_threaded';
select * from data_types_table;

select * from field_lookup 
where data_type_index = 16
AND INCLUDE_IN_INPUT=1
order by table_name,field_position;

select * from stg_file where job_number=102588;
select * from stg_file_csv_row where stg_file=30447970874638867972461094227036245014 order by row_sequence;
select count(*) from stg_file_csv_row where stg_file=30447970874638867972461094227036245014;

select distinct meds_job_number from glider_threaded_observation;
select distinct meds_job_number from glider_threaded_data;

ALTER SESSION SET NLS_DATE_FORMAT='DD-MON-YYYY HH24:MI:SS';

select * from omni_ambient_observation where meds_job_number=102460 order by meds_observation_number;           -- ONE OBSERVATION FOR EACH line, unique observation date, longitutde, latitude
select * from omni_ambient_data where meds_job_number=102460 order by meds_observation_number;
select count(*) from omni_ambient_observation where meds_job_number=102460 ;                --708
select count(*) from omni_ambient_data where meds_job_number=102460 ;                       --399

select a.* 
from omni_ambient_observation a 
where a.meds_job_number=102460 
and not exists (select 'x' 
                from omni_ambient_data b 
                where b.meds_job_number = a.meds_job_number 
                and   b.meds_observation_number = a.meds_observation_number);


select * from data_types_table;

with temp as
(select meds_observation_number,
   lead(meds_observation_number) over (order by meds_observation_number) l_meds_observation_number
 from omni_ambient_observation
 where meds_job_number=102460
)
select '[' || meds_observation_number ||' - '|| l_meds_observation_number ||']' result
From temp
where l_meds_observation_number - meds_observation_number > 1
order by meds_observation_number;