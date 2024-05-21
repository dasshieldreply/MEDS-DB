select * from meds_processing_job where job_number=102586;
SELECT * from job_lookups where type='Data Type' and usage = 'BIOMASS';

select * from field_lookup 
where data_type_index = 89
order by table_name,field_position;

select * from stg_file where job_number=102583;
select * from stg_file_csv_row where stg_file=30249666142767843558582721545394354234 order by row_sequence;
/*
BIOMASS_DATA
UPPER_DEPTH	            2	5 COL005          2 - Floating Point Value
LOWER_DEPTH	            2	6 COL006          2 - Floating Point Value
TOTAL_DISPLACEMENT_VOL	2	7 COL007          2 - Floating Point Value
TOTAL_SETTLED_VOLUME 	2	8                 2 - Floating Point Value
TOTAL_WET_MASS       	2	9                 2 - Floating Point Value
TOTAL_DRY_MASS	         2	10                2 - Floating Point Value

BIOMASS_OBSERVATION
LOCATION	               11	0                 11 - MD_SYS.SDO_GEOMETRY Field - Point
MEDS_OBSERVATION_NUMBER	9	0                 9 - MEDS Observation Number
MEDS_JOB_NUMBER	      8	0                 8 - MEDS Job Number
DATE_RECORDED	         5	1 COL001/COL002   5 - Date and Time as consecutive fields            matches 
LATITUDE	               12	3 COL003          12 - Latitude/Longitude as Floating Point Value    matches 
LONGITUDE	            12	4 COL004          12 - Latitude/Longitude as Floating Point Value    matches
*/
select * from data_types_table ;

/*
observation seems to be at every datetime/longitude/latitude/UPPER_DEPTH/LOWER_DEPTH

17/06/1981,23:19:00,30.00000000,-34.04000000,900.000,1000.000,0.01000000,,,
17/06/1981,23:19:00,30.00000000,-34.04000000,900.000,1000.000,0.00300000,,,
18/06/1981,00:19:00,30.00000000,-34.08000000,1000.000,1100.000,0.00300000,,,
18/06/1981,00:19:00,30.00000000,-34.08000000,1000.000,1100.000,0.00500000,,,
18/06/1981,02:34:00,29.90000000,-34.16000000,200.000,300.000,0.00900000,,,
18/06/1981,02:34:00,29.90000000,-34.16000000,200.000,300.000,0.00300000,,,
18/06/1981,03:36:00,29.90000000,-34.20000000,300.000,400.000,0.00200000,,,
18/06/1981,03:36:00,29.90000000,-34.20000000,300.000,400.000,0.01100000,,,
18/06/1981,04:34:00,29.90000000,-34.23800000,400.000,505.000,0.00900000,,,
18/06/1981,04:34:00,29.90000000,-34.23800000,400.000,505.000,0.00400000,,,
*/

select distinct meds_job_number from BIOMASS_OBSERVATION;
select distinct meds_job_number from BIOMASS_DATA;

select * from meds_processing_job where job_number=68822;
select * from BIOMASS_OBSERVATION where meds_job_number=68822 order by 1;
select * from BIOMASS_DATA where meds_job_number=68822 order by meds_observation_number;
select count(*) from BIOMASS_OBSERVATION where meds_job_number=68822 order by 1;                   --832
select count(*) from BIOMASS_DATA where meds_job_number=68822 order by meds_observation_number;    --832

select * from BIOMASS_OBSERVATION where meds_job_number=68822 order by 1;
select * from BIOMASS_DATA where meds_job_number=68822 order by meds_observation_number;
--select * from BIOMASS_OBSERVATION where meds_job_number=68822 order by 1;
--select * from BIOMASS_DATA where meds_job_number=68822 order by meds_observation_number;

select * from BIOMASS_OBSERVATION where meds_job_number=102583 order by 1;
select count(*) from BIOMASS_OBSERVATION where meds_job_number=102583 order by 1;
select count(*) from BIOMASS_DATA where meds_job_number=102583 ;

delete from BIOMASS_OBSERVATION where meds_job_number=102583;
delete from BIOMASS_DATA where meds_job_number=102583;

/*
select 
   row_number() over(order by b.col001, b.col002, b.col003, b.col004)
,  102583
,  SDO_GEOMETRY(2001, null, SDO_POINT_TYPE(b.col004, b.col003, NULL), NULL, NULL) -- Longitude, latitude
,  to_date(b.col001 || ' ' || b.col002, 'dd/mm/yyyy hh24:mi:ss') 
,  b.col003
,  b.col004
from       stg_file         a
inner join stg_file_csv_row b 
   on b.stg_file   = a.stg_file
where a.job_number = 102583
group by 
   b.col001
,  b.col002
,  b.col003
,  b.col004;
 */
 
select 
   b.col005
,  b.col006
,  b.col007
,  b.col008
,  b.col009
,  b.col010
,  a.job_number
,  c.meds_observation_number
,  c.latitude
,  c.longitude
,  b.col003
,  b.col004
from       stg_file            a
inner join stg_file_csv_row    b 
   on b.stg_file         = a.stg_file
inner join biomass_observation c 
   on  c.meds_job_number = a.job_number 
   and c.date_recorded   = to_date(b.col001 || ' ' || b.col002, 'dd/mm/yyyy hh24:mi:ss') 
   and c.latitude        = b.col003 
   and c.longitude       = b.col004 
where a.job_number       = 102583
order by c.meds_observation_number;      

      select 
         a.col005
      ,  a.col006
      ,  a.col007
      ,  a.col008
      ,  a.col009
      ,  a.col010
      ,  p_job_number
      ,  b.meds_observation_number
      from       stg_file_csv_row    a
      inner join biomass_observation b 
         on  b.meds_job_number = p_job_number 
         and b.date_recorded   = to_date(a.col001 || ' ' || a.col002, 'dd/mm/yyyy hh24:mi:ss') 
         and b.latitude        = a.col003 
         and b.longitude       = a.col004 
      where a.stg_file=p_stg_file
      order by b.meds_observation_number;

      