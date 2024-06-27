CREATE OR REPLACE FORCE EDITIONABLE VIEW "MEDSADMIN"."V_MAP_DEEP_SCATTERING_OBSERVATION"  
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
   ,      b.ship
   ,      b.hi_cruise
   ,      b.remarks
   ,      case d.column_name
               when 'MEDS_JOB_NUMBER' then to_char(a.MEDS_JOB_NUMBER)
               when 'MEDS_OBSERVATION_NUMBER' then to_char(a.MEDS_OBSERVATION_NUMBER)
               when 'LATITUDE' then to_char(a.LATITUDE)
               when 'LONGITUDE' then to_char(a.LONGITUDE)
               when 'DATE_RECORDED' then to_char(a.date_recorded,'dd Mon yyyy hh24:mi:ss')
               when 'SHIP' then b.ship
               when 'HI_CRUISE' then b.hi_cruise
               when 'REMARKS' then b.remarks
               else to_char(a.MEDS_JOB_NUMBER)
          end as data_point_label  
   from   param                        p
   ,      deep_scattering_observation  a
   ,      deep_scattering_data         b
   ,      medsfilter_medslayer_label   c 
   ,      medslayer_label              d   
   where  a.meds_job_number            = p.meds_job_number   
   and    a.date_recorded between p.date_start and p.date_end
   and    sdo_anyinteract(a.location, p.location_rectangle) = 'TRUE'
   and    b.meds_job_number            = a.meds_job_number
   and    b.meds_observation_number    = a.meds_observation_number
   and    c.medsfilter             (+) = p.medsfilter
   and    c.medslayer              (+) = p.medslayer
   and    d.medslayer_label        (+) = c.medslayer_label
;