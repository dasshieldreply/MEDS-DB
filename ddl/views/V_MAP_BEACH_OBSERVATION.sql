CREATE OR REPLACE FORCE EDITIONABLE VIEW "MEDSADMIN"."V_MAP_BEACH_OBSERVATION" 
  (   "ICON"
   ,  "COLOR"
   ,  "MEDS_JOB_NUMBER"
   ,  "MEDS_OBSERVATION_NUMBER"
   ,  "LOCATION"
   ,  "LATITUDE"
   ,  "LONGITUDE"
   ,  "LABEL_DATE"
   ,  "COUNTRY"
   ,  "BEACH_NAME"
   ,  "BEACH_CATEGORY"
   ,  "BEACH_NUMBER"
   ,  "SUPPLIER"
   ) DEFAULT COLLATION "USING_NLS_COMP"  AS 
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
   ,      to_char(a.date_of_survey,'dd Mon yyyy') 
   ,      a.country
   ,      a.beach_name
   ,      a.beach_category
   ,      a.beach_number
   ,      p.supplier
   from   param               p
   ,      beach_observation   a
   where  a.meds_job_number = p.meds_job_number   
   and    a.date_of_survey between p.date_start and p.date_end
   and    sdo_anyinteract(a.location, p.location_rectangle) = 'TRUE';