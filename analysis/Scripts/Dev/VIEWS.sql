--------------------------------------------------------
--  DDL for View ADCP_H102_12_16
--------------------------------------------------------

  CREATE OR REPLACE VIEW "MEDSDATA"."ADCP_H102_12_16" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER", "DATE_RECORDED", "JULIAN_DAY", "LATITUDE", "LONGITUDE", "PROFILE", "BIN", "SPEED", "DIRECTION", "DEPTH_BSL") AS 
  SELECT A.MEDS_JOB_NUMBER,
          A.MEDS_OBSERVATION_NUMBER,
          A.DATE_RECORDED,
          AD.JULIAN_DAY,
          A.LATITUDE,
          A.LONGITUDE,
          A.PROFILE,
          AR.BIN,
          AR.SPEED,
          AR.DIRECTION,
          AR.DEPTH_BSL
     FROM ADCP_OBSERVATION a,  ADCP_DATA ad,  ADCP_REPEAT ar, MEDS_PROCESSING_JOB m
    WHERE     M.JOB_NUMBER = A.MEDS_JOB_NUMBER
          AND A.MEDS_JOB_NUMBER=AD.MEDS_JOB_NUMBER
          AND A.MEDS_OBSERVATION_NUMBER=AD.MEDS_OBSERVATION_NUMBER
          AND AD.MEDS_JOB_NUMBER = AR.MEDS_JOB_NUMBER
          AND AD.MEDS_OBSERVATION_NUMBER = AR.MEDS_OBSERVATION_NUMBER
          AND M.MEDS_CRUISE_NUMBER = 2763
          AND A.MEDS_JOB_NUMBER=99401
 
;
--------------------------------------------------------
--  DDL for View BEACH_ARCGIS
--------------------------------------------------------

  CREATE OR REPLACE VIEW "MEDSDATA"."BEACH_ARCGIS" ("ID", "COUNTRY", "SECTOR", "BEACH_NAME", "BEACH_NO", "LONGITUDE", "LATITUDE", "MAP", "SHEET", "GRID", "CARD_1", "CARD_2", "BEACH_CAT", "BEACH_DIM", "ANCHORAGE1", "ANCHORAGE2", "SURF_COND", "SURF_HT", "SURF_SEA1", "SURF_SEA2", "DATE_SURV", "Q_OF_REECE", "AP_SEAW1", "AP_SEAW2", "AP_SEAW3", "GRA_NSHORE", "ASGRA_FSHORE", "GRA_BSHORE", "BEACH_COMP", "TRAFFIC", "HINTLAND_1", "HINTLAND_2", "HINTLAND_3", "J_RPS_HD_1", "J_RPS_HD_2", "AR_LG_STS1", "AR_LG_STS2", "WTR_ENG_1", "WTR_ENG_2", "EXIT_CONDITIONS", "EXIT_DES_1", "EXIT_DES_2", "EXIT_DES_3", "PUB_STATUS", "TYPE_IMAGY", "BEACH_CHGS", "BEACH_C_NO", "CD_ROM_REF", "CLASS", "TBEACHESID", "ORIGINATOR", "CURRENT_SP", "CURRENT_OR", "GRAD_OVRLL", "GD_SY_DATE", "GRAD_BEARG", "OBSTRUCTS", "DRP_ZE_DPT", "DRP_ZE_LOC", "LK_GRD_PHO", "LK_BCH_DIA", "LK_GRD_DIA", "MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") AS 
  SELECT id, B.COUNTRY,
       B.SECTOR,
       B.BEACH_NAME,
       B.BEACH_NUMBER as BEACH_NO,
       B.LONGITUDE,
       B.LATITUDE,
       B.MAP,
       B.SHEET,
       B.GRID,
       B.CARD_1,
       B.CARD_2,
       B.BEACH_CATEGORY as BEACH_CAT,
       B.BEACH_DIMENSIONS as BEACH_DIM,
       replace(ANCHORAGE_1 ,'""' ,'"') as ANCHORAGE1,
       replace(ANCHORAGE_2 ,'""' ,'"') as ANCHORAGE2,
       B.SURF_CONDITIONS as SURF_COND,
       B.SURF_HEIGHT as SURF_HT,
       replace( SURF_SEA_SWELL_1,'""' ,'"') as  SURF_SEA1,
       replace( SURF_SEA_SWELL_2,'""' ,'"') as  SURF_SEA2,
       B.DATE_OF_SURVEY as DATE_SURV,
       B.QUALITY_OF_REECE as Q_OF_REECE,
       replace( APPROACH_SEAWARD_1,'""' ,'"') as  AP_SEAW1,
       replace( APPROACH_SEAWARD_2,'""' ,'"') as  AP_SEAW2,
       replace( APPROACH_SEAWARD_3,'""' ,'"') as  AP_SEAW3,
       B.GRADIENT_NEARSHORE as gra_nshore,
       B.GRADIENT_FORESHORE asgra_fshore ,
       B.GRADIENT_BACKSHORE as gra_bshore,
       B.BEACH_COMPOSITION as BEACH_COMP,
       B.TRAFFICABILITY as TRAFFIC,
       replace( HINTERLAND_1,'""' ,'"') as  HINTLAND_1,
       replace( HINTERLAND_2,'""' ,'"') as  HINTLAND_2,
       replace( HINTERLAND_3,'""' ,'"') as  HINTLAND_3,
       replace( JETTIES_RAMPS_HARDS_1,'""' ,'"') as  J_RPS_HD_1,
       replace( JETTIES_RAMPS_HARDS_2,'""' ,'"') as  J_RPS_HD_2,
       replace( AIR_LANDING_SITES_1,'""' ,'"') as  AR_LG_STS1,
       replace( AIR_LANDING_SITES_2,'""' ,'"') as   AR_LG_STS2,
       replace( WATER_AND_ENGINEERING_1,'""' ,'"') as  WTR_ENG_1,
       replace( WATER_AND_ENGINEERING_2,'""' ,'"') as   WTR_ENG_2,
       B.EXIT_CONDITIONS,
       replace( EXIT_DESCRIPTION_1,'""' ,'"') as  EXIT_DES_1,
       replace( EXIT_DESCRIPTION_2,'""' ,'"') as  EXIT_DES_2,
       Case when b.EXIT_DESCRIPTION_3 = '""' THEN null When b.EXIT_DESCRIPTION_3 = '"' then null when b.EXIT_DESCRIPTION_3 = '" "' then null ELSE B.EXIT_DESCRIPTION_3 END as EXIT_DES_3,
       B.PUBLICATION_STATUS as PUB_STATUS,
       B.TYPE_OF_IMAGERY as TYPE_IMAGY,
       B.BEACH_CHANGES as BEACH_CHGS,
       B.BEACH_CHANGES_NO as BEACH_C_NO,
       B.CD_ROM_REFERENCE as CD_ROM_REF,
       B.CLASSIFICATION as CLASS,
       B.TBLBEACHESID as TBEACHESID,
       B.ORIGINATOR,
       B.CURRENT_SPEED as CURRENT_SP,
       B.CURRENT_ORIENTATION as CURRENT_OR,
       B.GRADIENT_OVERALL as GRAD_OVRLL,
       B.GRADIENT_SURVEY_DATE as GD_SY_DATE,
       B.GRADIENT_BEARING as GRAD_BEARG,
       B.OBSTRUCTIONS as OBSTRUCTS,
       B.DROP_ZONE_DESCRIPTION as DRP_ZE_DPT,
       B.DROP_ZONE_LOCATION as DRP_ZE_LOC,
       B.LINK_TO_GROUND_PHOTO as LK_GRD_PHO,
       B.LINK_TO_BEACH_DIAGRAM as LK_BCH_DIA,
       B.LINK_TO_GRADIENT_DIAGRAM as LK_GRD_DIA,
       B.MEDS_JOB_NUMBER,
       B.MEDS_OBSERVATION_NUMBER
  FROM BEACH_TEMP1 b
 
