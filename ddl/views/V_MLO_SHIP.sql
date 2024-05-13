CREATE OR REPLACE FORCE EDITIONABLE VIEW V_MLO_SHIP
(
    meds_job_number 
,   meds_observation_number
,   date_recorded
,   latitude
,   longitude
,   activity
,   archived
,   bearing
,   code
,   comments
,   count
,   count_quality
,   heading
,   month
,   range
,   record_number
,   reference
,   ship
,   ship_table
,   size_
,   spare_1
,   spare_2
,   spare_3
,   speed
)  DEFAULT COLLATION "USING_NLS_COMP"  AS 
select a.meds_job_number 
,   a.meds_observation_number
,   a.date_recorded
,   a.latitude
,   a.longitude
,   b.activity
,   b.archived
,   b.bearing
,   b.code
,   b.comments
,   b.count
,   b.count_quality
,   b.heading
,   b.month
,   b.range
,   b.record_number
,   b.reference
,   b.ship
,   b.ship_table
,   b.size_
,   b.spare_1
,   b.spare_2
,   b.spare_3
,   b.speed
from        mlo_ship_observation   a
inner join  mlo_ship_data          b
    on  b.meds_job_number         = a.meds_job_number
    and b.meds_observation_number = a.meds_observation_number
;