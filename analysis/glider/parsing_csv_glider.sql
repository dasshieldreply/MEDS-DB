select * from meds_processing_job where job_number=101607;
SELECT * from job_lookups where type='Data Type' and usage = 'Glider_threaded';
select * from data_types_table;

select * from field_lookup 
where data_type_index = 92
AND INCLUDE_IN_INPUT=1
order by table_name,field_position;

select * from stg_file where job_number=102588;
select * from stg_file_csv_row where stg_file=30447970874638867972461094227036245014 order by row_sequence;
select count(*) from stg_file_csv_row where stg_file=30447970874638867972461094227036245014;

select distinct meds_job_number from glider_threaded_observation;
select distinct meds_job_number from glider_threaded_data;

ALTER SESSION SET NLS_DATE_FORMAT='DD-MON-YYYY HH24:MI:SS';

select * from glider_threaded_observation where meds_job_number=101607;                        -- ONE OBSERVATION FOR EACH line, unique observation has no date, dates are per data l ine
select * from glider_threaded_observation where meds_job_number=101607 and meds_observation_number <> profile_id; -- meds_observation is populated from profile_id
select * from glider_threaded_data where meds_job_number=101607 order by meds_observation_number;
select * from glider_threaded_data where meds_job_number=101607 and pressure <> 0;

select count(*) from glider_threaded_observation where meds_job_number=101607 ;                --1132
select count(*) from glider_threaded_data where meds_job_number=101607 ;                       --22561

select * from glider_threaded_observation where meds_job_number=102588;
select * from glider_threaded_data where meds_job_number=102588 order by meds_observation_number ;
select count(*) from glider_threaded_observation where meds_job_number=102588 ;                
select count(*) from glider_threaded_data where meds_job_number=102588 ;
select distinct date_recorded from glider_threaded_data where meds_job_number=102588 ;

--delete from glider_threaded_observation where meds_job_number=102588 ;                
--delete from glider_threaded_data where meds_job_number=102588 ;

/*
GLIDER_THREADED_DATA	MEDS_JOB_NUMBER	      0	8
GLIDER_THREADED_DATA	MEDS_OBSERVATION_NUMBER	0	9
GLIDER_THREADED_DATA	LATITUDE	               1	12
GLIDER_THREADED_DATA	LONGITUDE	            2	12
GLIDER_THREADED_DATA	DATE_RECORDED	         3	5
GLIDER_THREADED_DATA	DEPTH	                  5	2
GLIDER_THREADED_DATA	TEMPERATURE	            6	2
GLIDER_THREADED_DATA	TEMP_FLAG	            7	2
GLIDER_THREADED_DATA	SALINITY	               8	2
GLIDER_THREADED_DATA	SAL_FLAG	               9	3
GLIDER_THREADED_DATA	SOUND_SPEED	            10	2
GLIDER_THREADED_DATA	DENSITY	               11	2
GLIDER_THREADED_DATA	POINT_ORDER	            13	34
GLIDER_THREADED_DATA	HYDROCARBONS	         19	2
GLIDER_THREADED_DATA	GELBSTOFFE	            20	2
GLIDER_THREADED_DATA	BIOLUMINESCENCE	      21	2
GLIDER_THREADED_DATA	CHLOROPHYLL	            22	2
GLIDER_THREADED_DATA	BBP700	               23	2

GLIDER_THREADED_OBSERVATION	MEDS_JOB_NUMBER	      0	8
GLIDER_THREADED_OBSERVATION	MEDS_OBSERVATION_NUMBER	0	9
GLIDER_THREADED_OBSERVATION	LOCATION	               0	27
GLIDER_THREADED_OBSERVATION	PROFILE_DIR	            12	3
GLIDER_THREADED_OBSERVATION	PROFILE_ID	            13	3
GLIDER_THREADED_OBSERVATION	DISTANCE_TRAVELED	      15	3
GLIDER_THREADED_OBSERVATION	MID_LATITUDE	         16	12
GLIDER_THREADED_OBSERVATION	MID_LONGITUDE	         17	12
GLIDER_THREADED_OBSERVATION	MID_TIME	               18	2
*/

select 
   null
,  'meds_job_number'   
,  col013 -- profile_id is taken as observation
,  col012
,  col013
,  col015
,  col016
,  col017
,  col018
from  stg_file_csv_row
where stg_file = 30447970874638867972461094227036245014
group by 
   col012
,  col013
,  col015
,  col016
,  col017
,  col018
order by 3;

select to_date(to_char(col003),'DDMMYYYY')
from  stg_file_csv_row
where stg_file = 30447970874638867972461094227036245014
order by 1;