;
--------------------------------------------------------
--  DDL for View BEACH_DATA_POS
--------------------------------------------------------

  CREATE OR REPLACE VIEW "MEDSDATA"."BEACH_DATA_POS" ("LATITUDE", "LONGITUDE", "TBLBEACHESID", "MAP", "SHEET", "GRID", "ANCHORAGE", "SURF_CONDITIONS", "SURF_SEA_SWELL", "APPROACH_SEAWARD", "OBSTRUCTIONS", "JETTIES_RAMPS_HARDS", "AIR_LANDING_SITES", "WATER_AND_ENGINEERING", "PUBLICATION_STATUS", "CD_ROM_REFERENCE", "TYPE_OF_IMAGERY", "CLASSIFICATION", "ORIGINATOR", "CURRENT_SPEED", "CURRENT_ORIENTATION", "GRADIENT_OVERALL", "GRADIENT_SURVEY_DATE", "GRADIENT_BEARING", "DROP_ZONE_DESCRIPTION", "DROP_ZONE_LOCATION", "LINK_TO_GROUND_PHOTO", "LINK_TO_BEACH_DIAGRAM", "LINK_TO_GRADIENT_DIAGRAM", "CARD_2", "MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER", "CARD_1", "EXIT_DESCRIPTION", "HINTERLAND") AS 
  select bo.LATITUDE, bo.LONGITUDE , b."TBLBEACHESID",b."MAP",b."SHEET",b."GRID",b."ANCHORAGE",b."SURF_CONDITIONS",b."SURF_SEA_SWELL",b."APPROACH_SEAWARD",b."OBSTRUCTIONS",b."JETTIES_RAMPS_HARDS",b."AIR_LANDING_SITES",b."WATER_AND_ENGINEERING",b."PUBLICATION_STATUS",b."CD_ROM_REFERENCE",b."TYPE_OF_IMAGERY",b."CLASSIFICATION",b."ORIGINATOR",b."CURRENT_SPEED",b."CURRENT_ORIENTATION",b."GRADIENT_OVERALL",b."GRADIENT_SURVEY_DATE",b."GRADIENT_BEARING",b."DROP_ZONE_DESCRIPTION",b."DROP_ZONE_LOCATION",b."LINK_TO_GROUND_PHOTO",b."LINK_TO_BEACH_DIAGRAM",b."LINK_TO_GRADIENT_DIAGRAM",b."CARD_2",b."MEDS_JOB_NUMBER",b."MEDS_OBSERVATION_NUMBER",b."CARD_1",b."EXIT_DESCRIPTION",b."HINTERLAND" from  BEACH_OBSERVATION bo, BEACH_DATA b
 
