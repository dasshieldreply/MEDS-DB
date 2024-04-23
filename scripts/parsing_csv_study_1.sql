select * from meds_processing_job where job_number=102586;
SELECT * from job_lookups where type='Data Type' and usage = 'BIOMASS';
select * from data_types_table;

select * from field_lookup 
where data_type_index = 16
order by table_name,field_position;

select * from stg_file where stg_file=29637123586303579758142188515056352802;
select * from stg_file_csv_row where stg_file=29637123586303579758142188515056352802 order by row_sequence;
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
select * from data_types_table 
