DECLARE
  P_JOB_NUMBER NUMBER;
  O_MEDS_SHIP_NUMBER NUMBER;
  O_MEDS_CRUISE_NUMBER NUMBER;
  O_INSTRUMENT_CODE NUMBER;
  O_DATA_USE_CODE NUMBER;
  O_FILE_CODE VARCHAR2(200);
BEGIN
  P_JOB_NUMBER := 102680;

  UPLOAD_SERD_UTIL.PARSE_SERD_DATA(
    P_JOB_NUMBER => P_JOB_NUMBER,
    O_MEDS_SHIP_NUMBER => O_MEDS_SHIP_NUMBER,
    O_MEDS_CRUISE_NUMBER => O_MEDS_CRUISE_NUMBER,
    O_INSTRUMENT_CODE => O_INSTRUMENT_CODE,
    O_DATA_USE_CODE => O_DATA_USE_CODE,
    O_FILE_CODE => O_FILE_CODE
  );
END;

select * from medsfilter order by label;

select * from stg_file where job_number=102680;
select * from stg_file_serd_row where stg_file=37591967859715116765670055867981663842;

select * from profile_index_tonly where meds_job_number=102680;
select hood_cruise_id from profile_header_tonly where meds_job_number=102680;
select * from profile_data_tonly where meds_job_number=102680;
select count(*) from profile_index_tonly where meds_job_number=102680;
select count(*) from profile_header_tonly where meds_job_number=102680;
select count(*) from profile_data_tonly where meds_job_number=102680;
