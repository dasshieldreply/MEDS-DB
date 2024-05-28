CREATE OR REPLACE FORCE EDITIONABLE VIEW "MEDSADMIN"."V_MAP_BIOMASS_OBSERVATION" 
(
   "ICON"
,  "COLOR"
,  "MEDS_JOB_NUMBER"
,  "MEDS_OBSERVATION_NUMBER"
,  "LOCATION"
,  "LATITUDE"
,  "LONGITUDE"
,  "LABEL_DATE"
,  "UPPER_DEPTH"
,  "LOWER_DEPTH"
,  "TOTAL_DISPLACEMENT_VOLUME"
,  "TOTAL_SETTLED_VOLUME"
,  "TOTAL_WET_MASS"
,  "TOTAL_DRY_MASS"
) DEFAULT COLLATION "USING_NLS_COMP"  AS 
   with param as
   (
      select a.*
      from   v_map_filter_criteria a
      where  a.medsfilter = nv('P200_MEDSFILTER')
   )
   select 
         p.icon
   ,     p.color
   ,     a.meds_job_number
   ,     a.meds_observation_number
   ,     a.location
   ,     a.latitude
   ,     a.longitude
   ,     to_char(a.date_recorded,'dd Mon yyyy') 
   ,     b.upper_depth
   ,     b.lower_depth
   ,     b.total_displacement_vol
   ,     b.total_settled_volume
   ,     b.total_wet_mass
   ,     b.total_dry_mass
   from  param                p
   ,     biomass_observation  a
   ,     biomass_data         b
   where a.meds_job_number          = p.meds_job_number
   and   a.date_recorded between p.date_start and p.date_end
   and   sdo_anyinteract(a.location,  p.location_rectangle) = 'TRUE'
   and   b.meds_job_number          = a.meds_job_number
   and   b.meds_observation_number  = a.meds_observation_number
;