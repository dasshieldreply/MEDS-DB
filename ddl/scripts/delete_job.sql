declare
   v_meic_number  number;
   v_job_number   number;
begin
   v_meic_number := :MEIC_number;
   
   select job_number into v_job_number from  meds_processing_job where meic_number = v_meic_number;
   
   for f_stg_file in (select stg_file from stg_file where job_number = v_job_number)
   loop
      delete from stg_file_serd_row where stg_file = f_stg_file.stg_file;
      delete from stg_file_csv_row  where stg_file = f_stg_file.stg_file;
   end loop;
   
   delete from ship_details where meds_ship_number in 
   (
       select meds_ship_number from profile_index_ts where meds_job_number=v_job_number
       union
       select meds_ship_number from profile_index_sv where meds_job_number=v_job_number
       union       
       select meds_ship_number from profile_index_tonly where meds_job_number=v_job_number
   );
   
   delete from stg_file where job_number = v_job_number;
   delete from meds_processing_job where job_number = v_job_number;
   
   delete from job_tracking where meic_number = v_meic_number;
   
   delete from profile_index_ts where meds_job_number=v_job_number;
   delete from profile_header_ts where meds_job_number=v_job_number;
   delete from profile_data_ts where meds_job_number=v_job_number;
   
   delete from profile_index_sv where meds_job_number=v_job_number;
   delete from profile_header_sv where meds_job_number=v_job_number;
   delete from profile_data_sv where meds_job_number=v_job_number;
   
   delete from profile_index_tonly where meds_job_number=v_job_number;
   delete from profile_header_tonly where meds_job_number=v_job_number;
   delete from profile_data_tonly where meds_job_number=v_job_number;
   
   commit;
end;