CREATE OR REPLACE FORCE EDITIONABLE VIEW V_MLO_CETACEANS
(
    meds_job_number 
,   meds_observation_number
,   meds_track_number
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
,   meic
,   month
,   person_name
,   pisces_genus
,   pisces_species
,   range
,   record_number
,   reference
,   ship
,   size_
,   size_class
,   species
,   speed
,   sst
)  DEFAULT COLLATION "USING_NLS_COMP"  AS 
select a.meds_job_number 
,   a.meds_observation_number
,   a.meds_track_number
,   a.date_recorded
,   a.latitude
,   a.longitude
,   b.archived
,   b.bearing
,   b.comments
,   b.count
,   b.count_quality
,   b.heading
,   b.id_quality
,   b.meic
,   b.month
,   b.person_name
,   b.pisces_genus
,   b.pisces_species
,   b.range
,   b.record_number
,   b.reference
,   b.ship
,   b.size_
,   b.size_class
,   b.species
,   b.speed
,   b.sst
from        mlo_cetaceans_observation   a
inner join  mlo_cetaceans_data          b
    on  b.meds_job_number         = a.meds_job_number
    and b.meds_observation_number = a.meds_observation_number
;