CREATE OR REPLACE FORCE EDITIONABLE VIEW "MEDSADMIN"."V_MAP_SEASOAR_PROFILE_OBSERVATION" 
as
   with param as
   (
      select a.*
      from   v_filter_meds_job_number a
      where  a.medsfilter = nv('P200_MEDSFILTER')
   ), 
   adta as
   (
      select a.meds_job_number
      ,      a.meds_observation_number
      ,      count(b.depth)   no_measurements
      ,      min(b.depth)     min_depth
      ,      max(b.depth)     max_depth
      from   param                        p
      ,      seasoar_profile_observation a
      ,      seasoar_profile_data        b
      where  a.meds_job_number         = p.meds_job_number
      and    a.date_recorded between p.date_start and p.date_end
      and    b.meds_job_number         = a.meds_job_number
      and    b.meds_observation_number = a.meds_observation_number
      group by
             a.meds_job_number
      ,      a.meds_observation_number
   ) 
   select p.icon
   ,      p.color
   ,      p.cruise_name
   ,      b.meds_job_number
   ,      b.meds_observation_number
   ,      b.location
   ,      b.latitude
   ,      b.longitude
   ,      to_char(b.date_recorded,'dd Mon yyyy') label_date
   ,      c.supplier
   ,      a.no_measurements
   ,      a.min_depth
   ,      a.max_depth
   ,      case e.column_name
               when 'MEDS_JOB_NUMBER' then to_char(a.MEDS_JOB_NUMBER)
               when 'MEDS_OBSERVATION_NUMBER' then to_char(a.MEDS_OBSERVATION_NUMBER)
               when 'LATITUDE' then to_char(b.LATITUDE)
               when 'LONGITUDE' then to_char(b.LONGITUDE)
               when 'DATE_RECORDED' then to_char(b.date_recorded,'fmDD/MM/YYYY HH24:MI:SS')
               when 'SUPPLIER' then c.SUPPLIER   
               when 'NO_MEASUREMENTS' then to_char(a.no_measurements)
               when 'MIN_DEPTH' then to_char(a.min_depth)
               when 'MAX_DEPTH' then to_char(a.max_depth)
               when 'CRUISE_NAME' then p.CRUISE_NAME
               else to_char(a.MEDS_JOB_NUMBER)
          end as data_point_label
   from   param                        p
   ,      adta                         a
   ,      seasoar_profile_observation  b
   ,      job_tracking                 c
   ,      medsfilter_medslayer_label   d 
   ,      medslayer_label              e
   where  a.meds_job_number            = p.meds_job_number 
   and    sdo_anyinteract(b.location, p.location_rectangle) = 'TRUE'
   and    b.meds_job_number            = a.meds_job_number
   and    b.meds_observation_number    = a.meds_observation_number
   and    c.meic_number                = p.meic_number
   and    d.medsfilter             (+) = p.medsfilter
   and    d.medslayer              (+) = p.medslayer
   and    e.medslayer_label        (+) = d.medslayer_label
;