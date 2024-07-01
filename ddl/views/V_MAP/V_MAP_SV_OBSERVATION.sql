CREATE OR REPLACE FORCE EDITIONABLE VIEW "MEDSADMIN"."V_MAP_SV_OBSERVATION" as 
   with param as
   (
      select a.*
      from   v_filter_meds_job_number a
      where  a.medsfilter = nv('P200_MEDSFILTER')
   )
   select p.icon
   ,      p.color
   ,      p.cruise_name
   ,      case when p.vessel_name is null then to_char(p.meds_ship_number) else p.vessel_name end vessel_name
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
   ,      case d.column_name
               when 'MEDS_JOB_NUMBER' then to_char(a.MEDS_JOB_NUMBER)
               when 'MEDS_OBSERVATION_NUMBER' then to_char(a.MEDS_OBSERVATION_NUMBER)
               when 'LATITUDE' then to_char(a.LATITUDE)
               when 'LONGITUDE' then to_char(a.LONGITUDE)
               when 'DATE_TIME' then to_char(a.date_time,'dd Mon yyyy hh24:mi:ss')
               when 'VESSEL_NAME' then p.vessel_name
               when 'CRUISE_NAME' then p.cruise_name
               when 'INSTRUMENT_NAME' then b.description
               when 'NUMBER_OF_DEPTH_LEVELS' then to_char(a.number_of_depth_levels)
               when 'MINIMUM_DEPTH_LEVEL' then to_char(a.minimum_depth_level)
               when 'MAXIMUM_DEPTH_LEVEL' then to_char(a.maximum_depth_level)
               else to_char(a.MEDS_JOB_NUMBER)
          end as data_point_label
   from   param                      p
   ,      profile_index_sv           a
   ,      instrument                 b
   ,      medsfilter_medslayer_label c 
   ,      medslayer_label            d   
   where  a.meds_job_number     = p.meds_job_number
   and    a.date_time       between p.date_start and p.date_end
   and    b.ocean               = a.instrument_code
   and    c.medsfilter      (+) = p.medsfilter
   and    c.medslayer       (+) = p.medslayer
   and    d.medslayer_label (+) = c.medslayer_label
;