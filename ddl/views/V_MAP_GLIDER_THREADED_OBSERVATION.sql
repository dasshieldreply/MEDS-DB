CREATE OR REPLACE FORCE EDITIONABLE VIEW "MEDSADMIN"."V_MAP_GLIDER_THREADED_OBSERVATION"  
AS 
   with param as
   (
         select a.*
         from   v_filter_meds_job_number a
         where  a.medsfilter = nv('P200_MEDSFILTER')
   ),
   obsrv as
   (
      select   a.meds_job_number
      ,        a.meds_observation_number
      ,        min(b.date_recorded) label_min_date
      ,        max(b.date_recorded) label_max_date
      from     param                        p
      ,        glider_threaded_observation  a
      ,        glider_threaded_data         b
      where    a.meds_job_number            = p.meds_job_number   
      and      b.meds_job_number            = a.meds_job_number
      and      b.meds_observation_number    = a.meds_observation_number
      and      b.date_recorded between p.date_start and p.date_end 
      group by a.meds_job_number
      ,        a.meds_observation_number
   )
   select p.icon
   ,      p.color
   ,      o.meds_job_number
   ,      o.meds_observation_number
   ,      o.label_min_date
   ,      o.label_max_date
   ,      a.location
   ,      a.mid_latitude
   ,      a.mid_longitude
   ,      a.distance_traveled
   ,      b.supplier
   ,      case e.column_name
               when 'MEDS_JOB_NUMBER' then to_char(a.MEDS_JOB_NUMBER)
               when 'MEDS_OBSERVATION_NUMBER' then to_char(a.MEDS_OBSERVATION_NUMBER)
               when 'MID_LATITUDE' then to_char(a.mid_latitude)
               when 'MID_LONGITUDE' then to_char(a.mid_longitude)
               when 'MIN_DATE' then o.label_min_date
               when 'MAX_DATE' then o.label_max_date
               when 'DISTANCE_TRAVELED' then to_char(a.distance_traveled)
               when 'SUPPLIER' then B.SUPPLIER               
               else to_char(a.MEDS_JOB_NUMBER)
          end as data_point_label
   from   obsrv                        o
   ,      param                        p
   ,      glider_threaded_observation  a
   ,      job_tracking                 b
   ,      medsfilter_medslayer_label   d 
   ,      medslayer_label              e
   where  p.meds_job_number            = o.meds_job_number
   and    a.meds_job_number            = o.meds_job_number   
   and    a.meds_observation_number    = o.meds_observation_number
   and    sdo_anyinteract(a.location, p.location_rectangle) = 'TRUE'
   and    b.meic_number                = p.meic_number
   and    d.medsfilter             (+) = p.medsfilter
   and    d.medslayer              (+) = p.medslayer
   and    e.medslayer_label        (+) = d.medslayer_label
;