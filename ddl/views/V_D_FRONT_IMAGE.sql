create or replace force editionable view "V_D_FRONT_IMAGE" 
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
   ,      b.observered_date
   ,      c.boundary_type
   ,      c.frontal_confidence
   ,      c.frontal_depth
   ,      c.frontal_gradient
   ,      c.frontal_line_id
   ,      c.frontal_name
   ,      c.frontal_type
   ,      c.point_type
   ,      d.confidence
   ,      d.latitude
   ,      d.longitude
   ,      d.point_order
   ,      d.strength
   ,      d.vertex_id
   from   param                        p
   ,      v_filter_meds_job_number     a
   ,      front_satellite_observation  b
   ,      front_image_data             c
   ,      front_image_repeat           d
   where  a.medsfilter                 = p.medsfilter
   and    a.label_layer                = 'FRONT IMAGE'
   and    b.meds_job_number            = a.meds_job_number
   and    c.meds_job_number            = b.meds_job_number
   and    c.meds_observation_number    = b.meds_observation_number
   and    d.meds_job_number            = c.meds_job_number
   and    d.meds_observation_number    = c.meds_observation_number
;

