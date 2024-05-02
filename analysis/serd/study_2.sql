ALTER SESSION SET NLS_DATE_FORMAT='DD-MON-YYYY HH24:MI:SS';

select * from stg_file where job_number = 102589;
select * from stg_file_serd_row where stg_file = 30993878339334963181291093484775326951 order by row_sequence;
select * from v_stg_serd_row_main where stg_file = 30993878339334963181291093484775326951 order by row_sequence;

select depthtoseabed from v_stg_serd_row_main where stg_file = 30993878339334963181291093484775326951 order by row_sequence;

select * from profile_index_sv where meds_job_number = 102589 order by meds_observation_number;
select * from profile_header_sv where meds_job_number = 102589 order by meds_observation_number;
select * from profile_data_ts where meds_job_number = 102589 order by meds_observation_number;