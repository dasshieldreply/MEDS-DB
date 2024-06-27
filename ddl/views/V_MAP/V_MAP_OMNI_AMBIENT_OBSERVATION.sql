CREATE OR REPLACE FORCE EDITIONABLE VIEW "MEDSADMIN"."V_MAP_OMNI_AMBIENT_OBSERVATION" as
   with param as
   (
      select a.*
      from   v_filter_meds_job_number a
      where  a.medsfilter = nv('P200_MEDSFILTER')
   )
   select p.icon
   ,      p.color
   ,      p.cruise_name
   ,      a.meds_job_number
   ,      a.meds_observation_number
   ,      a.location
   ,      a.latitude
   ,      a.longitude
   ,      to_char(a.date_recorded,'dd Mon yyyy') label_date
   ,		 b.ship
   ,		 b.depth
   ,		 b.platform_type
   ,		 b.comments
   ,      b.country
   ,      case d.column_name
               when 'MEDS_JOB_NUMBER' then to_char(a.MEDS_JOB_NUMBER)
               when 'MEDS_OBSERVATION_NUMBER' then to_char(a.MEDS_OBSERVATION_NUMBER)
               when 'LATITUDE' then to_char(a.LATITUDE)
               when 'LONGITUDE' then to_char(a.LONGITUDE)
               when 'DATE_RECORDED' then to_char(a.date_recorded,'dd Mon yyyy hh24:mi:ss')
               when 'SHIP' then b.ship
               when 'CRUISE_NAME' then p.cruise_name
               when 'DEPTH' then to_char(b.depth)
               when 'PLATFORM_TYPE' then b.platform_type
               when 'COMMENTS' then b.comments
               when 'COUNTRY' then b.country
               else to_char(a.MEDS_JOB_NUMBER)
          end as data_point_label   
   from   param                      p
   ,      omni_ambient_observation   a
   ,      omni_ambient_data          b
   ,      medsfilter_medslayer_label c 
   ,      medslayer_label            d   
   where  a.meds_job_number         = p.meds_job_number   
   and    a.date_recorded between p.date_start and p.date_end
   and    sdo_anyinteract(a.location, p.location_rectangle) = 'TRUE'   
   and    b.meds_job_number         = a.meds_job_number
   and    b.meds_observation_number = a.meds_observation_number
   and    c.medsfilter          (+) = p.medsfilter
   and    c.medslayer           (+) = p.medslayer
   and    d.medslayer_label     (+) = c.medslayer_label
;