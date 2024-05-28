CREATE OR REPLACE FORCE EDITIONABLE VIEW "MEDSADMIN"."V_MAP_TONLY_OBSERVATION"  
AS 
   with param as
   (
      select a.*
      from   v_map_filter_criteria a
      where  a.medsfilter = nv('P200_MEDSFILTER')
   )
   select p.icon
   ,      p.color
   ,      a.meds_job_number
   ,      a.meds_observation_number
   ,      a.location
   ,      a.latitude
   ,      a.longitude
   ,      to_char(a.date_time,'dd Mon yyyy') label_date
   ,      b.description                      label_instrument 
   ,      a.number_of_depth_levels            
   ,      a.minimum_depth_level
   ,      a.maximum_depth_level
   from   param               p
   ,      profile_index_tonly a
   ,      instrument          b
   where  a.meds_job_number = p.meds_job_number
   and    a.date_time       between p.date_start and p.date_end
   and    b.ocean           = a.instrument_code
;

