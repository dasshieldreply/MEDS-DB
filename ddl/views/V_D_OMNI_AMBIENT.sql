create or replace force editionable view "V_D_OMNI_AMBIENT" 
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
   ,      c.buoy_type
   ,      c.channel
   ,      c.comments
   ,      c.contact_density
   ,      c.contact_details
   ,      c.country
   ,      c.depth
   ,      c.hz_10
   ,      c.hz_100
   ,      c.hz_1000
   ,      c.hz_115
   ,      c.hz_1150
   ,      c.hz_120
   ,      c.hz_1205
   ,      c.hz_125
   ,      c.hz_1250
   ,      c.hz_12_5
   ,      c.hz_135
   ,      c.hz_150
   ,      c.hz_1500
   ,      c.hz_155
   ,      c.hz_16
   ,      c.hz_160
   ,      c.hz_1600
   ,      c.hz_1700
   ,      c.hz_20
   ,      c.hz_200
   ,      c.hz_2000
   ,      c.hz_240
   ,      c.hz_2400
   ,      c.hz_248
   ,      c.hz_25
   ,      c.hz_250
   ,      c.hz_2500
   ,      c.hz_300
   ,      c.hz_305
   ,      c.hz_315
   ,      c.hz_3150
   ,      c.hz_31_5
   ,      c.hz_3_15
   ,      c.hz_4
   ,      c.hz_40
   ,      c.hz_400
   ,      c.hz_4000
   ,      c.hz_440
   ,      c.hz_450
   ,      c.hz_5
   ,      c.hz_50
   ,      c.hz_500
   ,      c.hz_5000
   ,      c.hz_55
   ,      c.hz_60
   ,      c.hz_600
   ,      c.hz_605
   ,      c.hz_63
   ,      c.hz_630
   ,      c.hz_6300
   ,      c.hz_660
   ,      c.hz_6_3
   ,      c.hz_720
   ,      c.hz_75
   ,      c.hz_8
   ,      c.hz_80
   ,      c.hz_800
   ,      c.hz_8000
   ,      c.hz_850
   ,      c.hz_900
   ,      c.hz_950
   ,      c.month
   ,      c.ofp_number
   ,      c.platform_type
   ,      c.precipitation
   ,      c.qc
   ,      c.record_number
   ,      c.s00_05
   ,      c.s05_10
   ,      c.s10_20
   ,      c.s20_50
   ,      c.sea_state
   ,      c.ship
   ,      c.time
   ,      c.wave_direction
   ,      c.wave_height
   ,      c.wind_direction
   ,      c.wind_speed
   from   param                     p
   ,      v_filter_meds_job_number  a
   ,      omni_ambient_observation  b
   ,      omni_ambient_data         c
   where  a.medsfilter              = p.medsfilter
   and    a.label_layer             = 'OMNI AMBIENT'
   and    b.meds_job_number         = a.meds_job_number
   and    c.meds_job_number         = b.meds_job_number
   and    c.meds_observation_number = b.meds_observation_number
;