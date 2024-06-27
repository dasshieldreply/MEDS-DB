create or replace force editionable view "medsadmin"."v_unified_secchi" as 
   select o.meds_observation_number   
   ,      o.meds_job_number               
   ,      o.location                      
   ,      o.date_recorded                  
   ,      o.latitude                      
   ,      o.longitude
   ,      'SO-1'           src
   from   secchi_disk_observation o
   ,      secchi_disk_data d 
   where  o.meds_job_number = d.meds_job_number 
   and    o.meds_observation_number = d.meds_observation_number 
   and    d.secchi_depth is not null 
   and    d.water_colour is null 
   and    d.water_colour_h631a is null 
   union  all
   select o.meds_observation_number   
   ,      o.meds_job_number               
   ,      o.location                      
   ,      o.date_recorded                  
   ,      o.latitude                      
   ,      o.longitude
   ,      'SO-2'           src
   from   secchi_disk_observation o
   ,      secchi_disk_data d
   ,      secchi_water_colour_lookup s 
   where  o.meds_job_number = d.meds_job_number 
   and    o.meds_observation_number = d.meds_observation_number 
   and    (
            d.water_colour = s.secchi_colour_name 
            or 
            (
               d.water_colour is null 
               and 
               d.water_colour_h631a = s.secchi_colour_h631a_scale 
               and 
               s.secchi_colour_name is null
            )
          )
   union  all
   -- repeat for each set of PROFILE tables...
   -- SV...
   select i.meds_observation_number      
   ,      i.meds_job_number               
   ,      i.location               
   ,      i.date_time                  
   ,      i.latitude                       
   ,      i.longitude
   ,      'SV-1'       src 
   from   profile_index_sv i
   ,      profile_header_sv h
   ,      meds_processing_job j 
   where	 decode(to_number(trim(h.water_trans)),null,0,to_number(trim(h.water_trans))) > 0
   and 	 decode(to_number(trim(h.water_colour)),null,0,to_number(trim(h.water_colour))) = 0 
   and 	 i.meds_job_number = h.meds_job_number 
   and    i.meds_observation_number = h.meds_observation_number 
   and    j.job_number = h.meds_job_number 
   union  all
   select i.meds_observation_number      
   ,      i.meds_job_number               
   ,      i.location               
   ,      i.date_time                  
   ,      i.latitude                       
   ,      i.longitude
   ,      'SV-2'       src 
   from   profile_index_sv i
   ,      profile_header_sv h
   ,      meds_processing_job j 
   where  decode(to_number(trim(h.water_colour)),null,0,to_number(trim(h.water_colour))) > 0 
   and 	 i.meds_job_number = h.meds_job_number 
   and    i.meds_observation_number = h.meds_observation_number 
   and 	 j.job_number = h.meds_job_number
   union  all
   -- TONLY...
   select i.meds_observation_number      
   ,      i.meds_job_number               
   ,      i.location               
   ,      i.date_time                  
   ,      i.latitude                       
   ,      i.longitude
   ,      'TONLY-1'       src 
   from   profile_index_tonly i
   ,      profile_header_tonly h
   ,      meds_processing_job j 
   where	 decode(to_number(trim(h.water_trans)),null,0,to_number(trim(h.water_trans))) > 0
   and 	 decode(to_number(trim(h.water_colour)),null,0,to_number(trim(h.water_colour))) = 0 
   and 	 i.meds_job_number = h.meds_job_number 
   and    i.meds_observation_number = h.meds_observation_number 
   and    j.job_number = h.meds_job_number 
   union  all
   select i.meds_observation_number      
   ,      i.meds_job_number               
   ,      i.location               
   ,      i.date_time                  
   ,      i.latitude                       
   ,      i.longitude
   ,      'TONLY-2'       src 
   from   profile_index_tonly i
   ,      profile_header_tonly h
   ,      meds_processing_job j 
   where  decode(to_number(trim(h.water_colour)),null,0,to_number(trim(h.water_colour))) > 0 
   and 	 i.meds_job_number = h.meds_job_number 
   and    i.meds_observation_number = h.meds_observation_number 
   and 	 j.job_number = h.meds_job_number
   union  all
   -- TS...
   select i.meds_observation_number      
   ,      i.meds_job_number               
   ,      i.location               
   ,      i.date_time                  
   ,      i.latitude                       
   ,      i.longitude
   ,      'TS-1'       src 
   from   profile_index_ts i
   ,      profile_header_ts h
   ,      meds_processing_job j 
   where	 decode(to_number(trim(h.water_trans)),null,0,to_number(trim(h.water_trans))) > 0
   and 	 decode(to_number(trim(h.water_colour)),null,0,to_number(trim(h.water_colour))) = 0 
   and 	 i.meds_job_number = h.meds_job_number 
   and    i.meds_observation_number = h.meds_observation_number 
   and    j.job_number = h.meds_job_number 
   union  all
   select i.meds_observation_number      
   ,      i.meds_job_number               
   ,      i.location               
   ,      i.date_time                  
   ,      i.latitude                       
   ,      i.longitude
   ,      'TONLY-2'       src 
   from   profile_index_ts i
   ,      profile_header_ts h
   ,      meds_processing_job j 
   where  decode(to_number(trim(h.water_colour)),null,0,to_number(trim(h.water_colour))) > 0 
   and 	 i.meds_job_number = h.meds_job_number 
   and    i.meds_observation_number = h.meds_observation_number 
   and 	 j.job_number = h.meds_job_number
;   