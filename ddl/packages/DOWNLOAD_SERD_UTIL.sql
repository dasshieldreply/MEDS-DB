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
      l_serd_record           serd_record;
      l_ship_details_record   ship_details%rowtype; 
      l_cruise_name           cruise_layer.cruise_name%type;      
      l_rec_no                number;
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
         order by b.meds_job_number
         ,        b.meds_observation_number
      )
      loop
      
         if f_rec.meds_ship_number is null then
            l_ship_details_record := null;
         else
            select * into l_ship_details_record
            from ship_details
            where meds_ship_number = f_rec.meds_ship_number;            
         end if;
         
         if f_rec.meds_cruise_number is null then
            l_cruise_name := null;
         else
            select cruise_name into l_cruise_name
            from cruise_layer
            where meds_cruise_number = f_rec.meds_cruise_number;
         end if;
         
         l_rec_no := 1;
         l_serd_record.record_data := 
            '000A201'                                       -- 1     Filler & record type
            || l_rec_no                                     -- 6     Sequential record number, 
            || f_rec.data_identifier                        -- 8     Data identifier (space)
            -- Basic Header                                          
            || ' '                                          -- 9     Data Use code (DUC)
            || ' '                                          -- 10    File code
            || f_rec.marsden_square                         -- 12    Marsden square
            || f_rec.degree_squre                           -- 15    Degree square
            || f_rec.string_location                        -- 17	   Geographical position in degrees and minutes (to tenths).
            || f_rec.quadrant                               -- 32	   Quadrant, ICES code (NE = 0, SE = 2, SW = 3 & NW = 1).
            || f_rec.posn_determination                     -- 33	   Position Determination MIAS code 
            || f_rec.posn_accuracy_code                     -- 34	   Position Accuracy code. 
            || f_rec.additional_posn_ref                    -- 35	   Additional positional reference.
            || nvl(to_char(f_rec.hood_archive_year),'  ')   -- 47	   Archive Year. Field used for data management by HO.
            || to_char(f_rec.date_time,'YYYYMMDD')          -- 49	   Date. Date observation collected.
            || to_char(f_rec.date_time,'HH24MI')            -- 57	   Time. Time observation collected (Greenwich Mean Time).
            || l_ship_details_record.country_code           -- 61	   Country code (ICES)
            || l_ship_details_record.ices_ship_code         -- 63	   Ship number, ICES code is used
            || l_ship_details_record.ices_ship_flag         -- 65	   Ship number code, if 1 inserted then the Ship number is ICES code.
            || l_cruise_name                                -- 66	   Originator's Cruise number.
            || f_rec.hood_station_number                    -- 74	   Station number in ascending order .
            || l_ship_details_record.mias_institute_code    -- 80	   Institute number, MIAS code normally used.
            || l_ship_details_record.mias_institute_flag    -- 83	   Institute number code, if it contains 1 it indicates the MIAS code has been used.
            || f_rec.land_check                             -- 84	   Land check indicator. Field used for data management by H0.
            || ' '                                          -- 85	   Filler, a space or 0.
            --|| f_rec.degree_squre                           -- 86	   Number of depth levels. Indicates how many depth levels are held on the record.
            ;
         pipe row (l_serd_record);
      end loop;
      
      return;      
   end download_sv_serd_file;  
   
end download_serd_util;
/
