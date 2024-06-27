CREATE OR REPLACE FORCE EDITIONABLE VIEW "MEDSADMIN"."V_MAP_DIR_AMBIENT_OBSERVATION" as 
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
   ,      b.platform
   ,      b.array_depth
   ,      b.array_type
   ,      b.location_description
   ,      b.number_of_frequencies
   ,      b.number_of_headings
   ,      b.number_of_iterations
   ,      case d.column_name
               when 'MEDS_JOB_NUMBER' then to_char(a.MEDS_JOB_NUMBER)
               when 'MEDS_OBSERVATION_NUMBER' then to_char(a.MEDS_OBSERVATION_NUMBER)
               when 'LATITUDE' then to_char(a.LATITUDE)
               when 'LONGITUDE' then to_char(a.LONGITUDE)
               when 'DATE_RECORDED' then to_char(a.date_recorded,'dd Mon yyyy hh24:mi:ss')
               when 'PLATFORM' then b.platform
               when 'CRUISE_NAME' then p.cruise_name
               when 'ARRAY_DEPTH' then b.array_depth
               when 'ARRAY_TYPE' then b.array_type
               when 'LOCATION_DESCRIPTION' then b.location_description
               when 'NUMBER_OF_FREQUENCIES' then b.number_of_frequencies
               when 'NUMBER_OF_HEADINGS' then b.number_of_headings
               when 'NUMBER_OF_ITERATIONS' then b.number_of_iterations
               else to_char(a.MEDS_JOB_NUMBER)
          end as data_point_label    
   from   param                      p
   ,      dir_ambient_observation    a
   ,      dir_ambient_data           b
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