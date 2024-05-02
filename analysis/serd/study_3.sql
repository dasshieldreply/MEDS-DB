select * from profile_header_sv order by meds_observation_number;
select * from profile_index_sv order by meds_observation_number;
select * from profile_data_ts order by meds_observation_number;
select count(*) from profile_header_sv;
select count(*) from profile_index_sv;
select count(*) from profile_data_sv;

select * from meds_processing_job where job_number in (101901, 100167, 102341); 
select * from job_tracking where meic_number in (5676, 6830, 7114);

