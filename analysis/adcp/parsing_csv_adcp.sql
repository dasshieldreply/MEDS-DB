-- Sample job
select * from adcp_observation where meds_job_number = 102176 ORDER BY 3;
select * from adcp_data where meds_job_number = 102176;
select * from adcp_repeat where meds_job_number = 102176;
select count(*) from adcp_observation where meds_job_number = 102176;   --1298
select count(*) from adcp_data where meds_job_number = 102176;          --1298
select count(*) from adcp_repeat where meds_job_number = 102176;        --42336

/*
delete from adcp_observation where meds_job_number = 102176;
delete from adcp_data where meds_job_number = 102176;
delete from adcp_repeat where meds_job_number = 102176;
*/
-- Test job
select * from meds_processing_job where job_number=102591;
SELECT * from job_lookups where type='Data Type' and usage = 'ADCP';

select * from field_lookup 
where data_type_index = 88
AND INCLUDE_IN_INPUT=1
order by table_name,field_position;

select * from stg_file where job_number=102591;
select * from stg_file_csv_row where stg_file=30571455577445543339696262021468846829 order by row_sequence;
select * from stg_file_csv_row where stg_file=30552199614428794186223541659804249294 order by row_sequence;
select count(*) from stg_file_csv_row where stg_file=30571455577445543339696262021468846829; --657    .hdr
select count(*) from stg_file_csv_row where stg_file=30552199614428794186223541659804249294; --3933   .dat


select count(distinct col010)--col006,col005,col003,col010
from stg_file_csv_row 
where stg_file=30571455577445543339696262021468846829 
order by row_sequence;

select * from adcp_observation where meds_job_number = 102591 ORDER BY 3;
select * from adcp_data where meds_job_number = 102591;
select * from adcp_repeat where meds_job_number = 102591;
select count(*) from adcp_observation where meds_job_number = 102591;   --657    --657
select count(*) from adcp_data where meds_job_number = 102591;          --657    --657
select count(*) from adcp_repeat where meds_job_number = 102591;        --3933   --3933
select count(distinct profile) from adcp_observation where meds_job_number = 102591; --657

delete from adcp_observation where meds_job_number = 102591;
delete from adcp_data where meds_job_number = 102591;

select distinct col001 from stg_file_csv_row where stg_file=30552199614428794186223541659804249294 order by 1;

select 
   a.job_number
,  c.meds_observation_number
,  b.col002
,  b.col004
,  b.col005
,  b.col006
,  b.col007
,  b.col008
,  b.col009
,  b.col010
,  b.col011
,  b.col003
,  b.col012
,  b.col001
from       stg_file            a
inner join stg_file_csv_row    b 
   on b.stg_file         = a.stg_file
inner join adcp_observation    c 
   on  c.meds_job_number = a.job_number 
   and to_char(c.profile)         = b.col001
where a.job_number       = 102591
and   lower(a.filename) like '%.dat'
order by 
   c.meds_observation_number
,  c.profile;
