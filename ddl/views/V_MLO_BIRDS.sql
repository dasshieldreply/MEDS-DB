CREATE OR REPLACE FORCE EDITIONABLE VIEW V_MLO_BIRDS
(
    meds_job_number 
,   meds_observation_number
,   date_recorded
,   latitude
,   longitude
,   species
,   id_quality
,   count
,   count_quality
,   ship
,   wd_dir
,   wd_spd
,   comments
,   archived
,   file_reference
)  DEFAULT COLLATION "USING_NLS_COMP"  AS 
select a.meds_job_number 
,   a.meds_observation_number
,   a.date_recorded
,   a.latitude
,   a.longitude
,   b.species
,   b.id_quality
,   b.count
,   b.count_quality
,   b.ship
,   b.wd_dir
,   b.wd_spd
,   b.comments
,   b.archived
,   b.file_reference
from        mlo_birds_observation   a
inner join  mlo_birds_data          b
    on  b.meds_job_number         = a.meds_job_number
    and b.meds_observation_number = a.meds_observation_number
;