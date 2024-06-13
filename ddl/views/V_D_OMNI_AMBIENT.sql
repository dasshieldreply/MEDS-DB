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
   ,      c.depth
   ,      c.wave_height
   ,      c.wind_speed
   ,      c.ofp_number
   ,      c.wind_direction
   ,      c.wave_direction
   ,      c.sea_state
   ,      c.contact_density
   ,      c.s05_10
   ,      c.s20_50
   ,      c.contact_details
   ,      c.qc
   ,      c.record_number
   ,      c.comments
   ,      c.s00_05
   ,      c.s10_20
   ,      c.ship
   ,      c.country
   ,      c.platform_type
   ,      c.MONTH
   ,      c.precipitation
   ,      c.TIME
   ,      c.hz_3_15
   ,      c.hz_4
   ,      c.hz_5
   ,      c.hz_6_3
   ,      c.hz_8
   ,      c.hz_10
   ,      c.hz_12_5
   ,      c.hz_16
   ,      c.hz_20
   ,      c.hz_25
   ,      c.hz_31_5
   ,      c.hz_40
   ,      c.hz_50
   ,      c.hz_55
   ,      c.hz_60
   ,      c.hz_63
   ,      c.hz_80
   ,      c.hz_100
   ,      c.hz_115
   ,      c.hz_120
   ,      c.hz_125
   ,      c.hz_135
   ,      c.hz_150
   ,      c.hz_155
   ,      c.hz_160
   ,      c.hz_200
   ,      c.hz_240
   ,      c.hz_248
   ,      c.hz_250
   ,      c.hz_300
   ,      c.hz_305
   ,      c.hz_315
   ,      c.hz_400
   ,      c.hz_440
   ,      c.hz_450
   ,      c.hz_500
   ,      c.hz_600
   ,      c.hz_605
   ,      c.hz_630
   ,      c.hz_660
   ,      c.hz_800
   ,      c.hz_850
   ,      c.hz_1000
   ,      c.hz_1150
   ,      c.hz_1205
   ,      c.hz_1250
   ,      c.hz_1500
   ,      c.hz_1600
   ,      c.hz_1700
   ,      c.hz_2000
   ,      c.hz_2400
   ,      c.hz_2500
   ,      c.hz_3150
   ,      c.hz_4000
   ,      c.hz_5000
   ,      c.hz_6300
   ,      c.hz_8000
   ,      c.hz_75
   ,      c.buoy_type
   ,      c.channel
   ,      c.hz_950
   ,      c.hz_720
   ,      c.hz_900
   ,      c.hz_174
   ,      c.hz_333
   ,      c.hz_650
   ,      c.hz_1800
   ,      c.hz_30
   ,      c.hz_750
   ,      c.hz_170
   ,      c.hz_172
   ,      c.hz_298
   ,      c.hz_480
   ,      c.hz_360
   ,      c.hz_540
   ,      c.hz_131
   ,      c.hz_49
   ,      c.hz_460
   ,      c.hz_640
   ,      c.hz_645
   ,      c.hz_295
   ,      c.hz_330
   ,      c.hz_110
   ,      c.hz_310
   ,      c.hz_1050
   ,      c.hz_90
   ,      c.hz_140
   ,      c.hz_29
   ,      c.hz_180
   ,      c.hz_105
   ,      c.hz_420
   ,      c.hz_290
   ,      c.hz_71
   ,      c.hz_368
   ,      c.hz_77
   ,      c.hz_145
   ,      c.hz_286
   ,      c.hz_173
   ,      c.hz_246
   ,      c.hz_585
   ,      c.hz_793
   ,      c.hz_340
   ,      c.hz_446
   ,      c.hz_808
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