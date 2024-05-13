CREATE OR REPLACE FORCE EDITIONABLE VIEW V_MLO_PINNIPEDS
(
    meds_job_number 
,   meds_observation_number
,   date_recorded
,   latitude
,   longitude
,   archived
,   bearing
,   code
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
,   archived
,   b.bearing
,   b.code
,   b.comments
,   b.count
,   b.count_quality
,   b.heading
,   b.id_quality
,   b.month
,   b.person_name
,   b.range
,   b.record_number
,   b.reference
,   b.ship
,   b.size_
,   b.species
,   b.speed
from        mlo_pinnipeds_observation   a
inner join  mlo_pinnipeds_data          b
    on  b.meds_job_number         = a.meds_job_number
    and b.meds_observation_number = a.meds_observation_number
;