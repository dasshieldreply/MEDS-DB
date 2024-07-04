--SET SERVEROUTPUT ON;
--ALTER SESSION SET NLS_DATE_FORMAT = 'DD-MON-YYYY HH24:MI:SS';
/*
DECLARE
  P_JOB_NUMBER NUMBER;
BEGIN
   P_JOB_NUMBER := 102681;

  upload_csv_util.parse_csv_data(
    p_job_number => p_job_number
  );
END;

DECLARE
  P_JOB_NUMBER NUMBER;
BEGIN
  P_JOB_NUMBER := 102681;

  UPLOAD_UTIL.parse_datatype_aquapack(
    P_JOB_NUMBER => P_JOB_NUMBER
  );
END;
*/

select * from job_lookups where type = 'Data Type' order by usage;
select data_type from meds_processing_job where job_number=102681;
select * from stg_file where job_number=102681;
select * from stg_file_csv_row where stg_file=37767976892713524902094549928624418551;
select * from aquapack_profile_data where meds_job_number=102681;