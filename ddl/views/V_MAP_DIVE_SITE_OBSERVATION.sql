CREATE OR REPLACE FORCE EDITIONABLE VIEW "MEDSADMIN"."V_MAP_DIVE_SITE_OBSERVATION"  
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
   ,      a.location
   ,      a.latitude
   ,      a.longitude
   ,      to_char(b.date_recorded,'dd Mon yyyy') label_date
   ,		 b.area
   ,		 b.comments
   ,		 b.depth
   ,		 b.inshore_offshore
   ,		 b.main_species
   ,		 b.name
   ,		 b.region
   ,		 b.site_number
   ,		 b.time_of_year
   ,		 b.type_of_activity
   ,		 b.water_clarity
   from   param                     p
   ,      dive_site_observation     a
   ,      dive_site_data            b
   where  a.meds_job_number         = p.meds_job_number   
   --and    b.date_recorded between p.date_start and p.date_end
   and    sdo_anyinteract(a.location, p.location_rectangle) = 'TRUE'
   and    b.meds_job_number         = a.meds_job_number
   and    b.meds_observation_number = a.meds_observation_number
;