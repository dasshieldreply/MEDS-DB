CREATE OR REPLACE FORCE EDITIONABLE VIEW "MEDSADMIN"."V_MAP_MLO_CETACEANS_TRACK" 
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
   ,      a.meds_track_number
   ,      to_char(a.date_recorded_start,'fmDD/MM/YYYY HH24:MI:SS') label_date_start
   ,      to_char(a.date_recorded_end,'fmDD/MM/YYYY HH24:MI:SS') label_date_end
   ,      a.location
   ,      a.latitude_start
   ,      a.latitude_end
   ,      a.longitude_start
   ,      a.longitude_end
   ,      a.monitoring_type
   ,      a.num_obs
   ,      a.period_of_sonar
   ,      a.sea_state
   ,      a.ship
   ,      a.sound_source
   ,      a.wind_speed
   ,      case d.column_name
               when 'MEDS_JOB_NUMBER' then to_char(a.MEDS_JOB_NUMBER)
               when 'MEDS_TRACK_NUMBER' then to_char(a.MEDS_TRACK_NUMBER)
               when 'CRUISE_NAME' then p.CRUISE_NAME
               when 'LATITUDE_START' then to_char(a.latitude_start)
               when 'LATITUDE_END' then to_char(a.latitude_end)
               when 'LONGITUDE_START' then to_char(a.longitude_start)
               when 'LONGITUDE_END' then to_char(a.longitude_end)
               when 'DATE_RECORDED_START' then to_char(a.date_recorded_start,'fmDD/MM/YYYY HH24:MI:SS') 
               when 'DATE_RECORDED_END' then to_char(a.date_recorded_end,'fmDD/MM/YYYY HH24:MI:SS')               
               when 'MONITORING_TYPE' then a.monitoring_type               
               when 'NUM_OBSERVATIONS' then to_char(a.num_obs)
               when 'PERIOD_OF_SONAR' then to_char(a.period_of_sonar)
               when 'SEA_STATE' then to_char(a.sea_state)
               when 'SHIP' then a.ship
               when 'SOUND_SOURCE' then a.sound_source
               when 'WIND_SPEED' then to_char(a.wind_speed)
               else to_char(a.MEDS_JOB_NUMBER)
          end as data_point_label
   from   param                       p
   ,      mlo_cetaceans_track         a
   ,      medsfilter_medslayer_label  c 
   ,      medslayer_label             d
   where  a.meds_job_number     = p.meds_job_number   
   and   (a.date_recorded_start between p.date_start and p.date_end or
          a.date_recorded_end   between p.date_start and p.date_end) 
   and    sdo_anyinteract(a.location, p.location_rectangle) = 'TRUE'
   and    c.medsfilter      (+) = p.medsfilter
   and    c.medslayer       (+) = p.medslayer
   and    d.medslayer_label (+) = c.medslayer_label   
;