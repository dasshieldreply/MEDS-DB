-- Sample job
select * from mlo_birds_observation where meds_job_number = 101332 ORDER BY 3;
select * from mlo_birds_data where meds_job_number = 101332;

select count(*) from mlo_birds_observation where meds_job_number = 101332;   --12
select count(*) from mlo_birds_data where meds_job_number = 101332;          --12

select * from meds_processing_job where job_number=101332;
SELECT * from job_lookups where type='Data Type' and usage = 'mlo_birds';

select * from field_lookup 
where data_type_index = 7
AND INCLUDE_IN_INPUT=1
order by table_name,field_position;

---------------------------------------------------------------------------------------------------------------
select * from meds_processing_job where job_number=102625;
select * from mlo_birds_observation where meds_job_number = 102625 order by meds_observation_number;
select * from mlo_birds_data where meds_job_number = 102625 order by meds_observation_number;


delete from mlo_birds_observation where meds_job_number = 102591;
delete from mlo_birds_data where meds_job_number = 102591;

SELECT * FROM MEDS_PROCESSING_HOB