;
--------------------------------------------------------
--  DDL for View BEACH_TEMP
--------------------------------------------------------

  CREATE OR REPLACE VIEW "MEDSDATA"."BEACH_TEMP" ("COUNTRY", "ID", "SECTOR", "BEACH_NAME", "BEACH_NUMBER", "LATITUDE", "LONGITUDE", "MAP", "SHEET", "GRID", "CARD_1", "CARD_2", "BEACH_CATEGORY", "BEACH_DIMENSIONS", "ANCHORAGE1", "ANCHORAGE2", "SURF_CONDITIONS", "SURF_HEIGHT", "SURF_SEA_SWELL1", "SURF_SEA_SWELL2", "DATE_OF_SURVEY", "QUALITY_OF_REECE", "APPROACH_SEAWARD1", "APPROACH_SEAWARD2", "APPROACH_SEAWARD3", "GRADIENT_NEARSHORE", "GRADIENT_FORESHORE", "GRADIENT_BACKSHORE", "BEACH_COMPOSITION", "TRAFFICABILITY", "HINTERLAND1", "HINTERLAND2", "HINTERLAND3", "JETTIES_RAMPS_HARDS1", "JETTIES_RAMPS_HARDS2", "AIR_LANDING_SITES1", "AIR_LANDING_SITES2", "WATER_AND_ENGINEERING1", "WATER_AND_ENGINEERING2", "EXIT_CONDITIONS", "EXIT_DESCRIPTION1", "EXIT_DESCRIPTION2", "EXIT_DESCRIPTION3", "PUBLICATION_STATUS", "TYPE_OF_IMAGERY", "BEACH_CHANGES", "BEACH_CHANGES_NO", "CD_ROM_REFERENCE", "CLASSIFICATION", "TBLBEACHESID", "ORIGINATOR", "CURRENT_SPEED", "CURRENT_ORIENTATION", "GRADIENT_OVERALL", "GRADIENT_SURVEY_DATE", "GRADIENT_BEARING", "OBSTRUCTIONS", "DROP_ZONE_DESCRIPTION", "DROP_ZONE_LOCATION", "LINK_TO_GROUND_PHOTO", "LINK_TO_BEACH_DIAGRAM", "LINK_TO_GRADIENT_DIAGRAM", "MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") AS 
  SELECT BO.COUNTRY,concat(B.MEDS_JOB_NUMBER,B.MEDS_OBSERVATION_NUMBER) as id,
       BO.SECTOR,
       BO.BEACH_NAME,
       BO.BEACH_NUMBER,
       BO.LATITUDE,
       BO.LONGITUDE,
       B.MAP,
       B.SHEET,
       B.GRID,
       B.CARD_1,
       B.CARD_2,
       BO.BEACH_CATEGORY,
       BO.BEACH_DIMENSIONS,
       CONCAT (SUBSTR (B.ANCHORAGE, 1, 250), '"') AS ANCHORAGE1,
       CONCAT ('"', SUBSTR (B.ANCHORAGE, 251)) AS ANCHORAGE2,
       B.SURF_CONDITIONS,
       BO.SURF_HEIGHT,
       CONCAT (SUBSTR (B.SURF_SEA_SWELL, 1, 250), '"') AS SURF_SEA_SWELL1,
       CONCAT ('"', SUBSTR (B.SURF_SEA_SWELL, 251)) AS SURF_SEA_SWELL2,
       BO.DATE_OF_SURVEY,
       BO.QUALITY_OF_REECE,
       CONCAT (SUBSTR (B.APPROACH_SEAWARD, 1, 250), '"') AS APPROACH_SEAWARD1,
      concat('"', CONCAT (SUBSTR (B.APPROACH_SEAWARD, 251, 250),'"'))
          AS APPROACH_SEAWARD2,
       CONCAT ('"', SUBSTR (B.APPROACH_SEAWARD, 501)) AS APPROACH_SEAWARD3,
       BO.GRADIENT_NEARSHORE,
       BO.GRADIENT_FORESHORE,
       BO.GRADIENT_BACKSHORE,
       BO.BEACH_COMPOSITION,
       BO.TRAFFICABILITY,
       CONCAT (SUBSTR (B.HINTERLAND, 1, 250), '"') AS HINTERLAND1,
       concat('"',CONCAT (SUBSTR (B.HINTERLAND, 251, 250),'"')) AS HINTERLAND2,
       CONCAT ('"', SUBSTR (B.HINTERLAND, 501)) AS HINTERLAND3,
       CONCAT (SUBSTR (B.JETTIES_RAMPS_HARDS, 1, 250), '"')
          AS JETTIES_RAMPS_HARDS1,
       CONCAT ('"', SUBSTR (B.JETTIES_RAMPS_HARDS, 251))
          AS JETTIES_RAMPS_HARDS2,
       CONCAT (SUBSTR (B.AIR_LANDING_SITES, 1, 250), '"')
          AS AIR_LANDING_SITES1,
       CONCAT ('"', SUBSTR (B.AIR_LANDING_SITES, 251)) AS AIR_LANDING_SITES2,
       CONCAT (SUBSTR (B.WATER_AND_ENGINEERING, 1, 250), '"')
          AS WATER_AND_ENGINEERING1,
       CONCAT ('"', SUBSTR (B.WATER_AND_ENGINEERING, 251))
          AS WATER_AND_ENGINEERING2,
       BO.EXIT_CONDITIONS,
       CONCAT (SUBSTR (B.EXIT_DESCRIPTION, 1, 250), '"') AS EXIT_DESCRIPTION1,
       concat('"',CONCAT (SUBSTR (B.EXIT_DESCRIPTION, 251, 250),'"'))
          AS EXIT_DESCRIPTION2,
       CONCAT ('"', SUBSTR (B.EXIT_DESCRIPTION, 501)) AS EXIT_DESCRIPTION3,
       B.PUBLICATION_STATUS,
       B.TYPE_OF_IMAGERY,
       BO.BEACH_CHANGES,
       BO.BEACH_CHANGES_NO,
       B.CD_ROM_REFERENCE,
       B.CLASSIFICATION,
       B.TBLBEACHESID,
       B.ORIGINATOR,
       B.CURRENT_SPEED,
       B.CURRENT_ORIENTATION,
       B.GRADIENT_OVERALL,
       B.GRADIENT_SURVEY_DATE,
       B.GRADIENT_BEARING,
       B.OBSTRUCTIONS,
       B.DROP_ZONE_DESCRIPTION,
       B.DROP_ZONE_LOCATION,
       B.LINK_TO_GROUND_PHOTO,
       B.LINK_TO_BEACH_DIAGRAM,
       B.LINK_TO_GRADIENT_DIAGRAM,
       B.MEDS_JOB_NUMBER,
       B.MEDS_OBSERVATION_NUMBER
  FROM BEACH_OBSERVATION bo, BEACH_DATA b
 WHERE BO.MEDS_JOB_NUMBER = B.MEDS_JOB_NUMBER
       AND BO.MEDS_OBSERVATION_NUMBER = B.MEDS_OBSERVATION_NUMBER
 
;
--------------------------------------------------------
--  DDL for View BEACH_TEMP1
--------------------------------------------------------

  CREATE OR REPLACE VIEW "MEDSDATA"."BEACH_TEMP1" ("COUNTRY", "ID", "SECTOR", "BEACH_NAME", "BEACH_NUMBER", "LATITUDE", "LONGITUDE", "MAP", "SHEET", "GRID", "CARD_1", "CARD_2", "BEACH_CATEGORY", "BEACH_DIMENSIONS", "ANCHORAGE_1", "ANCHORAGE_2", "SURF_CONDITIONS", "SURF_HEIGHT", "SURF_SEA_SWELL_1", "SURF_SEA_SWELL_2", "DATE_OF_SURVEY", "QUALITY_OF_REECE", "APPROACH_SEAWARD_1", "APPROACH_SEAWARD_2", "APPROACH_SEAWARD_3", "GRADIENT_NEARSHORE", "GRADIENT_FORESHORE", "GRADIENT_BACKSHORE", "BEACH_COMPOSITION", "TRAFFICABILITY", "HINTERLAND_1", "HINTERLAND_2", "HINTERLAND_3", "JETTIES_RAMPS_HARDS_1", "JETTIES_RAMPS_HARDS_2", "AIR_LANDING_SITES_1", "AIR_LANDING_SITES_2", "WATER_AND_ENGINEERING_1", "WATER_AND_ENGINEERING_2", "EXIT_CONDITIONS", "EXIT_DESCRIPTION_1", "EXIT_DESCRIPTION_2", "EXIT_DESCRIPTION_3", "PUBLICATION_STATUS", "TYPE_OF_IMAGERY", "BEACH_CHANGES", "BEACH_CHANGES_NO", "CD_ROM_REFERENCE", "CLASSIFICATION", "TBLBEACHESID", "ORIGINATOR", "CURRENT_SPEED", "CURRENT_ORIENTATION", "GRADIENT_OVERALL", "GRADIENT_SURVEY_DATE", "GRADIENT_BEARING", "OBSTRUCTIONS", "DROP_ZONE_DESCRIPTION", "DROP_ZONE_LOCATION", "LINK_TO_GROUND_PHOTO", "LINK_TO_BEACH_DIAGRAM", "LINK_TO_GRADIENT_DIAGRAM", "MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") AS 
  SELECT B.COUNTRY,id,
       B.SECTOR,
       B.BEACH_NAME,
       B.BEACH_NUMBER,
       B.LATITUDE,
       B.LONGITUDE,
       B.MAP,
       B.SHEET,
       B.GRID,
       B.CARD_1,
       B.CARD_2,
       B.BEACH_CATEGORY,
       B.BEACH_DIMENSIONS,
