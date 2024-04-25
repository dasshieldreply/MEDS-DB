--------------------------------------------------------
--  DDL for View V_STG_SERD_ROW_MAIN
--------------------------------------------------------

CREATE OR REPLACE FORCE EDITIONABLE VIEW "MEDSADMIN"."V_STG_SERD_ROW_MAIN" ("STG_FILE_SERD_ROW", "STG_FILE", "ROW_SEQUENCE", "RECORDNUMBER", "DATAID", "DATAUSECODE", "FILECODE", "MARSDENSQUARE", "DEGREESQUARE", "POSITIONGEO", "QUADRANT", "POSITIONMIASCODE", "POSITIONACCURACY", "POSITIONREFERENCE", "ARCHIVEYEAR", "OBSERVATIONDATE", "OBSERVATIONTIME", "COUNTRY", "SHIPNUMBER", "SHIPNUMBERCODE", "ORIGINATORCRUISE", "STATION", "INSTITUTENUMBER", "INSTITUTENUMBERCODE", "LANDCHECK", "DEPTHLEVELCOUNT", "DEPTHTOSEABED", "OBSERVATIONDEPTHMIN", "OBSERVATIONDEPTHMAX", "DEPTHCORRECTION", "TEMPERATURECORRECTION", "SALINITYCORRECTION", "SOUNDVELOCITYCORRECTION", "UNITS", "INSTRUMENTCODE", "DATATYPE", "DATAMODE", "METHOD", "WINDDIRECTION", "WINDSPEED", "AIRTEMPERATUREDRY", "AIRTEMPERATUREWET", "WEATHER", "CLOUD", "SEASTATE", "WAVEPERIOD", "WAVEHEIGHT", "ATMOSPHERICPRESSURE", "WATERCOLOUR", "WATERTRANSPARENCY", "SALINITYSCALECODE", "BTSEASURFACEINSTRUMENT", "BTSEASURFACETEMPERATURE", "MBTTEMPERATURECORRECTION", "MBTTYPE", "MBTGRADE", "COMMENTCOUNT", "COMMENTCONTENT", "ENDOFHEADER", "DEPTHINDICATORCODE", "DEPTHLEVEL", "DEPTHCODE", "TEMPERATURE", "TEMPERATUREQUALITY", "SALINITY", "SALINITYQUALITY", "SOUNDVELOCITY", "SOUNDVELOCITYQUALITY", "SOUNDVELOCITYCODE") DEFAULT COLLATION "USING_NLS_COMP"  AS 
select a.stg_file_serd_row
,      a.stg_file
,      a.row_sequence
,      substr(a.row_content,6,2)     recordnumber
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
,      substr(a.row_content,88,5)    depthtoseabed 
,      substr(a.row_content,93,4)    observationdepthmin 
,      substr(a.row_content,97,4)    observationdepthmax
,      substr(a.row_content,101,3)   depthcorrection 
,      substr(a.row_content,105,3)   temperaturecorrection
,      substr(a.row_content,108,4)   salinitycorrection
,      substr(a.row_content,112,3)   soundvelocitycorrection
,      substr(a.row_content,115,1)   units 
,      substr(a.row_content,116,2)   instrumentcode 
,      substr(a.row_content,118,1)   datatype 
,      substr(a.row_content,119,1)   datamode
,      substr(a.row_content,120,1)   method
,      substr(a.row_content,121,2)   winddirection
,      substr(a.row_content,123,2)   windspeed
,      substr(a.row_content,125,4)   airtemperaturedry
,      substr(a.row_content,129,4)   airtemperaturewet
,      substr(a.row_content,133,1)   weather 
,      substr(a.row_content,134,1)   cloud
,      substr(a.row_content,135,1)   seastate 
,      substr(a.row_content,136,2)   waveperiod 
,      substr(a.row_content,138,2)   waveheight 
,      substr(a.row_content,140,4)   atmosphericpressure 
,      substr(a.row_content,145,2)   watercolour
,      substr(a.row_content,147,2)   watertransparency
,      substr(a.row_content,149,1)   salinityscalecode 
,      substr(a.row_content,150,1)   btseasurfaceinstrument 
,      substr(a.row_content,151,4)   btseasurfacetemperature 
,      substr(a.row_content,155,3)   mbttemperaturecorrection
,      substr(a.row_content,158,1)   mbttype
,      substr(a.row_content,159,1)   mbtgrade 
,      substr(a.row_content,215,2)   commentcount 
,      substr(a.row_content,217,630) commentcontent 
,      substr(a.row_content,847,1)   endofheader 
,      substr(a.row_content,848,1)   depthindicatorcode
,      substr(a.row_content,849,4)   depthlevel 
,      substr(a.row_content,853,1)   depthcode
,      substr(a.row_content,854,4)   temperature 
,      substr(a.row_content,858,1)   temperaturequality 
,      substr(a.row_content,859,5)   salinity
,      substr(a.row_content,864,1)   salinityquality 
,      substr(a.row_content,865,5)   soundvelocity 
,      substr(a.row_content,870,1)   soundvelocityquality 
,      substr(a.row_content,871,1)   soundvelocitycode 
from   stg_file_serd_row a
where  substr(a.row_content,5,1) = '2'
;
