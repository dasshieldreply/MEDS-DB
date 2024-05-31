create or replace force editionable view "V_D_AQUAPACK_PROFILE" 
as
   with param
   as
   (
      select /* +materialize */
             nv('P0_MEDSFILTER') medsfilter
      from   dual
   )
   select b.date_recorded
   ,      b.latitude
   ,      b.longitude
   ,      b.meds_job_number
   ,      b.meds_observation_number
   ,      b.seabed_depth
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
   ,      c.pressure
   ,      c.profile_id
   ,      c.salinity
   ,      c.salmax
   ,      c.salmin
   ,      c.saln
   ,      c.salsd
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
   ,      c.turbidity 
   from   param                        p
   ,      v_filter_meds_job_number     a
   ,      aquapack_profile_observation b
   ,      aquapack_profile_data        c
   where  a.medsfilter                 = p.medsfilter
   and    a.label_layer                = 'AQUAPACK PROFILE'
   and    b.meds_job_number            = a.meds_job_number
   and    c.meds_job_number            = b.meds_job_number
   and    c.meds_observation_number    = b.meds_observation_number
;