--       b.ANCHORAGE1,
       (CASE when b.ANCHORAGE1='"' THEN null ELSE b.anchorage1 END) as anchorage_1,
--       b.ANCHORAGE2,
       (CASE when b.ANCHORAGE2='"' THEN null ELSE b.anchorage2 END) as anchorage_2,
       B.SURF_CONDITIONS,
       B.SURF_HEIGHT,
--       b.SURF_SEA_SWELL1,
       (CASE when b.SURF_SEA_SWELL1='"' THEN null ELSE b.SURF_SEA_SWELL1 END) as SURF_SEA_SWELL_1,
--       b.SURF_SEA_SWELL2,
       (CASE when b.SURF_SEA_SWELL2='"' THEN null ELSE b.SURF_SEA_SWELL2 END) as SURF_SEA_SWELL_2,
       B.DATE_OF_SURVEY,
       B.QUALITY_OF_REECE,
--       b.APPROACH_SEAWARD1,
       (CASE when b.APPROACH_SEAWARD1='"' THEN null ELSE b.APPROACH_SEAWARD1 END) as APPROACH_SEAWARD_1,
--       b.APPROACH_SEAWARD2,
       (CASE when b.APPROACH_SEAWARD2='""' THEN null ELSE b.APPROACH_SEAWARD2 END) as APPROACH_SEAWARD_2,
--       b.APPROACH_SEAWARD3,
       (CASE when b.APPROACH_SEAWARD3='"' THEN null ELSE b.APPROACH_SEAWARD3 END) as APPROACH_SEAWARD_3,
       B.GRADIENT_NEARSHORE,
       B.GRADIENT_FORESHORE,
       B.GRADIENT_BACKSHORE,
       B.BEACH_COMPOSITION,
       B.TRAFFICABILITY,
--       b.HINTERLAND1,
       (CASE when b.HINTERLAND1='"' THEN null ELSE b.HINTERLAND1 END) as HINTERLAND_1,
--       b.HINTERLAND2,
       (CASE when b.HINTERLAND2='""' THEN null ELSE b.HINTERLAND2 END) as HINTERLAND_2,
--       b.HINTERLAND3,
       (CASE when b.HINTERLAND3='"' THEN null ELSE b.HINTERLAND3 END) as HINTERLAND_3,
--       b.JETTIES_RAMPS_HARDS1,
       (CASE when b.JETTIES_RAMPS_HARDS1='"' THEN null ELSE b.JETTIES_RAMPS_HARDS1 END) as JETTIES_RAMPS_HARDS_1,
--       b.JETTIES_RAMPS_HARDS2,
       (CASE when b.JETTIES_RAMPS_HARDS2='"' THEN null ELSE b.JETTIES_RAMPS_HARDS2 END) as JETTIES_RAMPS_HARDS_2,
--       b.AIR_LANDING_SITES1,
       (CASE when b.AIR_LANDING_SITES1='"' THEN null ELSE b.AIR_LANDING_SITES1 END) as AIR_LANDING_SITES_1,
--       b.AIR_LANDING_SITES2,
       (CASE when b.AIR_LANDING_SITES2='"' THEN null ELSE b.AIR_LANDING_SITES2 END) as AIR_LANDING_SITES_2,
--       b.WATER_AND_ENGINEERING1,
       (CASE when b.WATER_AND_ENGINEERING1='"' THEN null ELSE b.WATER_AND_ENGINEERING1 END) as WATER_AND_ENGINEERING_1,
--       b.WATER_AND_ENGINEERING2,
       (CASE when b.WATER_AND_ENGINEERING2='"' THEN null ELSE b.WATER_AND_ENGINEERING2 END) as WATER_AND_ENGINEERING_2,
       B.EXIT_CONDITIONS,
--       b.EXIT_DESCRIPTION1,
       (CASE when b.EXIT_DESCRIPTION1='"' THEN null ELSE b.EXIT_DESCRIPTION1 END) as EXIT_DESCRIPTION_1,
--       b.EXIT_DESCRIPTION2,
       (CASE when b.EXIT_DESCRIPTION2='""' THEN null ELSE b.EXIT_DESCRIPTION2 END) as EXIT_DESCRIPTION_2,
--       b.EXIT_DESCRIPTION3,
       (CASE when b.EXIT_DESCRIPTION3='"' THEN null ELSE b.EXIT_DESCRIPTION3 END) as EXIT_DESCRIPTION_3,
       B.PUBLICATION_STATUS,
       B.TYPE_OF_IMAGERY,
       B.BEACH_CHANGES,
       B.BEACH_CHANGES_NO,
       B.CD_ROM_REFERENCE,
       B.CLASSIFICATION,
       B.TBLBEACHESID,
       B.ORIGINATOR,
       B.CURRENT_SPEED,
       B.CURRENT_ORIENTATION,
       B.GRADIENT_OVERALL,
       B.GRADIENT_SURVEY_DATE,
       B.GRADIENT_BEARING,
       B.OBSTRUCTIONS,
       B.DROP_ZONE_DESCRIPTION,
       B.DROP_ZONE_LOCATION,
       B.LINK_TO_GROUND_PHOTO,
       B.LINK_TO_BEACH_DIAGRAM,
       B.LINK_TO_GRADIENT_DIAGRAM,
       B.MEDS_JOB_NUMBER,
       B.MEDS_OBSERVATION_NUMBER
  FROM BEACH_TEMP b
 
