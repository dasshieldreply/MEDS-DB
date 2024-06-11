CREATE OR REPLACE package download_serd_util
as
   type serd_record  is record (
      record_data    varchar2(4000));
      
   type serd_table   is table of serd_record;

   function download_ts_serd_file
   (
      p_medsfilter   number
   ) 
   return serd_table
   pipelined;

   function download_sv_serd_file
   (
      p_medsfilter   number
   ) 
   return serd_table
   pipelined;
   
   function download_tonly_serd_file
   (
      p_medsfilter   number
   ) 
   return serd_table
   pipelined;

   function get_serd_file
   (
      p_medsfilter   number,
      p_serd_type    varchar2
   )
   return clob;
   
end download_serd_util;
/
CREATE OR REPLACE package body download_serd_util
as
   g_package constant varchar2(31) := $$plsql_unit || '.';
   
   function download_tonly_serd_file
   (
      p_medsfilter   number
   )
   return serd_table
   pipelined
   is
      l_serd_record  serd_record; 
      l_record_no    number default 0;
   begin
   
      for f_obs in 
      (
         select medsfilter
         ,      meds_job_number
         ,      meds_observation_number
         from v_d_serd_main_tonly
         where medsfilter = p_medsfilter
         order by meds_job_number
         ,        meds_observation_number
      )
      loop
         l_record_no := 1;
  
         for f_rec in 
         (
            select a.*
            ,  b.row_no       as data_row_no
            ,  b.row_depth_no as data_row_no_depths
            ,  b.row_vl       as data_row_vl
            from        v_d_serd_main_tonly   a
            inner join  v_d_serd_data_tonly   b 
               on b.medsfilter               = a.medsfilter
               and b.meds_job_number         = a.meds_job_number
               and b.meds_observation_number = a.meds_observation_number
            where a.medsfilter               = f_obs.medsfilter
            and   a.meds_job_number          = f_obs.meds_job_number
            and   a.meds_observation_number  = f_obs.meds_observation_number
            order by b.row_no
         )
         loop
            
            if l_record_no = 1 then 
               l_serd_record.record_data := '000A2' || to_char(l_record_no,'fm00') || substr(f_rec.row_vl,1,78) || to_char(f_rec.data_row_no_depths,'fm00') || substr(f_rec.row_vl,81) || f_rec.data_row_vl;
            else
               l_serd_record.record_data := '000A2' || to_char(l_record_no,'fm00') || substr(f_rec.row_vl,1,78) || to_char(f_rec.data_row_no_depths,'fm00') || f_rec.data_row_vl;               
            end if;
            l_record_no := l_record_no + 1;
            pipe row (l_serd_record);        
         end loop;
      end loop;
      
      return;      
   end download_tonly_serd_file;   
   
   function download_sv_serd_file
   (
      p_medsfilter   number
   )
   return serd_table
   pipelined
   is
      l_serd_record  serd_record; 
      l_record_no    number default 0;
   begin
   
      for f_obs in 
      (
         select medsfilter
         ,      meds_job_number
         ,      meds_observation_number
         from v_d_serd_main_sv
         where medsfilter = p_medsfilter
         order by meds_job_number
         ,        meds_observation_number
      )
      loop
         l_record_no := 1;
  
         for f_rec in 
         (
            select a.*
            ,  b.row_no       as data_row_no
            ,  b.row_depth_no as data_row_no_depths
            ,  b.row_vl       as data_row_vl
            from        v_d_serd_main_sv   a
            inner join  v_d_serd_data_sv   b 
               on b.medsfilter               = a.medsfilter
               and b.meds_job_number         = a.meds_job_number
               and b.meds_observation_number = a.meds_observation_number
            where a.medsfilter               = f_obs.medsfilter
            and   a.meds_job_number          = f_obs.meds_job_number
            and   a.meds_observation_number  = f_obs.meds_observation_number
            order by b.row_no
         )
         loop
            
            if l_record_no = 1 then 
               l_serd_record.record_data := '000A2' || to_char(l_record_no,'fm00') || substr(f_rec.row_vl,1,78) || to_char(f_rec.data_row_no_depths,'fm00') || substr(f_rec.row_vl,81) || f_rec.data_row_vl;
            else
               l_serd_record.record_data := '000A2' || to_char(l_record_no,'fm00') || substr(f_rec.row_vl,1,78) || to_char(f_rec.data_row_no_depths,'fm00') || f_rec.data_row_vl;               
            end if;
            l_record_no := l_record_no + 1;
            pipe row (l_serd_record);        
         end loop;
      end loop;
      
      return;      
   end download_sv_serd_file;     

   function download_ts_serd_file
   (
      p_medsfilter   number
   )
   return serd_table
   pipelined
   is
      l_serd_record  serd_record; 
      l_record_no    number default 0;
   begin
   
      for f_obs in 
      (
         select medsfilter
         ,      meds_job_number
         ,      meds_observation_number
         from v_d_serd_main_ts
         where medsfilter = p_medsfilter
         order by meds_job_number
         ,        meds_observation_number
      )
      loop
         l_record_no := 1;
  
         for f_rec in 
         (
            select a.*
            ,  b.row_no       as data_row_no
            ,  b.row_depth_no as data_row_no_depths
            ,  b.row_vl       as data_row_vl
            from        v_d_serd_main_ts   a
            inner join  v_d_serd_data_ts   b 
               on b.medsfilter               = a.medsfilter
               and b.meds_job_number         = a.meds_job_number
               and b.meds_observation_number = a.meds_observation_number
            where a.medsfilter               = f_obs.medsfilter
            and   a.meds_job_number          = f_obs.meds_job_number
            and   a.meds_observation_number  = f_obs.meds_observation_number
            order by b.row_no
         )
         loop
            
            if l_record_no = 1 then 
               l_serd_record.record_data := '000A2' || to_char(l_record_no,'fm00') || substr(f_rec.row_vl,1,78) || to_char(f_rec.data_row_no_depths,'fm00') || substr(f_rec.row_vl,81) || f_rec.data_row_vl;
            else
               l_serd_record.record_data := '000A2' || to_char(l_record_no,'fm00') || substr(f_rec.row_vl,1,78) || to_char(f_rec.data_row_no_depths,'fm00') || f_rec.data_row_vl;               
            end if;
            l_record_no := l_record_no + 1;
            pipe row (l_serd_record);        
         end loop;
      end loop;
      
      return;      
   end download_ts_serd_file;  

   function get_serd_file
   (
      p_medsfilter   number,
      p_serd_type    varchar2
   )
   return clob
   is
      l_serd_table   serd_table;
      l_serd_clob    clob;
      l_params       logger.tab_param; 
      l_scope        constant varchar2(61) := g_package||'get_serd_file';
   begin
      logger.append_param   (p_params  => l_params
                            ,p_name    => 'p_medsfilter'
                            ,p_val     => p_medsfilter); 
      logger.append_param   (p_params  => l_params
                            ,p_name    => 'p_serd_type'
                            ,p_val     => p_serd_type); 
      logger.log_information(p_text    => 'Start' 
                            ,p_scope   => l_scope 
                            ,p_params  => l_params 
                            ); 
      
      dbms_lob.createtemporary(l_serd_clob, TRUE, DBMS_LOB.SESSION);
      
      if upper(p_serd_type) = 'SV' then  
      
         for rec in 
         (
            select * 
            bulk collect into l_serd_table
            from table(download_sv_serd_file(p_medsfilter))
         ) 
         loop
            dbms_lob.writeappend(l_serd_clob, length(rec.record_data) + 1, rec.record_data || chr(10));
         end loop;
         
      elsif upper(p_serd_type) = 'TONLY' then
      
         for rec in 
         (
            select * 
            bulk collect into l_serd_table
            from table(download_tonly_serd_file(p_medsfilter))   
         ) 
         loop
            dbms_lob.writeappend(l_serd_clob, length(rec.record_data) + 1, rec.record_data || chr(10));
         end loop;
         
      elsif upper(p_serd_type) = 'TS' then
      
         for rec in 
         (
            select * 
            bulk collect into l_serd_table
            from table(download_ts_serd_file(p_medsfilter))   
         ) 
         loop
            dbms_lob.writeappend(l_serd_clob, length(rec.record_data) + 1, rec.record_data || chr(10));
         end loop;
         
      else
         return null;
      end if;
      
      logger.log_information(p_text  => 'End' 
                            ,p_scope => l_scope);    

      return l_serd_clob; 
      
      exception 
         when others then 
            logger.log_error('Unhandled exception', l_scope, null, l_params); 
            --logger.set_level(p_level   => 2 ); 
   end get_serd_file;   

end download_serd_util;
/
