  CREATE INDEX "MEDSADMIN"."SI_MLOFISH" ON "MEDSADMIN"."MLO_FISH_OBSERVATION" ("LOCATION") 
   INDEXTYPE IS "MDSYS"."SPATIAL_INDEX_V2"  PARAMETERS (' ');

DROP INDEX SI_MLOBIRDS
/

update MLO_FISH_OBSERVATION a
set location = MDSYS.sdo_geometry(2001, 4326, MDSYS.SDO_POINT_TYPE(a.LONGITUDE, a.LATITUDE, null), null, null);

----------------------------------------------------------------------------------------------------------------------------------

update biomass_observation a
set a.location = sdo_cs.transform (location, 4326);

drop index SI_BIOMASS
update BIOMASS_OBSERVATION a
set LOCATION = MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(a.longitude, a.latitude, NULL), NULL, NULL);

insert into user_sdo_geom_metadata 
using 
select 'RT43495_VIEW'
, column_name
, diminfo
, srid 
from all_sdo_geom_metadata 
where owner = 'DEV' 
and table_name = 'RT43495'; 	


select * 
from all_sdo_geom_metadata;

insert into user_sdo_geom_metadata 
values ('ADCP_OBSERVATION',  'LOCATION',  mdsys.sdo_dim_array(mdsys.sdo_dim_element('X', -180, 180, 0.05), mdsys.sdo_dim_element('Y', -90, 90, 0.05)),  4326);  	  

CREATE INDEX "MEDSADMIN"."SI_BIOMASS" ON "MEDSADMIN"."BIOMASS_OBSERVATION" ("LOCATION") 
   INDEXTYPE IS "MDSYS"."SPATIAL_INDEX_V2"  PARAMETERS (' ');

select t.location.sdo_srid 
from eddy_satellite_observation t;

select table_name, column_name, srid
from user_sdo_geom_metadata 
where table_name='MLO_FISH_OBSERVATION'; 

select t.location.sdo_srid,
   t.location.SDO_GTYPE,
   t.location.SDO_POINT.x,
   t.location.SDO_POINT.y,
   t.location.SDO_POINT.z,
   t.location.sdo_elem_info,
   t.location.sdo_ordinates
from ADCP_OBSERVATION t;

select t.CRUISE_GEOMETRY.sdo_srid,
   t.CRUISE_GEOMETRY.SDO_GTYPE,
   t.CRUISE_GEOMETRY.SDO_POINT.x,
   t.CRUISE_GEOMETRY.SDO_POINT.y,
   t.CRUISE_GEOMETRY.SDO_POINT.z,
   t.CRUISE_GEOMETRY.sdo_elem_info,
   t.CRUISE_GEOMETRY.sdo_ordinates
from cruise_layer t;

select t.LIMITS.sdo_srid,
   t.LIMITS.SDO_GTYPE,
   t.LIMITS.SDO_POINT.x,
   t.LIMITS.SDO_POINT.y,
   t.LIMITS.SDO_POINT.z,
   t.LIMITS.sdo_elem_info,
   t.LIMITS.sdo_ordinates
from TIFF_CHARTS t;

select table_name, column_name, srid, *
from user_sdo_geom_metadata 
where table_name='BIOMASS_OBSERVATION'; 
--and column_name='LOCATION' ;              -- 4326 is latitude & longitude

drop index SI_BIOMASS;

update BIOMASS_OBSERVATION a
set LOCATION = MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(a.longitude, a.latitude, NULL), NULL, NULL);

select distinct data_type from all_tab_columns where ;


select * from all_tab_columns 
where owner = 'MEDSADMIN'
and data_type = 'SDO_GEOMETRY'
order by 2;

select *
from user_sdo_geom_metadata ;