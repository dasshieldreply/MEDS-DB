--SET SERVEROUTPUT ON;
--ALTER SESSION SET NLS_DATE_FORMAT = 'DD-MON-YYYY HH24:MI:SS';
/*
DECLARE
  P_JOB_NUMBER NUMBER;
BEGIN
   P_JOB_NUMBER := 102583;

  upload_util.parse_csv_data(
    p_job_number => p_job_number
  );
END;

DECLARE
  P_JOB_NUMBER NUMBER;
BEGIN
  P_JOB_NUMBER := 102583;

  UPLOAD_UTIL.parse_datatype_biomass(
    P_JOB_NUMBER => P_JOB_NUMBER
  );
END;

select * from BIOMASS_OBSERVATION where meds_job_number=102583 order by 1;
select count(*) from BIOMASS_OBSERVATION where meds_job_number=102583 ;
select * from BIOMASS_DATA where meds_job_number=102583 order by meds_observation_number;
select count(*) from BIOMASS_DATA where meds_job_number=102583;


delete from OMNI_AMBIENT_DATA where meds_job_number=102590;
*/
