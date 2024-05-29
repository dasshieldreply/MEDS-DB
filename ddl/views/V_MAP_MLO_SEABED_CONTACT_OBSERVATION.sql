CREATE OR REPLACE FORCE EDITIONABLE VIEW "MEDSADMIN"."V_MAP_MLO_SEABED_CONTACT_OBSERVATION" 
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
   ,      to_char(a.date_recorded,'dd Mon yyyy') label_date
   ,		 b.bottom_material
   ,		 b.bottom_material_no
   ,		 b.bottom_type
   ,		 b.contact_reference
   ,		 b.depth
   ,		 b.description
   ,		 b.dimensions_height
   ,		 b.dimensions_length
   ,		 b.dimensions_measured
   ,		 b.dimensions_width
   ,		 b.general_location
   ,		 b.marine_growth
   ,		 b.marine_life
   ,		 b.prevailing_weather
   ,		 b.report_no
   ,		 b.ship
   ,		 b.slope
   ,		 b.softness_hs_p1
   ,		 b.softness_s_p2
   ,		 b.visibility_at_seabed
   ,		 b.visibility_at_seabed_depth
   ,		 b.wreckage_and_debris
   from   param                            p
   ,      mlo_seabed_contact_observation   a
   ,      mlo_seabed_contact_data          b
   where  a.meds_job_number         = p.meds_job_number   
   and    a.date_recorded between p.date_start and p.date_end
   and    sdo_anyinteract(a.location, p.location_rectangle) = 'TRUE'
   and    b.meds_job_number         = a.meds_job_number
   and    b.meds_observation_number = a.meds_observation_number
;