;
--------------------------------------------------------
--  DDL for View BEACH_TEMP_OS
--------------------------------------------------------

  CREATE OR REPLACE VIEW "MEDSDATA"."BEACH_TEMP_OS" ("ID", "COUNTRY", "BEACH_NAME", "BEACH_NUMBER", "LATITUDE", "LONGITUDE") AS 
  SELECT concat(B.MEDS_JOB_NUMBER,B.MEDS_OBSERVATION_NUMBER) as id,
       BO.COUNTRY,
       BO.BEACH_NAME,
       BO.BEACH_NUMBER,
       BO.LATITUDE,
       BO.LONGITUDE
       FROM BEACH_OBSERVATION bo, BEACH_DATA b
 WHERE BO.MEDS_JOB_NUMBER = B.MEDS_JOB_NUMBER
       AND BO.MEDS_OBSERVATION_NUMBER = B.MEDS_OBSERVATION_NUMBER
 
;
--------------------------------------------------------
--  DDL for View JOB_TRACKING_VIEW
--------------------------------------------------------

  CREATE OR REPLACE VIEW "MEDSDATA"."JOB_TRACKING_VIEW" ("MEIC_NUMBER", "PO_NUMBER", "PO_TASK", "STATUS", "JOB_TYPE", "INGRES_NO", "DATE_RECEIVED", "SUPPLIER", "SOURCE", "CLASSIFICATION", "ASSIGNED", "ACKNOWLEDGE", "PRIORITY_REGION1", "PRIORITY_REGION2", "PRIORITY_REGION3", "PRIORITY_REGION4", "PRIORITY_REGION5", "PRIORITY_REGION6", "NO_OBS", "COLLECTION_START", "COLLECTION_END", "QA_PROCESSING_TARGET", "QA_PROCESSING_COMPLETED", "QA_PROCESSING_NAME", "DATABASED", "DATABASED_NAME", "VALIDATED", "VALIDATED_NAME", "OBS_ACCEPTED", "OBS_REJECTED", "COMMENTS") AS 
  SELECT
    meic_number,
    po_number,
    po_task,
    status,
    description AS job_type,
    ingres_no	,
    Date_Received	,
    Supplier	,
    Source,
    Classification,
    Assigned,
    Acknowledge	,
    Priority_Region1,
    Priority_Region2,
    Priority_Region3,
    Priority_Region4,
    Priority_Region5,
    Priority_Region6,
    No_Obs,
    Collection_Start,
    Collection_End,
    QA_Processing_Target,
    QA_Processing_Completed,
    QA_Processing_Name,
    Databased,
    Databased_Name,
    Validated,
    Validated_Name,
    Obs_Accepted,
    Obs_Rejected,
    comments
FROM
	job_tracking j, meds_job_type t
WHERE
	j.job_type_number = t.job_type_number
WITH READ ONLY 

 
;
--------------------------------------------------------
--  DDL for View JONO_DATA
--------------------------------------------------------

  CREATE OR REPLACE VIEW "MEDSDATA"."JONO_DATA" ("LONGITUDE", "LATITUDE", "HFBL", "LFBL", "SHIPPING_NOISE", "MEAN_DEPTH", "MEAN_DEEP_DEPTH", "JAN_HEIGHT", "FEB_HEIGHT", "MAR_HEIGHT", "APR_HEIGHT", "MAY_HEIGHT", "JUN_HEIGHT", "JUL_HEIGHT", "AUG_HEIGHT", "SEP_HEIGHT", "OCT_HEIGHT", "NOV_HEIGHT", "DEC_HEIGHT", "MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER", "HO_CAVEAT") AS 
  select AO.LONGITUDE, AO.LATITUDE, ad."HFBL",ad."LFBL",ad."SHIPPING_NOISE",ad."MEAN_DEPTH",ad."MEAN_DEEP_DEPTH",ad."JAN_HEIGHT",ad."FEB_HEIGHT",ad."MAR_HEIGHT",ad."APR_HEIGHT",ad."MAY_HEIGHT",ad."JUN_HEIGHT",ad."JUL_HEIGHT",ad."AUG_HEIGHT",ad."SEP_HEIGHT",ad."OCT_HEIGHT",ad."NOV_HEIGHT",ad."DEC_HEIGHT",ad."MEDS_JOB_NUMBER",ad."MEDS_OBSERVATION_NUMBER",ad."HO_CAVEAT"  from ASRAP_POINT_OBSERVATION ao, ASRAP_POINT_DATA ad
 
