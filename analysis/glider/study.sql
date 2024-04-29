declare
   v_stm          varchar2(4000);
   v_ins1         varchar2(1000) default 'insert into glider_threaded_observation (location, meds_job_number, meds_observation_number, mid_latitude, mid_longitude, profile_id, profile_dir, distance_traveled, mid_time) values (sdo_geometry(2022, null, null, sdo_elem_info_array(1,2,1), sdo_ordinate_array(';
   v_ins2         varchar2(1000) default 'insert into glider_threaded_data (meds_job_number, meds_observation_number, depth, temperature, temp_flag, salinity, sal_flag, sound_speed, density, chlorophyll, hydrocarbons, gelbstoffe, bioluminescence, longitude, latitude, date_recorded, point_order, bbp700) values (';
   v_point_order  number default 0;
   p_job_number   number default 102588;
begin
   dbms_output.enable(buffer_size => null); 
   
   for f_obs in 
   (
      select 
         b.col012 as profile_dir
      ,  b.col013 as profile_id
      ,  b.col015 as distance_traveled
      ,  b.col016 as mid_latitude
      ,  b.col017 as mid_longitude
      ,  b.col018 as mid_time
      ,  listagg(b.col002 || ', ' || b.col001, ',') within group(order by rownum) as poligon
      ,  a.stg_file 
      from       stg_file         a
      inner join stg_file_csv_row b 
         on b.stg_file   = a.stg_file
      where a.job_number = p_job_number
      group by 
         a.stg_file
      ,  b.col012
      ,  b.col013
      ,  b.col015
      ,  b.col016
      ,  b.col017
      ,  b.col018
      order by 2
   ) loop
      --dbms_output.put_line(f_obs.profile_dir || f_obs.profile_id || f_obs.mid_latitude || f_obs.mid_time);
      v_stm := v_ins1 
      || f_obs.poligon
      || ')),'
      || p_job_number            || ','
      || f_obs.profile_id        || ',' -- profile_id is unique, serving as observation
      || f_obs.mid_latitude      || ','
      || f_obs.mid_longitude     || ','
      || f_obs.profile_id        || ','
      || f_obs.profile_dir       || ','
      || f_obs.distance_traveled || ','
      || f_obs.mid_time 
      || ')';
      
      --dbms_output.put_line(v_stm);
      execute immediate v_stm;
     
      for f_dat in 
      (       
         select 
            nvl(a.col005, 'null') as depth
         ,  nvl(a.col006, 'null') as temperature      
         ,  nvl(a.col007, 'null') as temp_flag
         ,  nvl(a.col008, 'null') as salinity    
         ,  nvl(a.col009, 'null') as sal_flag    
         ,  nvl(a.col010, 'null') as sound_speed    
         ,  nvl(a.col011, 'null') as density    
         ,  nvl(a.col022, 'null') as chlorophyll   
         ,  nvl(a.col019, 'null') as hydrocarbons    
         ,  nvl(a.col020, 'null') as gelbstoffe    
         ,  nvl(a.col021, 'null') as bioluminescence    
         ,  nvl(a.col001, 'null') as latitude 
         ,  nvl(a.col002, 'null') as longitude    
         ,  nvl(a.col023, 'null') as bbp700  
         ,  'to_date(' || chr(39) || a.col003 || chr(39) || ',' || chr(39) || 'DDMMYYYY' || chr(39) || ')' as date_recorded 
         from stg_file_csv_row  a
         where a.stg_file = f_obs.stg_file 
         and   a.col012   = f_obs.profile_dir 
         and   a.col013   = f_obs.profile_id
         order by a.col005
      ) loop
            v_point_order := v_point_order + 1;
            
            v_stm := v_ins2 
            || p_job_number          || ','
            || f_obs.profile_id      || ',' -- unique, server as observation
            || f_dat.depth           || ','
            || f_dat.temperature     || ','
            || f_dat.temp_flag       || ','
            || f_dat.salinity        || ','
            || f_dat.sal_flag        || ','
            || f_dat.sound_speed     || ','
            || f_dat.density         || ','
            || f_dat.chlorophyll     || ','
            || f_dat.hydrocarbons    || ','
            || f_dat.gelbstoffe      || ','
            || f_dat.bioluminescence || ','
            || f_dat.longitude       || ','
            || f_dat.latitude        || ','
            || f_dat.date_recorded   || ','
            || v_point_order         || ',' 
            || f_dat.bbp700            
            || ')';

            execute immediate v_stm;   
            --dbms_output.put_line(v_stm);           
      end loop;
   end loop;
end;

