CREATE OR REPLACE FORCE EDITIONABLE VIEW "MEDSADMIN"."V_MAP_BIOMASS_OBSERVATION" 
AS 
   with param as
   (
      select a.*
      from   v_filter_meds_job_number a
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
   ,     to_char(a.date_recorded,'dd Mon yyyy')  label_date
   ,     b.upper_depth
   ,     b.lower_depth
   ,     b.total_displacement_vol
   ,     b.total_settled_volume
   ,     b.total_wet_mass
   ,     b.total_dry_mass
   ,     p.cruise_name
   ,     case d.column_name
              when 'MEDS_JOB_NUMBER' then to_char(a.MEDS_JOB_NUMBER)
              when 'MEDS_OBSERVATION_NUMBER' then to_char(a.MEDS_OBSERVATION_NUMBER)
              when 'LATITUDE' then to_char(a.LATITUDE)
              when 'LONGITUDE' then to_char(a.LONGITUDE)
              when 'DATE_RECORDED' then to_char(a.date_recorded,'dd Mon yyyy')
              when 'UPPER_DEPTH' then to_char(b.upper_depth)
              when 'LOWER_DEPTH' then to_char(b.lower_depth)
              when 'TOTAL_DISPLACEMENT_VOL' then to_char(b.total_displacement_vol)
              when 'TOTAL_SETTLED_VOLUME' then to_char(b.total_settled_volume)
              when 'TOTAL_WET_MASS' then to_char(b.total_wet_mass)
              when 'TOTAL_DRY_MASS' then to_char(b.total_dry_mass)               
              when 'CRUISE_NAME' then p.CRUISE_NAME
              else to_char(a.MEDS_JOB_NUMBER)
         end as data_point_label
   from  param                       p
   ,     biomass_observation         a
   ,     biomass_data                b
   ,     medsfilter_medslayer_label  c
   ,     medslayer_label             d
   where a.meds_job_number         = p.meds_job_number
   and   a.date_recorded between p.date_start and p.date_end
   and   sdo_anyinteract(a.location,  p.location_rectangle) = 'TRUE'
   and   b.meds_job_number         = a.meds_job_number
   and   b.meds_observation_number = a.meds_observation_number
   and   c.medsfilter      (+)     = p.medsfilter
   and   c.medslayer       (+)     = p.medslayer
   and   d.medslayer_label (+)     = c.medslayer_label
;