;
--------------------------------------------------------
--  DDL for View JO_IMAGE_DATA
--------------------------------------------------------

  CREATE OR REPLACE VIEW "MEDSDATA"."JO_IMAGE_DATA" ("LATITUDE", "LONGITUDE", "RECORDED_DATE", "IMAGE_ID", "MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER", "FEATURE_TYPE", "FEATURE_NAME", "OCEAN_AREA", "ADDITIONAL_INFORMATION", "LATITUDE_NW", "LATITUDE_NE", "LATITUDE_SE", "LATITUDE_SW", "IMAGE_SOURCE", "ORBIT_NUMBER", "STORAGE_FORMAT", "ARCHIVE_DATE", "FILE_REFERENCE", "LONGITUDE_SW", "LONGITUDE_NE", "LONGITUDE_NW", "LONGITUDE_SE", "PROJECT_OF_IMAGE", "IMAGE_FILE_REFERENCE", "NUMBER_OF_WAVE_PACKETS", "INSTRUMENT", "MEASUREMENT", "SATELLITE", "TIME_OF_TIDE", "SOURCE_OF_TIDE_INFO", "FRAME_NUMBER", "ORIGINAL_IMAGE_PRODUCT", "ORIGINAL_X_RESOLUTION", "ORIGINAL_Y_RESOLUTION", "STORED_X_RESOLUTION", "STORED_Y_RESOLUTION", "X_SIZE", "Y_SIZE") AS 
  SELECT IW_IMAGE_OBSERVATION.LATITUDE,
       IW_IMAGE_OBSERVATION.LONGITUDE,
       IW_IMAGE_OBSERVATION.RECORDED_DATE,
       IW_IMAGE_OBSERVATION.IMAGE_ID,
       IW_IMAGE_OBSERVATION.MEDS_JOB_NUMBER,
       IW_IMAGE_OBSERVATION.MEDS_OBSERVATION_NUMBER,
       IW_IMAGE_DATA.FEATURE_TYPE,
       IW_IMAGE_DATA.FEATURE_NAME,
       IW_IMAGE_DATA.OCEAN_AREA,
       IW_IMAGE_DATA.ADDITIONAL_INFORMATION,
       IW_IMAGE_DATA.LATITUDE_NW,
       IW_IMAGE_DATA.LATITUDE_NE,
       IW_IMAGE_DATA.LATITUDE_SE,
       IW_IMAGE_DATA.LATITUDE_SW,
       IW_IMAGE_DATA.IMAGE_SOURCE,
       IW_IMAGE_DATA.ORBIT_NUMBER,
       IW_IMAGE_DATA.STORAGE_FORMAT,
       IW_IMAGE_DATA.ARCHIVE_DATE,
       IW_IMAGE_DATA.FILE_REFERENCE,
       IW_IMAGE_DATA.LONGITUDE_SW,
       IW_IMAGE_DATA.LONGITUDE_NE,
       IW_IMAGE_DATA.LONGITUDE_NW,
       IW_IMAGE_DATA.LONGITUDE_SE,
       IW_IMAGE_DATA.PROJECT_OF_IMAGE,
       IW_IMAGE_DATA.IMAGE_FILE_REFERENCE,
       IW_IMAGE_DATA.NUMBER_OF_WAVE_PACKETS,
       IW_IMAGE_DATA.INSTRUMENT,
       IW_IMAGE_DATA.MEASUREMENT,
       IW_IMAGE_DATA.SATELLITE,
       IW_IMAGE_DATA.TIME_OF_TIDE,
       IW_IMAGE_DATA.SOURCE_OF_TIDE_INFO,
       IW_IMAGE_DATA.FRAME_NUMBER,
       IW_IMAGE_DATA.ORIGINAL_IMAGE_PRODUCT,
       IW_IMAGE_DATA.ORIGINAL_X_RESOLUTION,
       IW_IMAGE_DATA.ORIGINAL_Y_RESOLUTION,
       IW_IMAGE_DATA.STORED_X_RESOLUTION,
       IW_IMAGE_DATA.STORED_Y_RESOLUTION,
       IW_IMAGE_DATA.X_SIZE,
       IW_IMAGE_DATA.Y_SIZE
  FROM IW_IMAGE_OBSERVATION, IW_IMAGE_DATA
 WHERE (IW_IMAGE_OBSERVATION.MEDS_JOB_NUMBER = IW_IMAGE_DATA.MEDS_JOB_NUMBER)
       AND (IW_IMAGE_OBSERVATION.MEDS_OBSERVATION_NUMBER =
               IW_IMAGE_DATA.MEDS_OBSERVATION_NUMBER)
 
;
--------------------------------------------------------
--  DDL for View JO_IW_OBS
--------------------------------------------------------

  CREATE OR REPLACE VIEW "MEDSDATA"."JO_IW_OBS" ("LATITUDE", "LONGITUDE", "DATABASE_IDENTIFICATION_NUMBER", "MONTH", "GENERAL_DESCRIPTION", "LONG_LENGTH_SCALE", "SHORT_LENGTH_SCALE", "MEASUREMENT", "SPEED", "PROPAGATION_DISTANCE", "FIGURES", "AUTHORS", "TITLE", "JOURNAL_REPORT", "VOLUME", "PAGES", "PUBLICATION_DATE", "CROSS_REFERENCE", "WAVE_PERIOD", "MARSDEN_SQUARE", "OTHER", "BATHYMETRY", "SURVEY_IDENTIFIER", "LOCATION_LONGITUDE", "LOCATION_LATITUDE", "OCEANOGRAPHY", "METEOROLOGY", "WAVELENGTH", "INSTRUMENT", "IW_PERIOD", "REPEAT_PERIOD", "PROPOSED_GENERATING_MECH", "DESCRIPTION", "IW_DIRECTION_OF_PROPAGATION", "OBSERVED_DATE", "BOOK_EDITOR_PUBLISHER", "THERMOCLINE_PYCNOCLINE", "IW_SPEED_OBS", "IW_AMPLITUDE_OBS", "DEPTH", "AMPLITUDE", "DIRECTION", "MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") AS 
  SELECT INTERNAL_WAVE_OBSERVATION.LATITUDE,
       INTERNAL_WAVE_OBSERVATION.LONGITUDE,
       INTERNAL_WAVE_OBSERVATION.DATABASE_IDENTIFICATION_NUMBER,
       INTERNAL_WAVE_OBSERVATION.MONTH,
       INTERNAL_WAVE_DATA.GENERAL_DESCRIPTION,
       INTERNAL_WAVE_DATA.LONG_LENGTH_SCALE,
       INTERNAL_WAVE_DATA.SHORT_LENGTH_SCALE,
       INTERNAL_WAVE_DATA.MEASUREMENT,
       INTERNAL_WAVE_DATA.SPEED,
       INTERNAL_WAVE_DATA.PROPAGATION_DISTANCE,
       INTERNAL_WAVE_DATA.FIGURES,
       INTERNAL_WAVE_DATA.AUTHORS,
       INTERNAL_WAVE_DATA.TITLE,
       INTERNAL_WAVE_DATA.JOURNAL_REPORT,
       INTERNAL_WAVE_DATA.VOLUME,
       INTERNAL_WAVE_DATA.PAGES,
       INTERNAL_WAVE_DATA.PUBLICATION_DATE,
       INTERNAL_WAVE_DATA.CROSS_REFERENCE,
       INTERNAL_WAVE_DATA.WAVE_PERIOD,
       INTERNAL_WAVE_DATA.MARSDEN_SQUARE,
       INTERNAL_WAVE_DATA.OTHER,
       INTERNAL_WAVE_DATA.BATHYMETRY,
       INTERNAL_WAVE_DATA.SURVEY_IDENTIFIER,
       INTERNAL_WAVE_DATA.LOCATION_LONGITUDE,
       INTERNAL_WAVE_DATA.LOCATION_LATITUDE,
       INTERNAL_WAVE_DATA.OCEANOGRAPHY,
       INTERNAL_WAVE_DATA.METEOROLOGY,
       INTERNAL_WAVE_DATA.WAVELENGTH,
       INTERNAL_WAVE_DATA.INSTRUMENT,
       INTERNAL_WAVE_DATA.IW_PERIOD,
       INTERNAL_WAVE_DATA.REPEAT_PERIOD,
       INTERNAL_WAVE_DATA.PROPOSED_GENERATING_MECH,
       INTERNAL_WAVE_DATA.DESCRIPTION,
       INTERNAL_WAVE_DATA.IW_DIRECTION_OF_PROPAGATION,
       INTERNAL_WAVE_DATA.OBSERVED_DATE,
       INTERNAL_WAVE_DATA.BOOK_EDITOR_PUBLISHER,
       INTERNAL_WAVE_DATA.THERMOCLINE_PYCNOCLINE,
       INTERNAL_WAVE_DATA.IW_SPEED_OBS,
       INTERNAL_WAVE_DATA.IW_AMPLITUDE_OBS,
       INTERNAL_WAVE_DATA.DEPTH,
       INTERNAL_WAVE_DATA.AMPLITUDE,
       INTERNAL_WAVE_REPEAT.DIRECTION,
       INTERNAL_WAVE_OBSERVATION.MEDS_JOB_NUMBER,
       INTERNAL_WAVE_OBSERVATION.MEDS_OBSERVATION_NUMBER
  FROM INTERNAL_WAVE_OBSERVATION, INTERNAL_WAVE_DATA, INTERNAL_WAVE_REPEAT
 WHERE (INTERNAL_WAVE_OBSERVATION.MEDS_JOB_NUMBER =
           INTERNAL_WAVE_DATA.MEDS_JOB_NUMBER)
       AND (INTERNAL_WAVE_OBSERVATION.MEDS_OBSERVATION_NUMBER =
               INTERNAL_WAVE_DATA.MEDS_OBSERVATION_NUMBER)
       AND (INTERNAL_WAVE_DATA.MEDS_JOB_NUMBER =
               INTERNAL_WAVE_REPEAT.MEDS_JOB_NUMBER)
       AND (INTERNAL_WAVE_DATA.MEDS_OBSERVATION_NUMBER =
               INTERNAL_WAVE_REPEAT.MEDS_OBSERVATION_NUMBER)
 
