select * from MDSYS.CS_SRS;
/*
DROP INDEX SI_EDDYSATELLITE
/
update UNIFIED_SECCHI_OBSERVATION a
set location = MDSYS.sdo_geometry(2001, 4326, MDSYS.SDO_POINT_TYPE(a.LONGITUDE, a.LATITUDE, null), null, null);
/
commit;
/
CREATE INDEX "MEDSADMIN"."SI_UNIFIEDSECCHI" ON "MEDSADMIN"."UNIFIED_SECCHI_OBSERVATION" ("LOCATION")  INDEXTYPE IS "MDSYS"."SPATIAL_INDEX_V2"  PARAMETERS (' ');
/
delete from DIVE_SITE_OBSERVATION where latitude is null
/
*/
update PROFILE_INDEX_TONLY a
set a.location = MDSYS.sdo_geometry(2001, 4326, MDSYS.SDO_POINT_TYPE(a.LONGITUDE, a.LATITUDE, null), null, null);
/
commit;
/
CREATE INDEX "MEDSADMIN"."SI_EDDYSATELLITE" ON "MEDSADMIN"."EDDY_SATELLITE_OBSERVATION" ("LOCATION")  INDEXTYPE IS "MDSYS"."SPATIAL_INDEX_V2"  PARAMETERS (' ');
/
delete from EDDY_SATELLITE_OBSERVATION 
/



/*

--ORA-13200: internal error [ROWID:AACFm+AAAAACPU2AAA] in spatial indexing.

Select *--a.location 
from EDDY_SATELLITE_OBSERVATION a
WHERE a.ROWID = 'AACFm+AAAAACPU2AAA';

select t.location.sdo_srid,
   t.location.SDO_GTYPE,
   t.location.SDO_POINT.x,
   t.location.SDO_POINT.y,
   t.location.SDO_POINT.z,
   t.location.sdo_elem_info,
   t.location.sdo_ordinates
from profile_index_sv t;


select sdo_geom.validate_geometry_with_context(MDSYS.SDO_GEOMETRY(2002, NULL, NULL, 
        MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1), MDSYS.SDO_ORDINATE_ARRAY(50.0, 15.0, 55.0, 15.0, 55.0, 15.0, 15.0, 60.0)),0.005) as contextError 
  from dual;
  
  
select sdo_geom.validate_geometry_with_context(MDSYS.SDO_GEOMETRY(2003,4326,NULL,
    MDSYS.SDO_ELEM_INFO_ARRAY(1,1003,1),
    MDSYS.SDO_ORDINATE_ARRAY(-91.54,27.49,-91.72,27.36,-91.86,27.16,-91.93,26.91,-91.92,26.64,-91.85,26.35,-91.72,26.06,-91.53,25.81,-91.3,25.59,-91.05,25.44,-90.78,25.35,-90.53,25.34,-90.3,25.41,-90.11,25.54,-89.97,25.74,-89.9,25.99,-89.9,26.26,-89.96,26.55,-90.1,26.84,-90.28,27.09,-90.51,27.31,-90.77,27.46,-91.04,27.55,-91.3,27.56,-91.54,27.49)), 0.005)
from dual;

CREATE TABLE val_results (sdo_rowid ROWID, result varchar2(1000));
/
CALL SDO_GEOM.VALIDATE_LAYER_WITH_CONTEXT('EDDY_SATELLITE_OBSERVATION','LOCATION','VAL_RESULTS');
/
SELECT * from val_results;
/
select *
from user_sdo_geom_metadata 
where table_name='EDDY_SATELLITE_OBSERVATION'; 

select t.location.sdo_srid 
from eddy_satellite_observation t;

select table_name, column_name, srid
from user_sdo_geom_metadata 
where table_name='Eddy_Satellite_Observation'; 

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


select distinct data_type from all_tab_columns where ;

select * from all_tab_columns 
where owner = 'MEDSADMIN'
and data_type = 'SDO_GEOMETRY'
order by 2;

select *
from user_sdo_geom_metadata ;
*/