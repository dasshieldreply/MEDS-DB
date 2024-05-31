create or replace force editionable view "V_D_MLO_SEABED_CONTACT" 
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
   ,	    b.latitude
   ,	    b.longitude
   ,	    b.date_recorded
   ,      c.bottom_material
   ,      c.bottom_material_no
   ,      c.bottom_type
   ,      c.contact_reference
   ,      c.depth
   ,      c.description
   ,      c.dimensions_height
   ,      c.dimensions_length
   ,      c.dimensions_measured
   ,      c.dimensions_width
   ,      c.general_location
   ,      c.marine_growth
   ,      c.marine_life
   ,      c.prevailing_weather
   ,      c.report_no
   ,      c.ship
   ,      c.slope
   ,      c.softness_hs_p1
   ,      c.softness_s_p2
   ,      c.visibility_at_seabed
   ,      c.visibility_at_seabed_depth
   ,      c.wreckage_and_debris
   from   param                     p
   ,      v_filter_meds_job_number  a
   ,      mlo_seabed_contact_observation  b
   ,      mlo_seabed_contact_data         c
   where  a.medsfilter              = p.medsfilter
   and    a.label_layer             = 'SEABED CONTACT'
   and    b.meds_job_number         = a.meds_job_number
   and    c.meds_job_number         = b.meds_job_number
   and    c.meds_observation_number = b.meds_observation_number
;

