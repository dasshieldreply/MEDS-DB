create or replace force editionable view "MEDSADMIN"."V_MAP_MLO_BIRDS_OBSERVATION" 
as 
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
   ,      b.species
   ,      b.count
   ,      b.ship
   ,      b.wd_dir
   ,      b.wd_spd
   ,      b.comments
   ,      b.file_reference
   ,      case d.column_name
               when 'MEDS_JOB_NUMBER' then to_char(a.MEDS_JOB_NUMBER)
               when 'MEDS_OBSERVATION_NUMBER' then to_char(a.MEDS_OBSERVATION_NUMBER)
               when 'LATITUDE' then to_char(a.LATITUDE)
               when 'LONGITUDE' then to_char(a.LONGITUDE)
               when 'DATE_RECORDED' then to_char(a.date_recorded,'dd Mon yyyy')
               when 'COUNT' then to_char(b.COUNT)
               when 'SHIP' then b.SHIP
               when 'WD_DIR' then to_char(b.WD_DIR)
               when 'WD_SPD' then to_char(b.WD_SPD)
               when 'COMMENTS' then b.COMMENTS
               when 'FILE_REFERENCE' then b.FILE_REFERENCE
               when 'CRUISE_NAME' then p.CRUISE_NAME
               else to_char(a.MEDS_JOB_NUMBER)
          end as data_point_label
   from   param                        p
   ,      mlo_birds_observation        a
   ,      mlo_birds_data               b
   ,      medsfilter_medslayer_label   c 
   ,      medslayer_label              d
   where  a.meds_job_number         = p.meds_job_number   
   and    a.date_recorded between p.date_start and p.date_end
   and    b.meds_job_number         = a.meds_job_number
   and    b.meds_observation_number = a.meds_observation_number
   and    sdo_anyinteract(a.location, p.location_rectangle) = 'TRUE'
   and    c.medsfilter      (+)     = p.medsfilter
   and    c.medslayer       (+)     = p.medslayer
   and    d.medslayer_label (+)     = c.medslayer_label
   ;