ALTER SESSION SET NLS_DATE_FORMAT='DD-MON-YYYY HH24:MI:SS';

select * from stg_file where job_number = 102596;
select * from stg_file_serd_row where stg_file = 31293096452954863842311160529446150626 order by row_sequence;
select * from v_stg_serd_row_main where stg_file = 31293096452954863842311160529446150626 order by row_sequence;

select depthtoseabed from v_stg_serd_row_main where stg_file = 30993878339334963181291093484775326951 order by row_sequence;
--------------------------------------------------------------------------------------------------------
select * from profile_index_sv where meds_job_number = 102595 order by meds_observation_number;
select * from profile_header_sv where meds_job_number = 102595 order by meds_observation_number;
select * from profile_data_sv where meds_job_number = 102595 order by meds_observation_number;

select count(*) from profile_index_sv where meds_job_number = 102595 ;
select count(*) from profile_header_sv where meds_job_number = 102595 ;
select count(*) from profile_data_sv where meds_job_number = 102595 ;

delete from profile_index_sv where meds_job_number = 102595 ;
delete from profile_header_sv where meds_job_number = 102595 ;
delete from profile_data_sv where meds_job_number = 102595 ;
commit;
--------------------------------------------------------------------------------------------------------
select * from profile_index_tonly where meds_job_number = 102596 order by meds_observation_number;
select * from profile_header_tonly where meds_job_number = 102596 order by meds_observation_number;
select * from profile_data_tonly where meds_job_number = 102596 and meds_observation_number=2 order by depth;--order by meds_observation_number;

select count(*) from profile_index_tonly where meds_job_number = 102596 ;  --71        --71
select count(*) from profile_header_tonly where meds_job_number = 102596 ; --71        --71
select count(*) from profile_data_tonly where meds_job_number = 102596 ;   --3479   -- 54017

delete from profile_index_tonly where meds_job_number = 102596 ;
delete from profile_header_tonly where meds_job_number = 102596 ;
delete from profile_data_tonly where meds_job_number = 102596 ;
commit;
--------------------------------------------------------------------------------------------------------
select * from profile_index_ts where meds_job_number = 102597 order by meds_observation_number;
select * from profile_header_ts where meds_job_number = 102597 order by meds_observation_number;
select * from profile_data_ts where meds_job_number = 102597 order by meds_observation_number;

select count(*) from profile_index_ts where meds_job_number = 102597 ;
select count(*) from profile_header_ts where meds_job_number = 102597 ;
select count(*) from profile_data_ts where meds_job_number = 102597 ;

delete from profile_index_ts where meds_job_number = 102597 ;
delete from profile_header_ts where meds_job_number = 102597 ;
delete from profile_data_ts where meds_job_number = 102597 ;
commit;