;
--------------------------------------------------------
--  DDL for View JUNE_FRONTS
--------------------------------------------------------

  CREATE OR REPLACE VIEW "MEDSDATA"."JUNE_FRONTS" ("LATITUDE", "LONGITUDE", "FRONTAL_LINE_ID", "FRONTAL_NAME", "FRONTAL_TYPE", "OBSERVED_DATE", "VERTEX_ID", "MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") AS 
  SELECT DISTINCT FI.LATITUDE, FI.LONGITUDE, FD.FRONTAL_LINE_ID, FD.FRONTAL_NAME, FD.FRONTAL_TYPE, FO.OBSERVERED_DATE, FI.VERTEX_ID, FO.MEDS_JOB_NUMBER, FO.MEDS_OBSERVATION_NUMBER from 
     FRONT_SATELLITE_OBSERVATION fo, FRONT_IMAGE_DATA fd, FRONT_IMAGE_REPEAT fi  where 
     FO.MEDS_JOB_NUMBER=FD.MEDS_JOB_NUMBER and FO.MEDS_OBSERVATION_NUMBER=FD.MEDS_OBSERVATION_NUMBER and FD.MEDS_JOB_NUMBER=FI.MEDS_JOB_NUMBER and FD.MEDS_OBSERVATION_NUMBER=FI.MEDS_OBSERVATION_NUMBER
     and FO.OBSERVERED_DATE between to_date('01/06/2021','dd,mm,yyyy') and to_date('01/07/2021','dd,mm,yyyy')
;
--------------------------------------------------------
--  DDL for View MARINE_LIFE_CETACEANS
--------------------------------------------------------

  CREATE OR REPLACE VIEW "MEDSDATA"."MARINE_LIFE_CETACEANS" ("DATE_RECORDED", "LATITUDE", "LONGITUDE", "MEDS_TRACK_NUMBER", "RECORD_NUMBER", "COUNT", "COUNT_QUALITY", "SPECIES", "ID_QUALITY", "HEADING", "COMMENTS", "SST", "PISCES_GENUS", "SPEED", "REFERENCE", "SHIP", "MEDS_OBSERVATION_NUMBER", "MEDS_JOB_NUMBER", "ARCHIVED", "SIZE_CLASS", "MONTH", "PISCES_SPECIES", "SIZE_", "MEIC", "RANGE", "BEARING") AS 
  select MO.DATE_RECORDED, MO.LATITUDE, MO.LONGITUDE , MO.MEDS_TRACK_NUMBER, md."RECORD_NUMBER",md."COUNT",md."COUNT_QUALITY",md."SPECIES",md."ID_QUALITY",md."HEADING",md."COMMENTS",md."SST",md."PISCES_GENUS",md."SPEED",md."REFERENCE",md."SHIP",md."MEDS_OBSERVATION_NUMBER",md."MEDS_JOB_NUMBER",md."ARCHIVED",md."SIZE_CLASS",md."MONTH",md."PISCES_SPECIES",md."SIZE_",md."MEIC",md."RANGE",md."BEARING" from MLO_CETACEANS_OBSERVATION mo, MLO_CETACEANS_DATA md where
MO.MEDS_JOB_NUMBER=MD.MEDS_JOB_NUMBER and MO.MEDS_OBSERVATION_NUMBER=MD.MEDS_OBSERVATION_NUMBER
 
;
--------------------------------------------------------
--  DDL for View NORTH_SEA
--------------------------------------------------------

  CREATE OR REPLACE VIEW "MEDSDATA"."NORTH_SEA" ("DATE_RECORDED", "GMT", "LATITUDE", "LONGITUDE", "SECCHI_DEPTH", "WATER_COLOUR", "SEA_STATE", "WEATHER", "CLOUD", "SUN_ANGLE", "SHIP", "COUNTRY_CODE", "SHIP_CODE", "REFERENCE", "GENERAL_AREA", "CRUISE_IDENTIFIER", "DIFFUSE_ATTN_COE", "PHOTIC_DEPTH", "HORIZONTAL_VISABILITY", "DATA_USE_CODE") AS 
  select o.DATE_RECORDED, d.GMT, o.LATITUDE, o.LONGITUDE, d.SECCHI_DEPTH, d.WATER_COLOUR, d.SEA_STATE, d.WEATHER, d.CLOUD, d.SUN_ANGLE, 
