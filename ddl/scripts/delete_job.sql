declare
   v_meic_number  number;
   v_job_number   number;
begin
   v_meic_number := 7297;
   
   select job_number into v_job_number from  meds_processing_job where meic_number = v_meic_number;
   
   for f_stg_file in (select stg_file from stg_file where job_number = v_job_number)
   loop
      delete from stg_file_serd_row where stg_file = f_stg_file.stg_file;
      delete from stg_file_csv_row  where stg_file = f_stg_file.stg_file;
   end loop;
   
   delete from stg_file where job_number = v_job_number;
   delete from meds_processing_job where job_number = v_job_number;
   
   delete from job_tracking where meic_number = v_meic_number;
end;