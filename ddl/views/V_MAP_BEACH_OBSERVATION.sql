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
   from   param               p
   ,      beach_observation   a
   ,      job_tracking        c
   where  a.meds_job_number   = p.meds_job_number   
   and    a.date_of_survey between p.date_start and p.date_end
   and    sdo_anyinteract(a.location, p.location_rectangle) = 'TRUE'
   and    c.meic_number       = p.meic_number
;