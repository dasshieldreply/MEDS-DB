CREATE OR REPLACE package download_serd_util
as
   type serd_record  is record (
      record_data    varchar2(4000));
      
   type serd_table   is table of serd_record;
      
   function download_sv_serd_file
   (
      p_medsfilter   number
   ) 
   return serd_table
   pipelined;
 
end download_serd_util;
/

CREATE OR REPLACE package body download_serd_util
as

   function download_sv_serd_file
   (
      p_medsfilter   number
   )
   return serd_table
   PIPELINED
   is
      l_serd_record  serd_record;
      l_rec_no       number;
   begin
   
      for f_rec in 
      (
         select b.*
         ,      c.additional_posn_ref
         ,      c.atmospheric_pressure
         ,      c.cloud
         ,      c.data_identifier
         ,      c.data_method
         ,      c.data_mode
         ,      c.data_type
         ,      c.dry_air_temp
         ,      c.d_corr
         ,      c.file_filler
         ,      c.hood_cruise_id
         ,      c.hood_station_number
         ,      c.land_check
         ,      c.posn_accuracy_code
         ,      c.posn_determination
         ,      c.sea_state
         ,      c.sv_corr
         ,      c.s_corr
         ,      c.s_scale_code
         ,      c.t_corr
         ,      c.units
         ,      c.water_colour
         ,      c.water_trans
         ,      c.wave_height
         ,      c.wave_period
         ,      c.weather
         ,      c.wet_air_temp
         ,      c.wind_dir
         ,      c.wind_speed
         ,      (select count(*) from profile_data_sv d where d.meds_job_number = b.meds_job_number and d.meds_observation_number = b.meds_observation_number) no_depth
         from   v_filter_meds_job_number  a
         ,      profile_index_sv          b
         ,      profile_header_sv         c
         where  a.medsfilter              = p_medsfilter
         and    a.label_layer             = 'SOUND VELOCITY'
         and    b.meds_job_number         = a.meds_job_number
         and    c.meds_job_number         = b.meds_job_number
         and    c.meds_observation_number = b.meds_observation_number
      )
      loop
         l_rec_no := 1;
         l_serd_record.record_data := 
            '000A201'                  -- Filler & record type
            || l_rec_no                -- Sequential record number, 
            || f_rec.data_identifier   -- Data identifier (space)
            -- Basic Header
            || ' '                     -- Data Use code (DUC)
            || ' '                     -- File code
            || f_rec.marsden_square    -- Marsden square
            || f_rec.degree_squre      -- Degree square
            ;
         pipe row (l_serd_record);
      end loop;
      
      return;      
   end download_sv_serd_file;  
   
end download_serd_util;
/
