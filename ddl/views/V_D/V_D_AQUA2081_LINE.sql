create or replace force editionable view "V_D_AQUA2081_LINE" 
as
   with param
   as
   (
      select /* +materialize */
             nv('P0_MEDSFILTER') medsfilter
      from   dual
   )
   select b.meds_job_number
   ,      b.meds_observation_number
   ,      b.date_recorded
   ,      b.latitude
   ,      b.longitude
   ,      c.bioluminescence
   ,      c.biolummax
   ,      c.biolummin
   ,      c.biolumn
   ,      c.biolumsd
   ,      c.chlormax
   ,      c.chlormin
   ,      c.chlorn
   ,      c.chlorophyll
   ,      c.chlorsd
   ,      c.condmax
   ,      c.condmin
   ,      c.condn
   ,      c.condsd
   ,      c.conductivity
   ,      c.date_recorded  date_recorded_data
   ,      c.depth
   ,      c.gelbmax
   ,      c.gelbmin
   ,      c.gelbn
   ,      c.gelbsd
   ,      c.gelbstoffe
   ,      c.hydrocarbons
   ,      c.hydromax
   ,      c.hydromin
   ,      c.hydron
   ,      c.hydrosd
   ,      c.latitude       latitude_data
   ,      c.longitude      longitude_data
   ,      c.pressure
   ,      c.salinity
   ,      c.salmax
   ,      c.salmin
   ,      c.saln
   ,      c.salsd
   ,      c.seabed_depth
   ,      c.soundmax
   ,      c.soundmin
   ,      c.soundn
   ,      c.soundsd
   ,      c.sound_speed
   ,      c.temperature
   ,      c.tempmax
   ,      c.tempmin
   ,      c.tempn
   ,      c.tempsd
   from   param                     p
   ,      v_filter_meds_job_number  a
   ,      aqua2081_line_observation b
   ,      aqua2081_line_data        c
   where  a.medsfilter              = p.medsfilter
   and    a.label_layer             = 'AQUA2081 LINE'
   and    b.meds_job_number         = a.meds_job_number
   and    c.meds_job_number         = b.meds_job_number
   and    c.meds_observation_number = b.meds_observation_number
;