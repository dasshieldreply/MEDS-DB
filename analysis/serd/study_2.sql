ALTER SESSION SET NLS_DATE_FORMAT='DD-MON-YYYY HH24:MI:SS';

select * from stg_file where job_number = 102589;
select * from stg_file_serd_row where stg_file = 30993878339334963181291093484775326951 order by row_sequence;
select * from v_stg_serd_row_main where stg_file = 30993878339334963181291093484775326951 order by row_sequence;

select depthtoseabed from v_stg_serd_row_main where stg_file = 30993878339334963181291093484775326951 order by row_sequence;

select * from profile_index_sv where meds_job_number = 102595 order by meds_observation_number;
select * from profile_header_sv where meds_job_number = 102595 order by meds_observation_number;
select * from profile_data_sv where meds_job_number = 102595 order by meds_observation_number;

select count(*) from profile_index_sv where meds_job_number = 102595 ;
select count(*) from profile_header_sv where meds_job_number = 102595 ;
select count(*) from profile_data_sv where meds_job_number = 102595 ;

delete from profile_index_sv where meds_job_number = 102595 ;
delete from profile_header_sv where meds_job_number = 102595 ;
delete from profile_data_sv where meds_job_number = 102595 ;

select meic_number from meds_processing_job where job_number = 102589;
select supplier from job_tracking where meic_number = 7364;
select * from ship_details;


