CREATE OR REPLACE FORCE EDITIONABLE VIEW V_BIOLUMINESCENCE
(
    meds_job_number
,   meds_observation_number
,   datetime
,   latitude
,   longitude
,   airtd
,   airtw
,   archived
,   area
,   baro
,   bowwv
,   class
,   colour
,   comment_1
,   diffuse
,   ident
,   meds_job_number
,   meds_observation_number
,   mp_band
,   mp_direction
,   mp_dur
,   mp_freq
,   mp_length
,   mp_no
,   mp_rotate
,   mp_seperate
,   mp_spd
,   patch
,   pt
,   range
,   record_number
,   reference
,   samp
,   ss
,   sst
,   stimulus
,   surface
,   vessel
,   vhead
,   vkts
,   wake
,   wdep
,   wd_dir
,   wd_spd
,   wvcrsts
)  DEFAULT COLLATION "USING_NLS_COMP"  AS 
select 
    a.meds_job_number
,   a.meds_observation_number
,   a.datetime
,   a.latitude
,   a.longitude
,   b.airtd
,   b.airtw
,   b.archived
,   b.area
,   b.baro
,   b.bowwv
,   b.class
,   b.colour
,   b.comment_1
,   b.diffuse
,   b.ident
,   b.meds_job_number
,   b.meds_observation_number
,   b.mp_band
,   b.mp_direction
,   b.mp_dur
,   b.mp_freq
,   b.mp_length
,   b.mp_no
,   b.mp_rotate
,   b.mp_seperate
,   b.mp_spd
,   b.patch
,   b.pt
,   b.range
,   b.record_number
,   b.reference
,   b.samp
,   b.ss
,   b.sst
,   b.stimulus
,   b.surface
,   b.vessel
,   b.vhead
,   b.vkts
,   b.wake
,   b.wdep
,   b.wd_dir
,   b.wd_spd
,   b.WVCRSTS
from        bioluminescence_observation   a
inner join  bioluminescence_data          b
    on  b.meds_job_number         = a.meds_job_number
    and b.meds_observation_number = a.meds_observation_number
;