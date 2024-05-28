CREATE OR REPLACE FORCE EDITIONABLE VIEW "MEDSADMIN"."V_MAP_MLO_SHIP_OBSERVATION" (
   "ICON"
,  "COLOR"
,  "MEDS_JOB_NUMBER"
,  "MEDS_OBSERVATION_NUMBER"
,  "LOCATION"
,  "LATITUDE"
,  "LONGITUDE"
,  "LABEL_DATE"
,  "SHIP"
,  "COUNT"
,	"LENGTH"
,	"SPEED"
,	"HEADING"
,	"ACTIVITY"
,	"COMMENTS"
,	"REFERENCE"
) DEFAULT COLLATION "USING_NLS_COMP"  
AS 
   with param as
   (
      select a.*
      from   v_map_filter_criteria a
      where  a.medsfilter = nv('P200_MEDSFILTER')
   )
   select p.icon
   ,      p.color
   ,      a.meds_job_number
   ,      a.meds_observation_number
   ,      a.location
   ,      a.latitude
   ,      a.longitude
   ,      to_char(a.date_recorded,'dd Mon yyyy') 
   ,		 b.ship
   ,		 b.count
   ,		 b.size_
   ,		 b.speed
   ,		 b.heading
   ,		 b.activity
   ,		 b.comments
   ,		 b.reference
   from   param                  p
   ,      mlo_ship_observation   a
   ,      mlo_ship_data          b
   where  a.meds_job_number         = p.meds_job_number   
   and    a.date_recorded between p.date_start and p.date_end
   and    b.meds_job_number         = a.meds_job_number
   and    b.meds_observation_number = a.meds_observation_number
   and    sdo_anyinteract(a.location, p.location_rectangle) = 'TRUE'
;