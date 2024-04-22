--------------------------------------------------------
--  DDL for View V_STG_SERD_ROW_CONTINUATION
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "MEDSADMIN"."V_STG_SERD_ROW_CONTINUATION" ("RECORDNUMBER", "DATAID", "DATAUSECODE", "FILECODE", "MARSDENSQUARE", "DEGREESQUARE", "POSITIONGEO", "QUADRANT", "POSITIONMIASCODE", "POSITIONACCURACY", "POSITIONREFERENCE", "ARCHIVEYEAR", "OBSERVATIONDATE", "OBSERVATIONTIME", "COUNTRY", "SHIPNUMBER", "SHIPNUMBERCODE", "ORIGINATORCRUISE", "STATION", "INSTITUTENUMBER", "INSTITUTENUMBERCODE", "LANDCHECK", "DEPTHLEVELCOUNT", "DEPTHLEVEL", "DEPTHCODE", "TEMPERATURE", "TEMPERATUREQUALITY", "SALINITY", "SALINITYQUALITY", "SOUNDVELOCITY", "SOUNDVELOCITYQUALITY", "SOUNDVELOCITYCODE") DEFAULT COLLATION "USING_NLS_COMP"  AS 
  with param
as
(
   select /* +materialize */
          nv('P0_STG_FILE') stg_file
   from   dual
)
select substr(a.row_content,6,2)     recordnumber
,      substr(a.row_content,8,1)     dataid
,      substr(a.row_content,9,1)     datausecode
,      substr(a.row_content,10,1)    filecode 
,      substr(a.row_content,12,3)    marsdensquare
,      substr(a.row_content,15,2)    degreesquare
,      substr(a.row_content,17,14)   positiongeo
,      substr(a.row_content,32,1)    quadrant
,      substr(a.row_content,33,1)    positionmiascode
,      substr(a.row_content,34,1)    positionaccuracy
,      substr(a.row_content,35,11)   positionreference
,      substr(a.row_content,47,2)    archiveyear
,      substr(a.row_content,49,8)    observationdate
,      substr(a.row_content,57,4)    observationtime
,      substr(a.row_content,61,2)    country
,      substr(a.row_content,63,2)    shipnumber
,      substr(a.row_content,65,1)    shipnumbercode 
,      substr(a.row_content,66,8)    originatorcruise
,      substr(a.row_content,74,6)    station
,      substr(a.row_content,80,3)    institutenumber
,      substr(a.row_content,83,1)    institutenumbercode
,      substr(a.row_content,81,1)    landcheck 
,      substr(a.row_content,86,2)    depthlevelcount
,      substr(a.row_content,89,4)    depthlevel 
,      substr(a.row_content,93,1)    depthcode
,      substr(a.row_content,94,4)    temperature 
,      substr(a.row_content,98,1)    temperaturequality 
,      substr(a.row_content,99,5)    salinity
,      substr(a.row_content,104,1)   salinityquality 
,      substr(a.row_content,105,5)   soundvelocity 
,      substr(a.row_content,110,1)   soundvelocityquality 
,      substr(a.row_content,111,1)   soundvelocitycode 
from   param             p
,      stg_file_serd_row a
where  a.stg_file            = p.stg_file 
and    substr(a.row_content,5,1) = '3'
;
