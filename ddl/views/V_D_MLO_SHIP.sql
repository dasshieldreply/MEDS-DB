create or replace force editionable view "V_D_MLO_SHIP" 
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
   ,      c.activity
   ,      c.archived
   ,      c.bearing
   ,      c.code
   ,      c.comments
   ,      c.count
   ,      c.count_quality
   ,      c.heading
   ,      c.month
   ,      c.range
   ,      c.record_number
   ,      c.reference
   ,      c.ship
   ,      c.ship_table
   ,      c.size_
   ,      c.spare_1
   ,      c.spare_2
   ,      c.spare_3
   ,      c.speed
   from   param                     p
   ,      v_filter_meds_job_number  a
   ,      mlo_ship_observation      b
   ,      mlo_ship_data             c
   where  a.medsfilter              = p.medsfilter
   and    a.label_layer             = 'SHIP'
   and    b.meds_job_number         = a.meds_job_number
   and    c.meds_job_number         = b.meds_job_number
   and    c.meds_observation_number = b.meds_observation_number
;

