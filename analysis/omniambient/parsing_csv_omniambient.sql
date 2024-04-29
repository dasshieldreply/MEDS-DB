select * from meds_processing_job where job_number=102460;
SELECT * from job_lookups where type='Data Type' and usage = 'OMNI_AMBIENT';

select * from field_lookup 
where data_type_index = 16
AND INCLUDE_IN_INPUT=1
order by table_name,field_position;

select * from stg_file where job_number=102590;
select * from stg_file_csv_row where stg_file=30447970874638867972461094227036245014 order by row_sequence;
select count(*) from stg_file_csv_row where stg_file=30447970874638867972461094227036245014;

ALTER SESSION SET NLS_DATE_FORMAT='DD-MON-YYYY HH24:MI:SS';

select * from omni_ambient_observation where meds_job_number=102460 order by meds_observation_number;           -- ONE OBSERVATION FOR EACH line, unique observation date, longitutde, latitude
select * from omni_ambient_data where meds_job_number=102460 order by meds_observation_number;
select count(*) from omni_ambient_observation where meds_job_number=102460 ;                --708
select count(*) from omni_ambient_data where meds_job_number=102460 ;                       --399

select a.* 
from omni_ambient_observation a 
where a.meds_job_number=102460 
and not exists (select 'x' 
                from omni_ambient_data b 
                where b.meds_job_number = a.meds_job_number 
                and   b.meds_observation_number = a.meds_observation_number);

select * from omni_ambient_observation where meds_job_number=102590 order by meds_observation_number;      
select * from omni_ambient_data where meds_job_number=102590 order by meds_observation_number;

select count(*) from omni_ambient_observation where meds_job_number=102590 ;                --1246
select count(*) from omni_ambient_data where meds_job_number=102590 ;                       --1228
--
delete from OMNI_AMBIENT_OBSERVATION where meds_job_number=102590;
delete from OMNI_AMBIENT_DATA where meds_job_number=102590;


ALTER SESSION SET NLS_DATE_FORMAT = 'DD-MON-YYYY HH24:MI:SS';

DECLARE
  P_JOB_NUMBER NUMBER;
BEGIN
  P_JOB_NUMBER := 102590;

  UPLOAD_UTIL.parse_datatype_omni_ambient(
    P_JOB_NUMBER => P_JOB_NUMBER
  );
END;

select 
   col006
,  col005
,  null
,  to_date(col001 || ' ' || col002, 'dd/mm/yyyy hh24:mi:ss') 
,  row_number() over(order by col001,col002,col005,col006)
from  stg_file_csv_row
where stg_file = 30552059115501127984179035179582121755
group by col001
,  col002
,  col005
,  col006;

select 
   a.col005
,	a.col006
,  b.longitude
,  b.latitude
,  b.meds_observation_number
,  b.meds_job_number
from       stg_file_csv_row         a
inner join omni_ambient_observation b 
   on  b.meds_job_number = 102590 
   and b.date_recorded   = to_date(col001 || ' ' || col002, 'dd/mm/yyyy hh24:mi:ss') 
   and b.longitude       = a.col005 
   and b.latitude        = a.col006
where a.stg_file=30552059115501127984179035179582121755
order by b.meds_observation_number;



select * 
from omni_ambient_observation  
where meds_job_number = 102590
and meds_observation_number = 846;

-0.0827778
-0.082778

-0.0827778

select * 
from stg_file_csv_row
where stg_file=30552059115501127984179035179582121755
and col005 like '-0.0%';