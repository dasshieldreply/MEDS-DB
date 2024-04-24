select * from meds_processing_job where job_number=102586;
SELECT * from job_lookups where type='Data Type' and usage = 'BIOLOGICAL_CTD';
select * from data_types_table;

select * from field_lookup 
where data_type_index = 94
order by table_name,field_position;

select * from stg_file where job_number=102586;
select * from stg_file_csv_row where stg_file=30274084739756421960812489584837025731 order by row_sequence;
select count(*) from stg_file_csv_row where stg_file=30274084739756421960812489584837025731;


select distinct meds_job_number from aquapack_profile_observation;
select distinct meds_job_number from aquapack_profile_data;

ALTER SESSION SET NLS_DATE_FORMAT='DD-MON-YYYY HH24:MI:SS';

select * from meds_processing_job where job_number=102533;
select * from aquapack_profile_observation where meds_job_number=102533;                        -- ONE OBSERVATION FOR EACH DAATE RECORDED
select * from aquapack_profile_data where meds_job_number=102533 order by meds_observation_number;
select count(*) from aquapack_profile_observation where meds_job_number=102533 ;                --14
select count(*) from aquapack_profile_data where meds_job_number=102533 ;                       --163966
