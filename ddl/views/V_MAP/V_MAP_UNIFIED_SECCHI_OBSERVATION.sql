CREATE OR REPLACE FORCE EDITIONABLE VIEW "MEDSADMIN"."V_MAP_UNIFIED_SECCHI_OBSERVATION" as
   with param as
   (
      select a.*
      from   v_filter_meds_job_number a
      where  a.medsfilter = nv('P200_MEDSFILTER')
   )
   select p.icon
   ,      p.color
   ,      a.meds_job_number
   ,      a.meds_observation_number
   ,      a.location
   ,      a.latitude
   ,      a.longitude
   ,      to_char(a.date_recorded,'dd Mon yyyy') label_date
   ,      a.src
   ,      b.cloud
   ,      b.country_code
   ,      b.cruise_identifier
   ,      b.data_type
   ,      b.diffuse_attn_coe
   ,      b.general_area
   ,      b.gmt
   ,      b.horizontal_visability
   ,      b.month
   ,      b.photic_depth
   ,      b.record_number
   ,      b.reference
   ,      b.sea_state
   ,      b.secchi_depth
   ,      b.ship
   ,      b.ship_code
   ,      b.src
   ,      b.stn_identifier
   ,      b.sun_angle
   ,      b.water_colour
   ,      b.water_colour_name
   ,      b.weather
   ,      case d.column_name
               when 'MEDS_JOB_NUMBER' then to_char(a.MEDS_JOB_NUMBER)
               when 'MEDS_OBSERVATION_NUMBER' then to_char(a.MEDS_OBSERVATION_NUMBER)
               when 'LATITUDE' then to_char(a.LATITUDE)
               when 'LONGITUDE' then to_char(a.LONGITUDE)
               when 'DATE_RECORDED' then to_char(b.date_recorded,'dd Mon yyyy hh24:mi:ss')
               when 'AREA' then b.area
               when 'COMMENTS' then b.comments
               when 'DEPTH' then b.depth
               when 'INSHORE_OFFSHORE' then b.inshore_offshore
               when 'MAIN_SPECIES' then b.main_species
               when 'NAME' then b.name
               when 'REGION' then b.region
               when 'SITE_NUMBER' then to_char(b.site_number)
               when 'TIME_OF_YEAR' then b.time_of_year
               when 'TYPE_OF_ACTIVITY' then b.type_of_activity
               when 'WATER_CLARITY' then b.water_clarity
               when 'CRUISE_NAME' then p.cruise_name
               when 'VESSEL_NAME' then p.vessel_name
               else to_char(a.MEDS_JOB_NUMBER)
          end as data_point_label  
   from   param                      p
   ,      unified_secchi_observation a
   ,      unified_secchi_data        b
   ,      medsfilter_medslayer_label c 
   ,      medslayer_label            d  
   where  a.meds_job_number    = p.meds_job_number   
   and    a.date_recorded between p.date_start and p.date_end
   and    sdo_anyinteract(a.location, p.location_rectangle) = 'TRUE'
   and    c.medsfilter      (+) = p.medsfilter
   and    c.medslayer       (+) = p.medslayer
   and    d.medslayer_label (+) = c.medslayer_label
;