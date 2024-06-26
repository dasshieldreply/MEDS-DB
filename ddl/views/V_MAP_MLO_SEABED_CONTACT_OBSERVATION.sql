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
   ,      p.cruise_name
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
   ,      case d.column_name
               when 'MEDS_JOB_NUMBER' then to_char(a.MEDS_JOB_NUMBER)
               when 'MEDS_OBSERVATION_NUMBER' then to_char(a.MEDS_OBSERVATION_NUMBER)
               when 'LATITUDE' then to_char(a.LATITUDE)
               when 'LONGITUDE' then to_char(a.LONGITUDE)
               when 'DATE_RECORDED' then to_char(a.date_recorded,'dd Mon yyyy')
               when 'SHIP' then b.SHIP
               when 'DEPTH' then to_char(b.depth)
               when 'CRUISE_NAME' then p.CRUISE_NAME
               else to_char(a.MEDS_JOB_NUMBER)
          end as data_point_label
   from   param                            p
   ,      mlo_seabed_contact_observation   a
   ,      mlo_seabed_contact_data          b
   ,      medsfilter_medslayer_label   c 
   ,      medslayer_label              d
   where  a.meds_job_number         = p.meds_job_number   
   and    a.date_recorded between p.date_start and p.date_end
   and    sdo_anyinteract(a.location, p.location_rectangle) = 'TRUE'
   and    b.meds_job_number         = a.meds_job_number
   and    b.meds_observation_number = a.meds_observation_number
   and    c.medsfilter      (+)     = p.medsfilter
   and    c.medslayer       (+)     = p.medslayer
   and    d.medslayer_label (+)     = c.medslayer_label
   ;