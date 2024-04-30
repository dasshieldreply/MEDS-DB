declare
   p_job_number   number default 102589;
   v_idx          number default 0;
begin
   dbms_output. enable (buffer_size => null); 
   
   -- Each main record is an observation
   for f_row in 
   (
      select 
         b.*
      from stg_file        a
      inner join v_stg_serd_row_main b 
         on b.stg_file = a.stg_file
      where a.job_number = p_job_number
      order by b.row_sequence
   )
   loop
      v_idx := v_idx + 1;
      
      dbms_output.put_line('observation: ' 		   || v_idx);   
      dbms_output.put_line('depth levels: ' 		   || f_row.depthlevelcount);
      dbms_output.put_line('--------------------------');      
   end loop;      

end;
