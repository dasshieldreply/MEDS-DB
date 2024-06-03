create or replace force editionable view "V_D_EDDY" 
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
   ,      b.comment_s
   ,      b.cruise_information
   ,      b.database_reference
   ,      b.data_available
   ,      b.duration_of_observation
   ,      b.eddy_name
   ,      b.instrument
   ,      b.latitude
   ,      b.lifetime
   ,      b.longitude
   ,      b.observation_month
   ,      b.observation_year
   ,      c.authors
   ,      c.comment_ap
   ,      c.comment_ay
   ,      c.comment_h
   ,      c.comment_z
   ,      c.core_temperature
   ,      c.density_core
   ,      c.density_diff_p_therm
   ,      c.density_diff_s_therm
   ,      c.density_edge
   ,      c.depth_of_p_therm
   ,      c.depth_of_s_therm
   ,      c.depth_to_bottom
   ,      c.eddy_centre_depth
   ,      c.eddy_depth_descriptor
   ,      c.eddy_rotation
   ,      c.eddy_type
   ,      c.journal_report
   ,      c.major_axis
   ,      c.major_axis_orientation
   ,      c.max_u_theta_characteristics
   ,      c.max_u__theta_
   ,      c.minor_axis
   ,      c.origin
   ,      c.oxygen_core
   ,      c.oxygen_edge
   ,      c.pages
   ,      c.propagation_direction
   ,      c.propagation_speed
   ,      c.propogation_characteristics
   ,      c.publication_date
   ,      c.salinity_core
   ,      c.salinity_edge
   ,      c.sea_floor_region
   ,      c.temperature_core
   ,      c.temperature_edge
   ,      c.title
   ,      c.volume
   ,      c.water_types_present
   ,      d.density
   ,      d.depth
   ,      d.radius
   ,      d.temperature
   from   param                     p
   ,      v_filter_meds_job_number  a
   ,      eddy_observation          b
   ,      eddy_data                 c
   ,      eddy_repeat               d
   where  a.medsfilter              = p.medsfilter
   and    a.label_layer             = 'EDDY'
   and    b.meds_job_number         = a.meds_job_number
   and    c.meds_job_number         = b.meds_job_number
   and    c.meds_observation_number = b.meds_observation_number
   and    d.meds_job_number         = c.meds_job_number
   and    d.meds_observation_number = c.meds_observation_number
;