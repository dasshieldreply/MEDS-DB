declare
   type index_rec    is record(
		comments				      varchar2(640)
   ,	date_time				   date
   ,	meds_job_number			number
   ,	meds_cruise_number		number
   ,	instrument_code			number
   ,	meds_observation_number	number
   ,	observed_depth			   number
   ,	minimum_depth_level		number
   ,	maximum_depth_level		number
   ,	number_of_depth_levels	number
   ,	marsden_square			   number
   ,	quadrant				      number
   ,	degree_square			   number
   ,	duplicate_flag			   number
   ,	year					      number
   ,	no_of_comments			   number
   ,	hood_archive_year		   number
   ,	string_location			varchar2(15)
   ,	latitude				      number
   ,	longitude				   number
   ,	meds_ship_number		   number
   ,	month					      number);
   
   
   
   type index_tab is table of index_rec
      index by binary_integer;
   
   v_tab    index_tab;
   v_idx    binary_integer default 0;
   p_job_number   number default 102589;
   
begin
   dbms_output. enable (buffer_size => null); 
   
   -- Each main record is an observation
   for f_row in (select a.*, rownum as idx from v_stg_serd_row_main a where a.stg_file = 30993878339334963181291093484775326951 order by a.row_sequence)
   loop
      v_tab(f_row.idx).comments				      := f_row.commentcontent;
      v_tab(f_row.idx).date_time				      := to_date(f_row.observationdate || f_row.observationtime , 'YYYYMMDDHH24MI');
      v_tab(f_row.idx).meds_job_number			   := p_job_number;
      --v_tab(f_row.idx).meds_cruise_number		   := f_row.
      v_tab(f_row.idx).instrument_code			   := f_row.instrumentcode;
      --v_tab(f_row.idx).meds_observation_number	:= f_row.
      --v_tab(f_row.idx).observed_depth			   := f_row.depthtoseabed;
      v_tab(f_row.idx).minimum_depth_level		:= f_row.observationdepthmin;
      v_tab(f_row.idx).maximum_depth_level		:= f_row.observationdepthmax;
      v_tab(f_row.idx).number_of_depth_levels	:= f_row.depthlevelcount;
      v_tab(f_row.idx).marsden_square			   := f_row.marsdensquare;
      v_tab(f_row.idx).quadrant				      := f_row.quadrant;
      v_tab(f_row.idx).degree_square			   := f_row.degreesquare;
      --v_tab(f_row.idx).duplicate_flag			:= f_row.
      --v_tab(f_row.idx).year					      := f_row.
      v_tab(f_row.idx).no_of_comments			   := f_row.commentcount;
      --v_tab(f_row.idx).hood_archive_year		   := f_row.archiveyear;
      --v_tab(f_row.idx).string_location			   := f_row.
      --v_tab(f_row.idx).latitude				      := f_row.
      --v_tab(f_row.idx).longitude				      := f_row.
      --v_tab(f_row.idx).meds_ship_number		   := f_row.
      --v_tab(f_row.idx).month					      := f_row.     
   end loop;
   
   for v_idx in 1..v_tab.count
   loop
      dbms_output.put_line('marsden_square: ' 			|| v_tab(v_idx).marsden_square);
      dbms_output.put_line('comments: ' 				   || v_tab(v_idx).comments);
      dbms_output.put_line('date_time: ' 				|| v_tab(v_idx).date_time);
      dbms_output.put_line('meds_job_number: ' 		|| v_tab(v_idx).meds_job_number);
      dbms_output.put_line('instrument_code: ' 		|| v_tab(v_idx).instrument_code);
      dbms_output.put_line('observed_depth: '  		|| v_tab(v_idx).observed_depth);
      dbms_output.put_line('minimum_depth_level: ' 	|| v_tab(v_idx).minimum_depth_level);
      dbms_output.put_line('maximum_depth_level: ' 	|| v_tab(v_idx).maximum_depth_level);
      dbms_output.put_line('number_of_depth_levels: ' || v_tab(v_idx).number_of_depth_levels);
      dbms_output.put_line('marsden_square: ' 			|| v_tab(v_idx).marsden_square);
      dbms_output.put_line('quadrant: ' 				   || v_tab(v_idx).quadrant);
      dbms_output.put_line('degree_square: ' 			|| v_tab(v_idx).degree_square);
      dbms_output.put_line('no_of_comments: ' 			|| v_tab(v_idx).no_of_comments);
      dbms_output.put_line('hood_archive_year: ' 		|| v_tab(v_idx).hood_archive_year);
      dbms_output.put_line('string_location: ' 		|| v_tab(v_idx).string_location);
      dbms_output.put_line('-----------------------------------');      
   end loop;      
  
end;
