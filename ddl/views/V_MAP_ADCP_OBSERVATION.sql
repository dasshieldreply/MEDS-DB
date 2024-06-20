CREATE OR REPLACE FORCE EDITIONABLE VIEW "MEDSADMIN"."V_MAP_ADCP_OBSERVATION"  
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
   ,      a.meds_observation_number
   ,      a.location
   ,      a.latitude
   ,      a.longitude
   ,      to_char(a.date_recorded,'dd Mon yyyy') label_date
   ,      c.supplier
   ,      b.heading
   ,      b.temperature
   ,      b.speed_ship
   ,      b.dir_ship
   ,      case e.column_name
               when 'MEDS_JOB_NUMBER' then to_char(a.MEDS_JOB_NUMBER)
               when 'MEDS_OBSERVATION_NUMBER' then to_char(a.MEDS_OBSERVATION_NUMBER)
               when 'LATITUDE' then to_char(a.LATITUDE)
               when 'LONGITUDE' then to_char(a.LONGITUDE)
               when 'DATE_RECORDED' then to_char(a.date_recorded,'fmDD/MM/YYYY HH24:MI:SS')
               when 'BIN_1_DISTANCE' then to_char(b.BIN_1_DISTANCE)
               when 'BIN_SIZE' then to_char(b.BIN_SIZE)
               when 'DEPTH_BSL_TRANS' then to_char(b.DEPTH_BSL_TRANS)
               when 'DIR_SHIP' then to_char(b.DIR_SHIP)
               when 'HEADING' then to_char(b.HEADING)
               when 'JULIAN_DAY' then to_char(b.JULIAN_DAY)
               when 'NO_BINS' then to_char(b.NO_BINS)
               when 'NO_ENSEMBLES' then to_char(b.NO_ENSEMBLES)
               when 'PROFILE' then to_char(b.PROFILE)
               when 'SCALE_FACTOR' then to_char(b.SCALE_FACTOR)
               when 'SPEED_SHIP' then to_char(b.SPEED_SHIP)
               when 'SUPPLIER' then c.SUPPLIER               
               when 'TEMPERATURE' then to_char(b.TEMPERATURE)
               when 'U_BOTTOM' then to_char(b.U_BOTTOM)
               when 'U_SHIP' then to_char(b.U_SHIP)
               when 'V_BOTTOM' then to_char(b.V_BOTTOM)
               when 'V_SHIP' then to_char(b.V_SHIP)
               when 'WATER_DEPTH' then to_char(b.WATER_DEPTH)
               when 'CRUISE_NAME' then p.CRUISE_NAME
               else to_char(a.MEDS_JOB_NUMBER)
          end as data_point_label
   from   param                        p
   ,      adcp_observation             a
   ,      adcp_data                    b
   ,      job_tracking                 c
   ,      medsfilter_medslayer_label   d 
   ,      medslayer_label              e
   where  a.meds_job_number         = p.meds_job_number   
   and    a.date_recorded between p.date_start and p.date_end
   and    sdo_anyinteract(a.location, p.location_rectangle) = 'TRUE'
   and    b.meds_job_number         = a.meds_job_number
   and    b.meds_observation_number = a.meds_observation_number
   and    c.meic_number             = p.meic_number
   and    d.medsfilter         (+)  = p.medsfilter
   and    d.medslayer          (+)  = p.medslayer
   and    e.medslayer_label    (+)  = d.medslayer_label
;