d.SHIP, d.COUNTRY_CODE, d.SHIP_CODE, d.REFERENCE,d.GENERAL_AREA, d.CRUISE_IDENTIFIER,d.DIFFUSE_ATTN_COE, d.PHOTIC_DEPTH, 
d.HORIZONTAL_VISABILITY, j.DATA_USE_CODE from unified_secchi_observation o, unified_secchi_data d, meds_processing_job j where
j.JOB_NUMBER=o.MEDS_JOB_NUMBER and o.MEDS_JOB_NUMBER=d.MEDS_JOB_NUMBER and o.MEDS_OBSERVATION_NUMBER=d.MEDS_OBSERVATION_NUMBER and
j.DATA_USE_CODE in ('1','2','3','4','6') and o.LATITUDE>=50.8 and o.LATITUDE<=62 and o.LONGITUDE>=-4 and o.LONGITUDE<=16
order by o.DATE_RECORDED


 
;
--------------------------------------------------------
--  DDL for View QGIS_CET
--------------------------------------------------------

  CREATE OR REPLACE VIEW "MEDSDATA"."QGIS_CET" ("MEDS_OBSERVATION_NUMBER", "MEDS_JOB_NUMBER", "LATITUDE", "LONGITUDE", "LOCATION", "DATE_RECORDED", "MEDS_TRACK_NUMBER", "ARCHIVED", "BEARING", "COMMENTS", "COUNT", "COUNT_QUALITY", "HEADING", "ID_QUALITY", "MEIC", "MONTH", "PERSON_NAME", "PISCES_GENUS", "PISCES_SPECIES", "RANGE", "RECORD_NUMBER", "REFERENCE", "SHIP", "SIZE_", "SIZE_CLASS", "SPECIES", "SPEED", "SST", "uid") AS 
  SELECT o."MEDS_OBSERVATION_NUMBER",o."MEDS_JOB_NUMBER",o."LATITUDE",o."LONGITUDE",o."LOCATION",o."DATE_RECORDED",o."MEDS_TRACK_NUMBER",
           d.ARCHIVED,
           d.BEARING,
           d.COMMENTS,
           d.COUNT,
           d.COUNT_QUALITY,
           d.HEADING,
           d.ID_QUALITY,
           d.MEIC,
           d.MONTH,
           d.PERSON_NAME,
           d.PISCES_GENUS,
           d.PISCES_SPECIES,
           d.RANGE,
           d.RECORD_NUMBER,
           d.REFERENCE,
           d.SHIP,
           d.SIZE_,
           d.SIZE_CLASS,
           d.SPECIES,
           d.SPEED,
           d.SST,
           o.MEDS_JOB_NUMBER || '_' || o.MEDS_OBSERVATION_NUMBER AS "uid"
      FROM MLO_CETACEANS_OBSERVATION o, MLO_CETACEANS_DATA d
     WHERE     o.MEDS_JOB_NUMBER = d.MEDS_JOB_NUMBER
           AND o.MEDS_OBSERVATION_NUMBER = d.MEDS_OBSERVATION_NUMBER
;
--------------------------------------------------------
--  DDL for View SUMMARY_2013
--------------------------------------------------------

  CREATE OR REPLACE VIEW "MEDSDATA"."SUMMARY_2013" ("SUPPLIER", "DESCRIPTION", "CRUISE_NAME", "OBS_COUNT", "DATA_USE_CODE", "DATATYPE", "MEIC_NUMBER") AS 
  select distinct j.SUPPLIER,i.DESCRIPTION,c.CRUISE_NAME,count(t.DATE_TIME) as Obs_count, M.DATA_USE_CODE, 'sv' as datatype, J.MEIC_NUMBER from
job_tracking j,meds_processing_job m,profile_index_sv t,cruise_layer c,instrument i where
j.MEIC_NUMBER=m.MEIC_NUMBER and m.JOB_NUMBER=t.MEDS_JOB_NUMBER and t.MEDS_CRUISE_NUMBER=c.MEDS_CRUISE_NUMBER and m.INSTRUMENT_CODE=i.OCEAN and
j.DATABASED >= to_date('01/10/2012 00:00:00','dd/mm/yyyy hh24:mi:ss') and 
j.DATABASED <= to_date('30/09/2013 00:00:00','dd/mm/yyyy hh24:mi:ss') and
J.JOB_TYPE_NUMBER not in (4,9,12,13,14,16,19,30) and
j.SOURCE not in ('FRERN','NLRN') and
J.CLASSIFICATION not in ('SECRET','CONFIDENTIAL') and
j.MEIC_NUMBER not in ('4395','4393','4365','4437','4489','4580','4399','4400','4398','4479') and
j.OBS_ACCEPTED>0
group by j.SUPPLIER,i.DESCRIPTION,c.CRUISE_NAME,M.DATA_USE_CODE, J.MEIC_NUMBER
order by M.DATA_USE_CODE
 
;
--------------------------------------------------------
--  DDL for View SUMMARY_2015
--------------------------------------------------------

  CREATE OR REPLACE VIEW "MEDSDATA"."SUMMARY_2015" ("SUPPLIER", "DESCRIPTION", "CRUISE_NAME", "OBS_COUNT", "DATA_USE_CODE", "DATATYPE", "MEIC_NUMBER") AS 
  select distinct j.SUPPLIER,i.DESCRIPTION,c.CRUISE_NAME,count(t.DATE_TIME) as Obs_count, M.DATA_USE_CODE, 'sv' as datatype, J.MEIC_NUMBER from
job_tracking j,meds_processing_job m,profile_index_sv t,cruise_layer c,instrument i where
j.MEIC_NUMBER=m.MEIC_NUMBER and m.JOB_NUMBER=t.MEDS_JOB_NUMBER and t.MEDS_CRUISE_NUMBER=c.MEDS_CRUISE_NUMBER and m.INSTRUMENT_CODE=i.OCEAN and
j.DATABASED >= to_date('26/09/2013 00:00:00','dd/mm/yyyy hh24:mi:ss') and 
j.DATABASED <= to_date('01/01/2015 00:00:00','dd/mm/yyyy hh24:mi:ss') and
j.JOB_TYPE_NUMBER not in (4,9,12,13,14,16,19,30) and
j.SOURCE not in ('FRERN','NLRN','IRISH MARINE INST.') and
J.CLASSIFICATION not in ('SECRET','CONFIDENTIAL') and
j.MEIC_NUMBER not in (4513,4692,4693,4657,4662,4570,4668,4680,3469,4739) and
j.OBS_ACCEPTED>0
group by j.SUPPLIER,i.DESCRIPTION,c.CRUISE_NAME,M.DATA_USE_CODE, J.MEIC_NUMBER
order by M.DATA_USE_CODE, J.SUPPLIER
 
;
