create or replace force editionable view "V_D_MLO_JELLYFISH" 
as
   with param
   as
   (
      select /* +materialize */
             nv('P0_MEDSFILTER') medsfilter
      from   dual
   )
   select b.meds_job_number
   ,	    b.meds_observation_number
   ,	    b.latitude
   ,	    b.longitude
   ,	    b.date_recorded
   ,      c.archived
   ,      c.bearing
   ,      c.comments
   ,      c.count
   ,      c.count_quality
   ,      c.heading
   ,      c.id_quality
   ,      c.month
   ,      c.person_name
   ,      c.range
   ,      c.record_number
   ,      c.reference
   ,      c.ship
   ,      c.size_
   ,      c.species
   ,      c.speed
   ,      c.sst
   from   param                     p
   ,      v_filter_meds_job_number  a
   ,      mlo_jellyfish_observation b
   ,      mlo_jellyfish_data        c
   where  a.medsfilter              = p.medsfilter
   and    a.label_layer             = 'JELLYFISH'
   and    b.meds_job_number         = a.meds_job_number
   and    c.meds_job_number         = b.meds_job_number
   and    c.meds_observation_number = b.meds_observation_number
;
