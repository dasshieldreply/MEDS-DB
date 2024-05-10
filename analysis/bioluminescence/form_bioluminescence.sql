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

select * from bioluminescence_observation where meds_job_number = 102624 order by meds_observation_number;
select * from bioluminescence_data where meds_job_number = 102624 order by meds_observation_number;


delete from bioluminescence_observation where meds_job_number = 102591;
delete from bioluminescence_data where meds_job_number = 102591;

--42.15188

select latitude,
   trunc(latitude,0),
   abs(mod(latitude,1)) * 60,
   mod(abs(mod(latitude,1)) * 3600, 60),
   trunc(mod(abs(mod(latitude,1)) * 3600, 60))
from bioluminescence_observation 
where meds_job_number = 102624 
and meds_observation_number = 1;
/*
37.24.96N   => 37.426667
015.55.18E  => 15.921667

D = 42
M = int(0.15188 x 60)
S = 0.15188 x 3600 mod 60
*/