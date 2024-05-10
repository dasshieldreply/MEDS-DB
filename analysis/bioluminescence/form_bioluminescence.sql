-- Sample job
select * from bioluminescence_observation where meds_job_number = 101332 ORDER BY 3;
select * from bioluminescence_data where meds_job_number = 101332;

select count(*) from bioluminescence_observation where meds_job_number = 101332;   --12
select count(*) from bioluminescence_data where meds_job_number = 101332;          --12

select * from meds_processing_job where job_number=101332;
SELECT * from job_lookups where type='Data Type' and usage = 'BIOLUMINESCENCE';

select * from field_lookup 
where data_type_index = 7
AND INCLUDE_IN_INPUT=1
order by table_name,field_position;

---------------------------------------------------------------------------------------------------------------

select * from bioluminescence_observation where meds_job_number = 102624 ORDER BY 3;
select * from bioluminescence_data where meds_job_number = 102624;


delete from bioluminescence_observation where meds_job_number = 102591;
delete from bioluminescence_data where meds_job_number = 102591;


