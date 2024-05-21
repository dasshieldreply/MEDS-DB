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
   select 
          a.medsfilter
   ,      a.date_start date_start
   ,      nvl(a.date_end,sysdate) date_end
   ,      a.location_rectangle
   ,      a.meic_number
   ,      a.meds_job_number
   ,      a.meds_cruise_number
   ,      a.originator
   ,      'fa ' || nvl(b.icon, 'fa-map_marker') icon
   ,      nvl(b.color, '#000000') color
   from   medsfilter a
   ,      medslayer  b
   where  a.medsfilter = nv('P200_MEDSFILTER')
   and    b.label      = 'BIOMASS'
   and    ':' || a.layerstring || ':' like '%:' || b.label || ':%'
), mpjs
as
(
   select a.job_number meds_job_number
   from   param               p
   ,      meds_processing_job a
   where  (p.meic_number        is null or a.meic_number          = p.meic_number)
   and    (p.meds_job_number    is null or a.job_number           = p.meds_job_number)
   and    (p.meds_cruise_number is null or a.meds_cruise_number   = p.meds_cruise_number)
   and    (p.originator         is null or a.originator           = p.originator)
)
select 
      p.icon
,     p.color
,     b.meds_job_number
,     b.meds_observation_number
,     b.location
,     b.latitude
,     b.longitude
,     to_char(b.date_recorded,'dd Mon yyyy') 
,     c.upper_depth
,     c.lower_depth
,     c.total_displacement_vol
,     c.total_settled_volume
,     c.total_wet_mass
,     c.total_dry_mass
from  param                p
,     mpjs                 a
,     biomass_observation  b
,     biomass_data         c
where b.meds_job_number          = a.meds_job_number
and   b.date_recorded between p.date_start and p.date_end
and   sdo_anyinteract(b.location,  p.location_rectangle) = 'TRUE'
and   c.meds_job_number          = a.meds_job_number
and   c.meds_observation_number  = b.meds_observation_number;

