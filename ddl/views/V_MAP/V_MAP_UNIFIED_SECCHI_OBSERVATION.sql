CREATE OR REPLACE FORCE EDITIONABLE VIEW "MEDSADMIN"."V_MAP_UNIFIED_SECCHI_OBSERVATION" 
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
   ,      to_char(a.date_recorded,'dd Mon yyyy') label_date
   ,      a.src
   ,      b.ship 
   ,      b.ship_code
   ,      b.country_code
   ,      b.cruise_identifier
   ,      b.general_area
   ,      b.secchi_depth
   from   param                        p
   ,      unified_secchi_observation   a
   ,      unified_secchi_data          b
   where  a.meds_job_number   = p.meds_job_number   
   and    a.date_recorded between p.date_start and p.date_end
   and    sdo_anyinteract(a.location, p.location_rectangle) = 'TRUE'
;