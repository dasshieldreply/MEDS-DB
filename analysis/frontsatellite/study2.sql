     for f_obs in 
      (
         select 
            row_number() over(order by to_number(b.col006), to_number(b.col001))                 as observation
         ,  listagg(b.col010 || ', ' || b.col009, ', ') within group(order by to_number(b.col008)) as poligon      -- longitude, latitude
         ,  b.col006   as observered_date
         ,  a.stg_file
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
         ,  to_number(b.col001)
      ) loop
      
         v_stm := v_ins1 
               || f_obs.poligon
               || ')), '
               || p_job_number            || ', '
               || f_obs.observation       || ', ' 
               || 'to_date(to_char('      
               || f_obs.observered_date
               || '),' || CHR(39) || 'DDMMYYYY' || CHR(39) || '))';
         
         dbms_output.put_line(v_stm);
         --execute immediate v_stm;



      insert into front_satellite_observation 
      (
         meds_observation_number
      ,  meds_job_number
      ,  location
      ,  observered_date
      )
      select 
         row_number() over(order by to_number(b.col006), to_number(b.col001))
      ,  p_job_number
      ,  sdo_geometry(2002, null, null, sdo_elem_info_array(1, 2, 1), sdo_ordinate_array(listagg(b.col010 || ',' || b.col009, ',') within group(order by to_number(b.col008)))) -- longitude, latitude
      ,  to_date(to_char(b.col006),'DDMMYYYY') 
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