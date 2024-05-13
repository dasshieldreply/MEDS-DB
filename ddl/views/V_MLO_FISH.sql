CREATE OR REPLACE FORCE EDITIONABLE VIEW V_MLO_FISH
(
    meds_job_number 
,   meds_observation_number
,   date_recorded
,   latitude
,   longitude
,   archived
,   bearing
,   comments
,   count
,   count_quality
,   heading
,   id_quality
,   month
,   person_name
,   range
,   record_number
,   reference
,   ship
,   size_
,   species
,   speed
)  DEFAULT COLLATION "USING_NLS_COMP"  AS 
select a.meds_job_number 
,   a.meds_observation_number
,   a.date_recorded
,   a.latitude
,   a.longitude
,   B.archived
,   B.bearing
,   B.comments
,   B.count
,   B.count_quality
,   B.heading
,   B.id_quality
,   B.month
,   B.person_name
,   B.range
,   B.record_number
,   B.reference
,   B.ship
,   B.size_
,   B.species
,   B.speed
from        mlo_fish_observation   a
inner join  mlo_fish_data          b
    on  b.meds_job_number         = a.meds_job_number
    and b.meds_observation_number = a.meds_observation_number
;