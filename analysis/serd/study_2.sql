select * from stg_file where job_number = 102589;
select * from stg_file_serd_row where stg_file = 30993878339334963181291093484775326951 order by row_sequence;
select 
   depthlevelcount,
   row_depth_content
from v_stg_serd_row_main where stg_file = 30993878339334963181291093484775326951 order by row_sequence;

