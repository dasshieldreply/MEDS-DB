select * from stg_file where job_number = 102589;
select * from stg_file_serd_row where stg_file = 30451187845059375363398854534096408255 order by row_sequence;

select * from v_stg_serd_row_main 
where stg_file = 30451187845059375363398854534096408255 
order by row_sequence;

select * from instrument 
where ocean = 16;

-- Intrument.Data_Type
-- 1: temperature
-- 2: temperature and salinity
-- 3: solve velocity
select * from observation where job_number in(101901,100167,102341,101901,100167,102341,101901,100167,102341);