create or replace force editionable view "V_D_DIR_AMBIENT" 
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
   ,      b.date_recorded
   ,      c.archive_dat
   ,      c.array_depth
   ,      c.array_type
   ,      c.comments
   ,      c.country_code
   ,      c.exersize
   ,      c.frequency
   ,      c.location_description
   ,      c.number_of_frequencies
   ,      c.number_of_headings
   ,      c.number_of_iterations
   ,      c.octave_number
   ,      c.omni
   ,      c.platform
   ,      c.record_number
   ,      c.sea_state
   ,      c.ship_code
   ,      c.site_id_
   ,      c.speed
   ,      c.standard_deviation
   ,      c.water_depth
   ,      c.wind_speed
   ,      d.decibels
   ,      d.spectral_level
   from   param                     p
   ,      v_filter_meds_job_number  a
   ,      dir_ambient_observation   b
   ,      dir_ambient_data          c
   ,      dir_ambient_repeat        d
   where  a.medsfilter              = p.medsfilter
   and    a.label_layer             = 'DIR AMBIENT'
   and    b.meds_job_number         = a.meds_job_number
   and    c.meds_job_number         = b.meds_job_number
   and    c.meds_observation_number = b.meds_observation_number
   and    d.meds_job_number         = c.meds_job_number
   and    d.meds_observation_number = c.meds_observation_number
;