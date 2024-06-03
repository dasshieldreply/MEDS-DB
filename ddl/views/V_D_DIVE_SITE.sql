create or replace force editionable view "V_D_DIVE_SITE" 
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
   ,      c.area
   ,      c.comments
   ,      c.date_recorded
   ,      c.DEPTH
   ,      c.inshore_offshore
   ,      c.lat_lon
   ,      c.main_species
   ,      c.NAME
   ,      c.region
   ,      c.site_number
   ,      c.time_of_year
   ,      c.type_of_activity
   ,      c.water_clarity
   from   param                     p
   ,      v_filter_meds_job_number  a
   ,      dive_site_observation     b
   ,      dive_site_data            c
   where  a.medsfilter              = p.medsfilter
   and    a.label_layer             = 'DIVE SITE'
   and    b.meds_job_number         = a.meds_job_number
   and    c.meds_job_number         = b.meds_job_number
   and    c.meds_observation_number = b.meds_observation_number
;