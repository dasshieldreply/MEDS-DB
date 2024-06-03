create or replace force editionable view "V_D_EDDY_SATELLITE" 
as
   with param
   as
   (
      select /* +materialize */
             nv('P0_MEDSFILTER') medsfilter
      from   dual
   )
   select b.meds_job_number
   ,	    b.meds_observation_number
   ,      b.eddy_observed_date
   ,      c.centre_latitude
   ,      c.centre_longitude
   ,      c.eddy_boundary_type
   ,      c.eddy_confidence
   ,      c.eddy_frontal_depth
   ,      c.eddy_front_type
   ,      c.eddy_gradient
   ,      c.eddy_id
   ,      c.eddy_number
   ,      c.eddy_sst
   ,      c.eddy_type
   ,      c.first_year_observed
   ,      c.major_axis_length
   ,      c.major_axis_orientation
   ,      c.minor_axis_length
   ,      c.parent_feature
   ,      c.swirl_velocity
   ,      d.latitude
   ,      d.longitude
   ,      d.point_order
   ,      d.vertex_id
   from   param                        p
   ,      v_filter_meds_job_number     a
   ,      eddy_satellite_observation   b
   ,      eddy_satellite_data          c
   ,      eddY_satellite_repeat        d
   where  a.medsfilter                 = p.medsfilter
   and    a.label_layer                = 'EDDY SATELLITE'
   and    b.meds_job_number            = a.meds_job_number
   and    c.meds_job_number            = b.meds_job_number
   and    c.meds_observation_number    = b.meds_observation_number
   and    d.meds_job_number            = c.meds_job_number
   and    d.meds_observation_number    = c.meds_observation_number
;

