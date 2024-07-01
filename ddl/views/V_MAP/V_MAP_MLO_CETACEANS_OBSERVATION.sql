CREATE OR REPLACE FORCE EDITIONABLE VIEW "MEDSADMIN"."V_MAP_MLO_CETACEANS_OBSERVATION" 
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
   ,      a.meds_track_number
   ,      a.location
   ,      a.latitude
   ,      a.longitude
   ,      to_char(a.date_recorded,'dd Mon yyyy') label_date
   ,      b.species
   ,      b.count
   ,      b.ship
   ,      b.size_ 
   ,      b.bearing
   ,      b.range
   ,      b.comments
   ,      b.reference
   ,      b.pisces_species
   ,      b.size_class
   ,      p.cruise_name
   ,      case d.column_name
               when 'MEDS_JOB_NUMBER' then to_char(a.MEDS_JOB_NUMBER)
               when 'MEDS_OBSERVATION_NUMBER' then to_char(a.MEDS_OBSERVATION_NUMBER)
               when 'LATITUDE' then to_char(a.LATITUDE)
               when 'LONGITUDE' then to_char(a.LONGITUDE)
               when 'DATE_RECORDED' then to_char(a.date_recorded,'dd Mon yyyy')
               when 'SPECIES' then b.species               
               when 'COUNT' then b.COUNT
               when 'SHIP' then b.SHIP
               when 'SIZE' then b.size_
               when 'BEARING' then b.bearing
               when 'RANGE' then b.range
               when 'COMMENTS' then b.COMMENTS
               when 'REFERENCE' then b.reference
               when 'PISCES_SPECIES' then b.pisces_species
               when 'SIZE_CLASS' then b.size_class               
               when 'CRUISE_NAME' then p.CRUISE_NAME
               else to_char(a.MEDS_JOB_NUMBER)
          end as data_point_label
   from   param                       p
   ,      mlo_cetaceans_observation   a
   ,      mlo_cetaceans_data          b
   ,      medsfilter_medslayer_label  c 
   ,      medslayer_label             d
   where  a.meds_job_number         = p.meds_job_number   
   and    a.date_recorded between p.date_start and p.date_end
   and    b.meds_job_number         = a.meds_job_number
   and    b.meds_observation_number = a.meds_observation_number
   and    sdo_anyinteract(a.location, p.location_rectangle) = 'TRUE'
   and    c.medsfilter      (+)     = p.medsfilter
   and    c.medslayer       (+)     = p.medslayer
   and    d.medslayer_label (+)     = c.medslayer_label   
;