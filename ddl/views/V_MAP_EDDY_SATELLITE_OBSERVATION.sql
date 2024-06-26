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
   ,      case d.column_name
               when 'MEDS_JOB_NUMBER' then to_char(a.MEDS_JOB_NUMBER)
               when 'MEDS_OBSERVATION_NUMBER' then to_char(a.MEDS_OBSERVATION_NUMBER)
               when 'EDDY_OBSERVED_DATE' then to_char(a.eddy_observed_date,'dd Mon yyyy')
               when 'CENTRE_LATITUDE' then to_char(b.centre_latitude)
               when 'CENTRE_LONGITUDE' then to_char(b.centre_longitude)
               when 'EDDY_BOUNDARY_TYPE' then b.eddy_boundary_type
               when 'EDDY_CONFIDENCE' then to_char(b.eddy_confidence)
               when 'EDDY_FRONTAL_DEPTH' then b.eddy_frontal_depth
               when 'EDDY_FRONT_TYPE' then b.eddy_front_type
               when 'EDDY_GRADIENT' then b.eddy_gradient
               when 'EDDY_ID' then to_char(b.eddy_id)
               when 'EDDY_NUMBER' then b.eddy_number
               when 'EDDY_SST' then b.eddy_sst
               when 'EDDY_TYPE' then b.eddy_type
               when 'FIRST_YEAR_OBSERVED' then b.first_year_observed
               when 'MAJOR_AXIS_LENGTH' then b.major_axis_length
               when 'MAJOR_AXIS_ORIENTATION' then b.major_axis_orientation
               when 'MINOR_AXIS_LENGTH' then b.minor_axis_length
               when 'PARENT_FEATURE' then b.parent_feature
               when 'SWIRL_VELOCITY' then b.swirl_velocity
               else to_char(a.MEDS_JOB_NUMBER)
          end as data_point_label   
   from   param                        p
   ,      eddy_satellite_observation   a
   ,      eddy_satellite_data          b
   ,      medsfilter_medslayer_label   c 
   ,      medslayer_label              d
   where  a.meds_job_number            = p.meds_job_number   
   and    a.eddy_observed_date between p.date_start and p.date_end
   and    sdo_anyinteract(a.location, p.location_rectangle) = 'TRUE'
   and    b.meds_job_number            = a.meds_job_number
   and    b.meds_observation_number    = a.meds_observation_number
   and    c.medsfilter      (+)     = p.medsfilter
   and    c.medslayer       (+)     = p.medslayer
   and    d.medslayer_label (+)     = c.medslayer_label
;