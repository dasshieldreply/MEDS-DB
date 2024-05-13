CREATE OR REPLACE FORCE EDITIONABLE VIEW V_deep_scattering
(
    meds_job_number
,   meds_observation_number
,   date_recorded
,   latitude
,   longitude
,   archived
,   depth_of_top_layer
,   end_lat_long
,   end_time
,   extent_of_motion
,   e_s_trace_reference
,   gain_settings
,   hi_cruise
,   layer_thickness
,   month
,   remarks
,   sea_state
,   ship
,   sonar_frequency
,   start_time
,   type_of_sonar
)  DEFAULT COLLATION "USING_NLS_COMP"  AS 
select 
    a.meds_job_number
,   a.meds_observation_number
,   a.date_recorded
,   a.latitude
,   a.longitude
,   b.archived
,   b.depth_of_top_layer
,   b.end_lat_long
,   b.end_time
,   b.extent_of_motion
,   b.e_s_trace_reference
,   b.gain_settings
,   b.hi_cruise
,   b.layer_thickness
,   b.month
,   b.remarks
,   b.sea_state
,   b.ship
,   b.sonar_frequency
,   b.start_time
,   b.type_of_sonar
from        deep_scattering_observation   a
inner join  deep_scattering_data          b
    on  b.meds_job_number         = a.meds_job_number
    and b.meds_observation_number = a.meds_observation_number
;