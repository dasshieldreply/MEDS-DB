SET SERVEROUTPUT ON;
ALTER SESSION SET NLS_DATE_FORMAT = 'DD-MON-YYYY HH24:MI:SS';
/*
DECLARE
  P_JOB_NUMBER NUMBER;
BEGIN
   P_JOB_NUMBER := 102586;

  upload_util.parse_csv_data(
    p_job_number => p_job_number
  );
END;

DECLARE
  P_JOB_NUMBER NUMBER;
  P_STG_FILE   NUMBER;
BEGIN
  P_JOB_NUMBER := 102583;
  P_STG_FILE := 30249666142767843558582721545394354234;

  UPLOAD_UTIL.PARSE_DATATYPE_89(
    P_JOB_NUMBER => P_JOB_NUMBER,
    P_STG_FILE   => P_STG_FILE
  );
  
  EXECUTE IMMEDIATE upload_util.parse_datatype_89(p_job_number => 102583,p_stg_file => 30249666142767843558582721545394354234);
END;

select * from BIOMASS_OBSERVATION where meds_job_number=102583 order by 1;
select count(*) from BIOMASS_OBSERVATION where meds_job_number=102583 ;
select * from BIOMASS_DATA where meds_job_number=102583 order by meds_observation_number;
select count(*) from BIOMASS_DATA where meds_job_number=102583;

delete from BIOMASS_OBSERVATION where meds_job_number=102583;
delete from BIOMASS_DATA where meds_job_number=102583;
*/
