CREATE OR REPLACE FORCE EDITIONABLE VIEW "MEDSADMIN"."V_MAP_FRONT_SATELLITE_OBSERVATION"  
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
   ,      to_char(a.observered_date,'dd Mon yyyy') label_date
   ,      c.supplier
   ,      b.frontal_type
   ,      b.boundary_type
   ,      b.frontal_name
   from   param                        p
   ,      front_satellite_observation  a
   ,      front_image_data             b
   ,      job_tracking                 c
   where  a.meds_job_number            = p.meds_job_number   
   and    a.observered_date between p.date_start and p.date_end
   and    sdo_anyinteract(a.location, p.location_rectangle) = 'TRUE'
   and    b.meds_job_number            = a.meds_job_number
   and    b.meds_observation_number    = a.meds_observation_number
   and    c.meic_number                = p.meic_number
;