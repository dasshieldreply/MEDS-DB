-- there are three types with table name AQUAPACK_PROFILE_DATA
select distinct data_type_index from field_lookup where table_name = 'AQUAPACK_PROFILE_DATA';

-- None of the description or usage, matches the description in the list (Biological CTD data), which would relate to the sample 7173_aquapack_profile_data.csv: 
SELECT * from job_lookups where type='Data Type' and index_field in (14, 11, 94);

-- If using BIOLOGICAL_CTD, because it is the only .csv in the list (94)
select * from field_lookup 
where data_type_index = 94
order by table_name,field_position;



