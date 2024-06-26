CREATE OR REPLACE FORCE EDITIONABLE VIEW "MEDSADMIN"."V_MAP_BEACH_OBSERVATION" 
as
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
   ,      to_char(a.date_of_survey,'dd Mon yyyy') label_date
   ,      a.country
   ,      a.beach_name
   ,      a.beach_category
   ,      a.beach_number
   ,      c.supplier
   ,      p.cruise_name
   ,      case e.column_name
               when 'MEDS_JOB_NUMBER' then to_char(a.MEDS_JOB_NUMBER)
               when 'MEDS_OBSERVATION_NUMBER' then to_char(a.MEDS_OBSERVATION_NUMBER)
               when 'LATITUDE' then to_char(a.LATITUDE)
               when 'LONGITUDE' then to_char(a.LONGITUDE)
               when 'DATE_RECORDED' then to_char(a.date_of_survey,'fmDD/MM/YYYY HH24:MI:SS')
               when 'COUNTRY' then a.COUNTRY
               when 'BEACH_NAME' then a.beach_name
               when 'BEACH_CATEGORY' then to_char(a.beach_category)
               when 'BEACH_NUMBER' then a.beach_number
               when 'SUPPLIER' then c.SUPPLIER               
               when 'CRUISE_NAME' then p.CRUISE_NAME
               else to_char(a.MEDS_JOB_NUMBER)
          end as data_point_label
   from   param                        p
   ,      beach_observation            a
   ,      job_tracking                 c
   ,      medsfilter_medslayer_label   d 
   ,      medslayer_label              e
   where  a.meds_job_number     = p.meds_job_number   
   and    a.date_of_survey between p.date_start and p.date_end
   and    sdo_anyinteract(a.location, p.location_rectangle) = 'TRUE'
   and    c.meic_number         = p.meic_number
   and    d.medsfilter      (+) = p.medsfilter
   and    d.medslayer       (+) = p.medslayer
   and    e.medslayer_label (+)= d.medslayer_label   
;