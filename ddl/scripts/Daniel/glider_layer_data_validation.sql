
   with param as
   (
         select a.*
         from   v_filter_meds_job_number a
         where  a.medsfilter = 34029312883968969992191058397610307787
   ),
   obsrv as
   (
      select   a.meds_job_number
      ,        a.meds_observation_number
      ,        min(b.date_recorded) label_min_date
      ,        max(b.date_recorded) label_max_date
      from     param                        p
      ,        glider_threaded_observation  a
      ,        glider_threaded_data         b
      where    a.meds_job_number            = p.meds_job_number   
      and      b.meds_job_number            = a.meds_job_number
      and      b.meds_observation_number    = a.meds_observation_number
      and      b.date_recorded between p.date_start and p.date_end 
      group by a.meds_job_number
      ,        a.meds_observation_number
   )
   select p.icon
   ,      p.color
   ,      o.meds_job_number
   ,      o.meds_observation_number
   ,      o.label_min_date
   ,      o.label_max_date
   ,      a.location
   ,      a.mid_latitude
   ,      a.mid_longitude
   ,      a.distance_traveled
   ,      b.supplier
   from   obsrv                        o
   ,      param                        p
   ,      glider_threaded_observation  a
   ,      job_tracking                 b
   where  p.meds_job_number            = o.meds_job_number
   and    a.meds_job_number            = o.meds_job_number   
   and    a.meds_observation_number    = o.meds_observation_number
   and    sdo_anyinteract(a.location, p.location_rectangle) = 'TRUE'
   and    b.meic_number                = p.meic_number
;

-- 1,2,1 = Starting at first ordinate, line string whose vertices are connected by straight line segments

select t.location.sdo_srid,
   t.location.SDO_GTYPE,
   t.location.SDO_POINT.x,
   t.location.SDO_POINT.y,
   t.location.SDO_POINT.z,
   t.location.sdo_elem_info,
   t.location.sdo_ordinates
from glider_threaded_observation t
where t.meds_job_number = 102650;

select SDO_GEOM.VALIDATE_GEOMETRY_WITH_CONTEXT
(
   MDSYS.SDO_GEOMETRY
   (
      2002,
      4326,
      NULL,
      MDSYS.SDO_ELEM_INFO_ARRAY
      (
         1,
         2,
         1
      ),
      MDSYS.SDO_ORDINATE_ARRAY
      (
         -4.4944, 50.0673,
         -4.4943, 50.0673,
         -4.4941, 50.0674,
         -4.494, 50.0674,
         -4.4939, 50.0674,
         -4.4937, 50.0674,
         -4.4936, 50.0675,
         -4.4934, 50.0675,
         -4.4933, 50.0675,
         -4.4932, 50.0676,
         -4.493, 50.0676,
         -4.4929, 50.0676,
         -4.4927, 50.0676,
         -4.4926, 50.0677,
         -4.4925, 50.0677,
         -4.4923, 50.0677,
         -4.4922, 50.0678,
         -4.492, 50.0678,
         -4.4919, 50.0678,
         -4.4918, 50.0678,
         -4.4916, 50.0679,
         -4.4915, 50.0679,
         -4.4913, 50.0679,
         -4.4912, 50.068
         )
      ),
      0.005
   ) line
from dual;