-- Sample job
select * from adcp_observation where meds_job_number = 102176;
select * from adcp_data where meds_job_number = 102176;
select * from adcp_repeat where meds_job_number = 102176;
select count(*) from adcp_observation where meds_job_number = 102176;   --2596
select count(*) from adcp_data where meds_job_number = 102176;          --1298
select count(*) from adcp_repeat where meds_job_number = 102176;        --42336

-- Test job
select * from meds_processing_job where job_number=102591;
SELECT * from job_lookups where type='Data Type' and usage = 'ADCP';

select * from field_lookup 
where data_type_index = 88
AND INCLUDE_IN_INPUT=1
order by table_name,field_position;

select * from stg_file where job_number=102591;
select * from stg_file_csv_row where stg_file=30571455577445543339696262021468846829 order by row_sequence;
select * from stg_file_csv_row where stg_file=30552199614428794186223541659804249294 order by row_sequence;
select count(*) from stg_file_csv_row where stg_file=30571455577445543339696262021468846829; --657    .hdr
select count(*) from stg_file_csv_row where stg_file=30552199614428794186223541659804249294; --3933   .dat

