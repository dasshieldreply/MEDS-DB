declare
   v_stm          varchar2(4000);
   --v_ins1         varchar2(1000) default 'insert into glider_threaded_observation (location, meds_job_number, meds_observation_number, mid_latitude, mid_longitude, profile_id, profile_dir, distance_traveled, mid_time) values (sdo_geometry(2022, null, null, sdo_elem_info_array(1,2,1), sdo_ordinate_array(';
   --v_ins2         varchar2(1000) default 'insert into glider_threaded_data (meds_job_number, meds_observation_number, depth, temperature, temp_flag, salinity, sal_flag, sound_speed, density, chlorophyll, hydrocarbons, gelbstoffe, bioluminescence, longitude, latitude, date_recorded, point_order, bbp700) values (';
   --v_point_order  number default 0;
   p_job_number   number default 102587;
begin
   dbms_output. enable (buffer_size => null); 
   
   insert into front_satellite_observation 
   (
      meds_observation_number
   ,  meds_job_number
   ,  location
   ,  observered_date
   )
   select 
      row_number() over(order by to_number(b.col006), to_number(b.col001))
   ,  listagg(b.col010 || ',' || b.col009, ',') within group(order by to_number(b.col008)) as poligon -- longitude, latitude
   ,  to_date(to_char(b.col006),'DDMMYYYY') as observered_date
   from       stg_file         a
   inner join stg_file_csv_row b 
      on b.stg_file   = a.stg_file
   where a.job_number = p_job_number
   group by 
      a.stg_file
   ,  b.col001
   ,  b.col002
   ,  b.col003
   ,  b.col004
   ,  b.col005
   ,  b.col006
   order by 
      to_number(b.col006)
   ,  to_number(b.col001);
 
     insert into front_image_data (
      meds_observation_number
   ,  meds_job_number
   ,  point_type
   ,  frontal_gradient
   ,  frontal_depth
   ,  frontal_name
   ,  frontal_type
   ,  frontal_confidence
   ,  frontal_line_id
   ,  boundary_type
   ) 
    select 
      row_number() over(order by to_number(b.col006), to_number(b.col001))
   ,  p_job_number
   ,  null                 as point_type
   ,  null                 as frontal_gradient
   ,  b.col005             as frontal_depth   
   ,  b.col002             as frontal_name
   ,  b.col003             as frontal_type
   ,  null                 as frontal_confidence
   ,  to_number(b.col001)  as frontal_line_id
   ,  b.col004             as boundary_type
   from       stg_file         a
   inner join stg_file_csv_row b 
      on b.stg_file   = a.stg_file
   where a.job_number = p_job_number
   group by 
      a.stg_file
   ,  b.col001
   ,  b.col002
   ,  b.col003
   ,  b.col004
   ,  b.col005
   ,  b.col006
   order by 
      to_number(b.col006)
   ,  to_number(b.col001);
   
   insert into front_image_repeat 
   (
      latitude
   ,  longitude
   ,  confidence
   ,  strength
   ,  meds_job_number
   ,  meds_observation_number
   ,  point_order
   ,  vertex_id
   ) 
   select 
      b.col009 as latitude
   ,  b.col010 as longitude
   ,  b.col012 as confidence
   ,  b.col011 as strengh
   ,  p_job_number
   ,  c.meds_observation_number
   ,  rownum
   ,  b.col008 as vertexid
   from       stg_file           a
   inner join stg_file_csv_row   b 
      on  b.stg_file   = a.stg_file
   inner join front_image_data   c
      on  c.frontal_line_id   = b.col001
      and c.frontal_name      = b.col002
      and c.frontal_type      = b.col003
      and c.boundary_type     = b.col004
      and c.frontal_depth     = b.col005
      and observered_date     = to_date(to_char(b.col006),'DDMMYYYY')  
   where a.job_number = 102587
   order by 
      to_number(b.col006)
   ,  to_number(b.col001)
   ,  to_number(b.col008);
end;