-- Create new tables
--    stg_file
--    stg_file_csv_row
--    sth_file_serd_row
--    medsdomain
--    medsplayer
--    medsrole
--    medsuser
--    medsuser_medsdomain
-- -----------------------------------------------------------------------------------------------------------------
-- Create new views
--    v_job_tracking (b?)
--    v_medsplayer
--    v_medsuser
--    v_medsuser_medsdomain
--    v_cmuser_medsdomain_string
--    v_cmuser_medsrole_string
--    v_stg_serd_row_main
--    v_stg_serd_row_continuation
--
-- -----------------------------------------------------------------------------------------------------------------
-- Add new columns to existing tables
--    Job tracking 
--       job_data_type, char(1 byte), nullable
--    Update content new field
--       All job_tracking records with job types 1 (SV Probes), 2 (CTD)and 8(XBT) are SERD (job_data_type = 'S') (confirm other codes)
--       All ot
-- ------------------------------------------------------------------------------------------------------------------
-- Prepare sequences, so they are not dependant of application code anymore
--
--    Get the latest job_number from meds_processing_job 
--       select max(job_number) from meds_processing_job;
--    Create new sequence for meds_processing_job, using latest job number
          create sequence job_number_sequence  minvalue 1 maxvalue 999999999999999999999999999 increment by 1 start with 102534 nocache  noorder  nocycle  nokeep  noscale  global 
          /
--    Alter meds_processing_job so the key is autoincremented
         alter table meds_processing_job modify job_number default job_number_sequence.nextval
         /
--    Alter job_tracking so the key is autoincremented 
         alter table job_tracking modify meic_number default Meic_Number_Sequence.nextval
         /
-- ------------------------------------------------------------------------------------------------------------------
-- Populate security new tables
--
--
-- ------------------------------------------------------------------------------------------------------------------