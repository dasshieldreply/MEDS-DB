create or replace force editionable view "V_D_BIOLUMINESCENCE" 
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
   ,	    b.datetime
   ,		 c.airtd
   ,		 c.airtw
   ,		 c.archived
   ,		 c.area
   ,		 c.baro
   ,		 c.bowwv
   ,		 c.class
   ,		 c.colour
   ,		 c.comment_1
   ,		 c.diffuse
   ,		 c.ident
   ,		 c.mp_band
   ,		 c.mp_direction
   ,		 c.mp_dur
   ,		 c.mp_freq
   ,		 c.mp_length
   ,		 c.mp_no
   ,		 c.mp_rotate
   ,		 c.mp_seperate
   ,		 c.mp_spd
   ,		 c.patch
   ,		 c.pt
   ,		 c.range
   ,		 c.record_number
   ,		 c.reference
   ,		 c.samp
   ,		 c.ss
   ,		 c.sst
   ,		 c.stimulus
   ,		 c.surface
   ,		 c.vessel
   ,		 c.vhead
   ,		 c.vkts
   ,		 c.wake
   ,		 c.wdep
   ,		 c.wd_dir
   ,		 c.wd_spd
   ,		 c.wvcrsts
   from   param                        p
   ,      v_filter_meds_job_number     a
   ,      bioluminescence_observation  b
   ,      bioluminescence_data         c
   where  a.medsfilter                 = p.medsfilter
   and    a.label_layer                = 'BIOLUMINESCENCE'
   and    b.meds_job_number            = a.meds_job_number
   and    c.meds_job_number            = b.meds_job_number
   and    c.meds_observation_number    = b.meds_observation_number
;