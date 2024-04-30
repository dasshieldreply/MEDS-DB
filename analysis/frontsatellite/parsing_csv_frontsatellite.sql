select * from FRONT_IMAGE_DATA where meds_job_number=101747 ;                                  --414
select * from FRONT_SATELLITE_OBSERVATION where meds_job_number=101747 ;                       --414
select count(*) from FRONT_IMAGE_REPEAT where meds_job_number=101747 ;                                --24532
select count(distinct point_order) from FRONT_IMAGE_REPEAT where meds_job_number=101747 ; 

select * from meds_processing_job where job_number=102587;
SELECT * from job_lookups where type='Data Type' and usage = 'Front_satellite';
select * from data_types_table;

select * from field_lookup 
where data_type_index = 82
and include_in_input = 1
order by table_name,field_position;

select * from stg_file where job_number=102587;
select * from stg_file_csv_row where stg_file=30368899952223649903181712319979383618 order by row_sequence;
select count(*) from stg_file_csv_row where stg_file=30368899952223649903181712319979383618; --12122

select distinct meds_job_number from FRONT_SATELLITE_OBSERVATION;
select distinct meds_job_number from FRONT_IMAGE_DATA;
select distinct meds_job_number from FRONT_IMAGE_REPEAT;

ALTER SESSION SET NLS_DATE_FORMAT='DD-MON-YYYY HH24:MI:SS';

select * from FRONT_SATELLITE_OBSERVATION where meds_job_number=102587 order by meds_observation_number;                         
select * from FRONT_IMAGE_DATA where meds_job_number=102587 order by meds_observation_number;                
select * from FRONT_IMAGE_REPEAT where meds_job_number=102587 order by meds_observation_number, point_order; 

select count(*) from FRONT_SATELLITE_OBSERVATION where meds_job_number=102587 ;     --800     --               
select count(*) from FRONT_IMAGE_DATA where meds_job_number=102587 ;                --800     --
select count(*) from FRONT_IMAGE_REPEAT where meds_job_number=102587 ;              --12123   -- 

delete from FRONT_SATELLITE_OBSERVATION where meds_job_number=102587 ;               
delete from FRONT_IMAGE_DATA where meds_job_number=102587 ;  
delete from FRONT_IMAGE_REPEAT where meds_job_number=102587 ;              


select count(*) from (select distinct point_order from FRONT_IMAGE_REPEAT where meds_job_number=101747 group by point_order);  --24532

/*
FRONT_IMAGE_DATA	MEDS_OBSERVATION_NUMBER	0	9	1
FRONT_IMAGE_DATA	MEDS_JOB_NUMBER	      0	8	1
FRONT_IMAGE_DATA	FRONTAL_LINE_ID	      1	3	0
FRONT_IMAGE_DATA	FRONTAL_NAME	         2	1	0
FRONT_IMAGE_DATA	FRONTAL_TYPE	         3	1	0
FRONT_IMAGE_DATA	BOUNDARY_TYPE	         4	1	0
FRONT_IMAGE_DATA	FRONTAL_DEPTH	         5	1	0

FRONT_IMAGE_REPEAT	MEDS_JOB_NUMBER	      0	8	1
FRONT_IMAGE_REPEAT	MEDS_OBSERVATION_NUMBER	0	9	1
FRONT_IMAGE_REPEAT	POINT_ORDER	            1	34	1              34 - Point Order -  Ordering of Points for Polygons and Lines
FRONT_IMAGE_REPEAT	VERTEX_ID	            8	1	1
FRONT_IMAGE_REPEAT	LATITUDE	               9	12	1
FRONT_IMAGE_REPEAT	LONGITUDE	            10	12	1
FRONT_IMAGE_REPEAT	STRENGTH	               11	1	1
FRONT_IMAGE_REPEAT	CONFIDENCE	            12	1	1

FRONT_SATELLITE_OBSERVATION	LOCATION	               0	27	1     27 - MD_SYS.SDO_GEOMETRY Field - Line
FRONT_SATELLITE_OBSERVATION	MEDS_JOB_NUMBER	      0	8	1
FRONT_SATELLITE_OBSERVATION	MEDS_OBSERVATION_NUMBER	0	9	1
FRONT_SATELLITE_OBSERVATION	OBSERVERED_DATE	      6	22	0     22 - Date Only Field (no time)

*/


      select  
         b.col009 
      ,  b.col010 
      ,  b.col012 
      ,  b.col011
      ,  102587
      ,  (
            select c.meds_observation_number 
            from front_image_data c 
            where c.frontal_line_id = b.col001
            and c.frontal_name      = b.col002
            and c.frontal_type      = b.col003
            and c.boundary_type     = b.col004
            and c.frontal_depth     = b.col005
         ) as observation
      ,  rownum                     -- POINT_ORDER is over the totality of the csv file
      ,  b.col008 
      from       stg_file           a
      inner join stg_file_csv_row   b 
         on  b.stg_file          = a.stg_file
      where a.job_number = 102587
      order by 
         to_number(b.col006)
      ,  to_number(b.col001)
      ,  to_number(b.col008);
      
      