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
      declare v_nbr number;
--    ----------------------------------------------------------------------------------------      
      begin
         -- Get the latest job_number from meds_processing_job
         select max(job_number) into v_nbr from meds_processing_job;
         dbms_output.put_line(v_nbr);
         --  Create new sequence for meds_processing_job
         execute immediate
            'create sequence job_number_sequence minvalue 1 maxvalue 999999999999999999999999999 increment by 1 start with ' ||
            v_nbr ||
            ' nocache  noorder  nocycle  nokeep  noscale  global';
      end;
      /
--    Alter meds_processing_job so the key is autoincremented
      alter table meds_processing_job modify job_number default job_number_sequence.nextval
--    ---------------------------------------------------------------------------------------- 
      begin
         -- Get the latest meds_ship_number from ship_detail 
         select max(meds_ship_number) into v_nbr from ship_details;
         dbms_output.put_line(v_nbr);
         -- Create new sequence for meds_ship_number
         execute immediate
            'create sequence meds_ship_number_sequence minvalue 1 maxvalue 999999999999999999999999999 increment by 1 start with ' ||
            v_nbr ||
            ' nocache  noorder  nocycle  nokeep  noscale  global';
      end;
      /
--    Alter ship_details so the key is autoincremented
      alter table ship_details modify meds_ship_number default meds_ship_number_sequence.nextval;
      /
--    ---------------------------------------------------------------------------------------- 
      begin
         -- Get the latest meds_cruise_number from cruise_layer 
         select max(meds_cruise_number) into v_nbr from cruise_layer;
         dbms_output.put_line(v_nbr);
         -- Create new sequence for meds_ship_number
         execute immediate
            'create sequence meds_cruise_number_sequence minvalue 1 maxvalue 999999999999999999999999999 increment by 1 start with ' ||
            v_nbr ||
            ' nocache  noorder  nocycle  nokeep  noscale  global';
      end;
      /
--    Alter cruise_layer so the key is autoincremented
      alter table cruise_layer modify meds_cruise_number default meds_cruise_number_sequence.nextval;
      /
--    ----------------------------------------------------------------------------------------      
--    Meic_Number_Sequence already exists in MEDS_ADMIN   
--    Alter job_tracking so the key is autoincremented. 
      alter table job_tracking modify meic_number default Meic_Number_Sequence.nextval
      /
-- ------------------------------------------------------------------------------------------------------------------
-- Populate security new tables
--
--
-- ------------------------------------------------------------------------------------------------------------------