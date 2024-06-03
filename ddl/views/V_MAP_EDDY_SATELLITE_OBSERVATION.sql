CREATE OR REPLACE FORCE EDITIONABLE VIEW "MEDSADMIN"."V_MAP_EDDY_SATELLITE_OBSERVATION"  
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
   ,      to_char(a.eddy_observed_date,'dd Mon yyyy') label_date
   ,      b.centre_latitude
   ,      b.centre_longitude
   ,      b.eddy_boundary_type
   ,      b.eddy_confidence
   ,      b.eddy_frontal_depth
   ,      b.eddy_front_type
   ,      b.eddy_gradient
   ,      b.eddy_id
   ,      b.eddy_number
   ,      b.eddy_sst
   ,      b.eddy_type
   ,      b.first_year_observed
   ,      b.major_axis_length
   ,      b.major_axis_orientation
   ,      b.minor_axis_length
   ,      b.parent_feature
   ,      b.swirl_velocity
   from   param                        p
   ,      eddy_satellite_observation   a
   ,      eddy_satellite_data          b
   where  a.meds_job_number            = p.meds_job_number   
   and    a.eddy_observed_date between p.date_start and p.date_end
   and    sdo_anyinteract(a.location, p.location_rectangle) = 'TRUE'
   and    b.meds_job_number            = a.meds_job_number
   and    b.meds_observation_number    = a.meds_observation_number
;