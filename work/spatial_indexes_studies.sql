 drop INDEX "MEDSADMIN"."SI_MLOPINNIPEDS";
  
  CREATE INDEX "MEDSADMIN"."SI_MLOPINNIPEDS" ON "MEDSADMIN"."MLO_PINNIPEDS_OBSERVATION" ("LOCATION") 
   INDEXTYPE IS "MDSYS"."SPATIAL_INDEX_V2"  PARAMETERS (' ');


select t.LOCATION.sdo_srid from MLO_PINNIPEDS_OBSERVATION t;
select srid from user_sdo_geom_metadata where table_name='MLO_PINNIPEDS_OBSERVATION' and column_name='LOCATION' ;

update MLO_PINNIPEDS_OBSERVATION a  
    set a.geom.sdo_srid = 4326;

update MLO_PINNIPEDS_OBSERVATION s set s.geometry.sdo_srid = 4326;


update user_sdo_geom_metadata a
set a.srid=4326
where a.table_name = 'MLO_PINNIPEDS_OBSERVATION';

select * from USER_SDO_GEOM_METADATA;