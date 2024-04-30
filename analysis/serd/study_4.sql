declare
   p_job_number   number default 102589;
   
begin
   dbms_output. enable (buffer_size => null); 
   
   -- Each main record is an observation
   for f_row in 
   (
      select 
         b.*
      , rownum as idx 
      from stg_file        a
      inner join v_stg_serd_row_main b 
         on b.stg_file = a.stg_file
      where a.job_number = p_job_number
      order by b.row_sequence
   )
   loop
      dbms_output.put_line('marsden_square: ' 		   || f_row.marsden_square);
      dbms_output.put_line('comments: ' 				   || f_row.comments);
      dbms_output.put_line('date_time: ' 				   || f_row.date_time);
      dbms_output.put_line('meds_job_number: ' 		   || f_row.meds_job_number);
      dbms_output.put_line('instrument_code: ' 		   || f_row.instrument_code);
      dbms_output.put_line('observed_depth: '  		   || f_row.observed_depth);
      dbms_output.put_line('minimum_depth_level: ' 	|| f_row.minimum_depth_level);
      dbms_output.put_line('maximum_depth_level: ' 	|| f_row.maximum_depth_level);
      dbms_output.put_line('number_of_depth_levels: ' || f_row.number_of_depth_levels);
      dbms_output.put_line('marsden_square: ' 			|| f_row.marsden_square);
      dbms_output.put_line('quadrant: ' 				   || f_row.quadrant);
      dbms_output.put_line('degree_square: ' 			|| f_row.degree_square);
      dbms_output.put_line('no_of_comments: ' 			|| f_row.no_of_comments);
      dbms_output.put_line('hood_archive_year: ' 		|| f_row.hood_archive_year);
      dbms_output.put_line('string_location: ' 		   || f_row.string_location);
      dbms_output.put_line('--------------------------');      
   end loop;      

end;
