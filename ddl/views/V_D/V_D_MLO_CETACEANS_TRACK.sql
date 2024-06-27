create or replace force editionable view "V_D_MLO_CETACEANS_TRACK" 
as
   with param
   as
   (
      select /* +materialize */
             nv('P0_MEDSFILTER') medsfilter
      from   dual
   )
   select b.meds_job_number
   ,		 b.meds_track_number
   ,      b.date_recorded_start
   ,      b.date_recorded_end
   ,      b.latitude_start
   ,      b.latitude_end
   ,      b.longitude_start
   ,      b.longitude_end
   ,      b.monitoring_type
   ,      b.num_obs
   ,      b.period_of_sonar
   ,      b.sea_state
   ,      b.ship
   ,      b.sound_source
   ,      b.wind_speed
   ,      b.offset_staft
   ,      b.offset_end
   from   param                     p
   ,      v_filter_meds_job_number  a
   ,      mlo_cetaceans_track       b
   where  a.medsfilter              = p.medsfilter
   and    a.label_layer             = 'CETACEANS TRACK'
   and    b.meds_job_number         = a.meds_job_number
;