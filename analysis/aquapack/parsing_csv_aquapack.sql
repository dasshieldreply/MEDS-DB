select * from meds_processing_job where job_number=102586; --Steve job 102533

select * from field_lookup 
where data_type_index = 94
and include_in_input=1
order by table_name,field_position;

select * from stg_file where job_number=102586;
select * from stg_file_csv_row where stg_file=29637123586303579758142188515056352802 order by row_sequence;
/*
AQUAPACK_PROFILE_DATA	      MEDS_JOB_NUMBER	      0	8
AQUAPACK_PROFILE_DATA	      MEDS_OBSERVATION_NUMBER	0	9
AQUAPACK_PROFILE_DATA	      PRESSURE	               6	2
AQUAPACK_PROFILE_DATA	      DEPTH	                  7	2
AQUAPACK_PROFILE_DATA	      TEMPERATURE	            8	2
AQUAPACK_PROFILE_DATA	      CONDUCTIVITY	         9	2
AQUAPACK_PROFILE_DATA	      SALINITY	               10	2
AQUAPACK_PROFILE_DATA	      SOUND_SPEED	            11	2
AQUAPACK_PROFILE_DATA	      HYDROCARBONS	         12	2
AQUAPACK_PROFILE_DATA	      GELBSTOFFE	            13	2
AQUAPACK_PROFILE_DATA	      CHLOROPHYLL	            14	2
AQUAPACK_PROFILE_DATA	      BIOLUMINESCENCE	      15	2
AQUAPACK_PROFILE_DATA	      TURBIDITY	            16	2
AQUAPACK_PROFILE_DATA	      PROFILE_ID	            17	13
AUAPACK_PROFILE_OBSERVATION	MEDS_JOB_NUMBER	      0	8
AQUAPACK_PROFILE_OBSERVATION	MEDS_OBSERVATION_NUMBER	0	9
AQUAPACK_PROFILE_OBSERVATION	LOCATION	               0	11
AQUAPACK_PROFILE_OBSERVATION	DATE_RECORDED	         1	5
AQUAPACK_PROFILE_OBSERVATION	LATITUDE	               3	12
AQUAPACK_PROFILE_OBSERVATION	LONGITUDE	            4	12
AQUAPACK_PROFILE_OBSERVATION	SEABED_DEPTH	         5	3
*/
select * from aquapack_profile_observation where meds_job_number=102533;
select count(*) from aquapack_profile_observation where meds_job_number=102533;
select * from aquapack_profile_data where meds_job_number=102533;
select * from aquapack_profile_data where meds_job_number=102533 and meds_observation_number <> profile_id;
select count(*) from aquapack_profile_data where meds_job_number=102533;

select * from aquapack_profile_observation where meds_job_number=102586;
select count(*) from aquapack_profile_observation where meds_job_number=102586;
select * from aquapack_profile_data where meds_job_number=102586;
select count(*) from aquapack_profile_data where meds_job_number=102586;


select 
   null
,  102586
,  col017 -- profile_id
,  col004
,  col003
,  to_date(col001 || ' ' || col002, 'dd/mm/yyyy hh24:mi:ss') 
,  col005
from  stg_file_csv_row
where stg_file = 30274084739756421960812489584837025731
group by col017
,  col001
,  col002
,  col003
,  col004
,  col005
order by 1, 6,4, 5;
