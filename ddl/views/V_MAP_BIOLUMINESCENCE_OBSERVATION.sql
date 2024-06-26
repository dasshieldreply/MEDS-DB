create or replace force editionable view "MEDSADMIN"."V_MAP_BIOLUMINESCENCE_OBSERVATION" 
as 
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
   ,      to_char(a.datetime,'dd Mon yyyy') label_date
   ,      b.colour
   ,      b.vessel
   ,      b.stimulus
   ,      b.patch
   ,      b.class
   ,      b.comment_1
   ,      p.cruise_name
   ,      case d.column_name
               when 'MEDS_JOB_NUMBER' then to_char(a.MEDS_JOB_NUMBER)
               when 'MEDS_OBSERVATION_NUMBER' then to_char(a.MEDS_OBSERVATION_NUMBER)
               when 'LATITUDE' then to_char(a.LATITUDE)
               when 'LONGITUDE' then to_char(a.LONGITUDE)
               when 'DATE_RECORDED' then to_char(a.datetime,'dd Mon yyyy')
               when 'VESSEL' then b.vessel
               when 'STIMULUS' then b.stimulus
               when 'PATCH' then b.patch
               when 'CLASS' then b.class
               when 'COMMENT_1' then b.comment_1
               when 'CRUISE_NAME' then p.CRUISE_NAME
               when 'COLOUR' then b.colour
               else to_char(a.MEDS_JOB_NUMBER)
          end as data_point_label
   from   param                        p
   ,      bioluminescence_observation  a
   ,      bioluminescence_data         b
   ,      medsfilter_medslayer_label   c 
   ,      medslayer_label              d
   where  a.meds_job_number         = p.meds_job_number   
   and    a.datetime between p.date_start and p.date_end
   and    b.meds_job_number         = a.meds_job_number
   and    b.meds_observation_number = a.meds_observation_number
   and    sdo_anyinteract(a.location, p.location_rectangle) = 'TRUE'
   and    c.medsfilter      (+)     = p.medsfilter
   and    c.medslayer       (+)     = p.medslayer
   and    d.medslayer_label (+)     = c.medslayer_label
;