CREATE OR REPLACE FORCE EDITIONABLE VIEW "MEDSADMIN"."V_MAP_EDDY_OBSERVATION"  
AS 
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
   ,      a.comment_s
   ,      a.cruise_information
   ,      a.database_reference
   ,      a.data_available
   ,      a.duration_of_observation
   ,      a.eddy_name
   ,      a.instrument
   ,      a.latitude
   ,      a.lifetime
   ,      a.longitude
   ,      a.location
   ,      a.observation_year
   ,      a.observation_month
   from   param               p
   ,      eddy_observation    a
   where  a.meds_job_number   = p.meds_job_number   
   and    sdo_anyinteract(a.location, p.location_rectangle) = 'TRUE'
;