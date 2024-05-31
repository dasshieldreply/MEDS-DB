create or replace force editionable view "V_D_MLO_CETACEANS" 
as
   with param
   as
   (
      select /* +materialize */
             nv('P0_MEDSFILTER') medsfilter
      from   dual
   )
   select b.meds_job_number
   ,		 b.meds_observation_number
   ,		 b.latitude
   ,		 b.longitude
   ,		 b.date_recorded
   ,		 b.meds_track_number
   ,		 c.record_number
   ,		 c.count
   ,		 c.count_quality
   ,		 c.species
   ,		 c.id_quality
   ,		 c.heading
   ,		 c.comments
   ,		 c.sst
   ,		 c.pisces_genus
   ,		 c.speed
   ,		 c.reference
   ,		 c.ship
   ,		 c.archived
   ,		 c.size_class
   ,		 c.month
   ,		 c.pisces_species
   ,		 c.size_
   ,		 c.meic
   ,		 c."RANGE"
   ,		 c.bearing
   ,		 c.person_name
   from   param                     p
   ,      v_filter_meds_job_number  a
   ,      mlo_cetaceans_observation b
   ,      mlo_cetaceans_data        c
   where  a.medsfilter              = p.medsfilter
   and    a.label_layer             = 'CETACEANS'
   and    b.meds_job_number         = a.meds_job_number
   and    c.meds_job_number         = b.meds_job_number
   and    c.meds_observation_number = b.meds_observation_number
;

