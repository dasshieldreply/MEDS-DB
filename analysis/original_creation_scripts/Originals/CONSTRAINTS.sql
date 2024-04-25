--------------------------------------------------------
--  Constraints for Table STATS_PERIOD
--------------------------------------------------------

  ALTER TABLE "MEDSADMIN"."STATS_PERIOD" MODIFY ("PERIOD_START" NOT NULL ENABLE);
  ALTER TABLE "MEDSADMIN"."STATS_PERIOD" MODIFY ("PERIOD_END" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TAB_COLUMNS_COPY
--------------------------------------------------------

  ALTER TABLE "MEDSADMIN"."TAB_COLUMNS_COPY" MODIFY ("TABLE_NAME" NOT NULL ENABLE);
  ALTER TABLE "MEDSADMIN"."TAB_COLUMNS_COPY" MODIFY ("COLUMN_NAME" NOT NULL ENABLE);
  ALTER TABLE "MEDSADMIN"."TAB_COLUMNS_COPY" MODIFY ("TAB_NUMBER" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table WVS_3M_BATHY_LINE
--------------------------------------------------------

  ALTER TABLE "MEDSADMIN"."WVS_3M_BATHY_LINE" MODIFY ("OBJECTID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MEDS_JOB_ERROR
--------------------------------------------------------

  ALTER TABLE "MEDSADMIN"."MEDS_JOB_ERROR" MODIFY ("MEIC_NUMBER" NOT NULL ENABLE);
  ALTER TABLE "MEDSADMIN"."MEDS_JOB_ERROR" MODIFY ("MEDS_ERROR_TYPE" NOT NULL ENABLE);
  ALTER TABLE "MEDSADMIN"."MEDS_JOB_ERROR" MODIFY ("NUM_ERRORS" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table GENERIC_EDIT
--------------------------------------------------------

  ALTER TABLE "MEDSADMIN"."GENERIC_EDIT" MODIFY ("ROW_TYPE" NOT NULL ENABLE);
  ALTER TABLE "MEDSADMIN"."GENERIC_EDIT" MODIFY ("TABLE_NAME" NOT NULL ENABLE);
  ALTER TABLE "MEDSADMIN"."GENERIC_EDIT" ADD UNIQUE ("DATA_TYPE_ALIAS")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table HELP
--------------------------------------------------------

  ALTER TABLE "MEDSADMIN"."HELP" MODIFY ("TOPIC" NOT NULL ENABLE);
  ALTER TABLE "MEDSADMIN"."HELP" MODIFY ("SEQ" NOT NULL ENABLE);
  ALTER TABLE "MEDSADMIN"."HELP" ADD CONSTRAINT "HELP_TOPIC_SEQ" PRIMARY KEY ("TOPIC", "SEQ")
  USING INDEX "MEDSADMIN"."HELP_TOPIC_SEQ"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MEDS_ERRORS
--------------------------------------------------------

  ALTER TABLE "MEDSADMIN"."MEDS_ERRORS" MODIFY ("MEDS_ERROR_TYPE" NOT NULL ENABLE);
  ALTER TABLE "MEDSADMIN"."MEDS_ERRORS" MODIFY ("ERROR_DESCRIPTION" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table WVS_D_3M_COUNTPOLY
--------------------------------------------------------

  ALTER TABLE "MEDSADMIN"."WVS_D_3M_COUNTPOLY" MODIFY ("OBJECTID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table WVS_3M
--------------------------------------------------------

  ALTER TABLE "MEDSADMIN"."WVS_3M" MODIFY ("OBJECTID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table JOB_STATS_SETTINGS
--------------------------------------------------------

  ALTER TABLE "MEDSADMIN"."JOB_STATS_SETTINGS" MODIFY ("VALUE" NOT NULL ENABLE);
  ALTER TABLE "MEDSADMIN"."JOB_STATS_SETTINGS" MODIFY ("DAY" NOT NULL ENABLE);
  ALTER TABLE "MEDSADMIN"."JOB_STATS_SETTINGS" MODIFY ("MONTH" NOT NULL ENABLE);
  ALTER TABLE "MEDSADMIN"."JOB_STATS_SETTINGS" MODIFY ("YEAR" NOT NULL ENABLE);
  ALTER TABLE "MEDSADMIN"."JOB_STATS_SETTINGS" MODIFY ("INTERVAL" NOT NULL ENABLE);
  ALTER TABLE "MEDSADMIN"."JOB_STATS_SETTINGS" MODIFY ("NUM_INTERVALS" NOT NULL ENABLE);
  ALTER TABLE "MEDSADMIN"."JOB_STATS_SETTINGS" MODIFY ("TOTAL" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MEDS_PROCESSING_JOB
--------------------------------------------------------

  ALTER TABLE "MEDSADMIN"."MEDS_PROCESSING_JOB" MODIFY ("JOB_NUMBER" NOT NULL ENABLE);
  ALTER TABLE "MEDSADMIN"."MEDS_PROCESSING_JOB" ADD CONSTRAINT "JOB_LAYER_IDX" PRIMARY KEY ("JOB_NUMBER")
  USING INDEX "MEDSADMIN"."JOB_LAYER_IDX"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LAYER_LOOKUP
--------------------------------------------------------

  ALTER TABLE "MEDSADMIN"."LAYER_LOOKUP" MODIFY ("DATA_TABLE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EVENTTYPE
--------------------------------------------------------

  ALTER TABLE "MEDSADMIN"."EVENTTYPE" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TAB_COLUMNS
--------------------------------------------------------

  ALTER TABLE "MEDSADMIN"."TAB_COLUMNS" MODIFY ("TABLE_NAME" NOT NULL ENABLE);
  ALTER TABLE "MEDSADMIN"."TAB_COLUMNS" MODIFY ("COLUMN_NAME" NOT NULL ENABLE);
  ALTER TABLE "MEDSADMIN"."TAB_COLUMNS" MODIFY ("TAB_NUMBER" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DIRECTORY_LOOKUP
--------------------------------------------------------

  ALTER TABLE "MEDSADMIN"."DIRECTORY_LOOKUP" MODIFY ("USER_NAME" NOT NULL ENABLE);
  ALTER TABLE "MEDSADMIN"."DIRECTORY_LOOKUP" MODIFY ("LOOKUP_TYPE" NOT NULL ENABLE);
  ALTER TABLE "MEDSADMIN"."DIRECTORY_LOOKUP" MODIFY ("FILE_PATH" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MLO_COLUMNS
--------------------------------------------------------

  ALTER TABLE "MEDSADMIN"."MLO_COLUMNS" MODIFY ("TABLE_NAME" NOT NULL ENABLE);
  ALTER TABLE "MEDSADMIN"."MLO_COLUMNS" MODIFY ("COLUMN_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table OBSERVATIONS
--------------------------------------------------------

  ALTER TABLE "MEDSADMIN"."OBSERVATIONS" MODIFY ("MEDS_JOB_NUMBER" NOT NULL ENABLE);
  ALTER TABLE "MEDSADMIN"."OBSERVATIONS" MODIFY ("MEDS_OBSERVATION_NUMBER" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PROFILE_HEADER_TONLY
--------------------------------------------------------

  ALTER TABLE "MEDSADMIN"."PROFILE_HEADER_TONLY" MODIFY ("MEDS_OBSERVATION_NUMBER" NOT NULL ENABLE);
  ALTER TABLE "MEDSADMIN"."PROFILE_HEADER_TONLY" MODIFY ("MEDS_JOB_NUMBER" NOT NULL ENABLE);
  ALTER TABLE "MEDSADMIN"."PROFILE_HEADER_TONLY" ADD CONSTRAINT "PROFILE_HEADER_TONLY_IDX" PRIMARY KEY ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER")
  USING INDEX "MEDSADMIN"."PROFILE_HEADER_TONLY_IDX"  ENABLE;
--------------------------------------------------------
--  Constraints for Table JOB_STATS
--------------------------------------------------------

  ALTER TABLE "MEDSADMIN"."JOB_STATS" MODIFY ("DESCRIPTION" NOT NULL ENABLE);
  ALTER TABLE "MEDSADMIN"."JOB_STATS" MODIFY ("PERIOD_START" NOT NULL ENABLE);
  ALTER TABLE "MEDSADMIN"."JOB_STATS" MODIFY ("PERIOD_END" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table OBSERVATION
--------------------------------------------------------

  ALTER TABLE "MEDSADMIN"."OBSERVATION" MODIFY ("USER_NAME" NOT NULL ENABLE);
  ALTER TABLE "MEDSADMIN"."OBSERVATION" MODIFY ("JOB_NUMBER" NOT NULL ENABLE);
  ALTER TABLE "MEDSADMIN"."OBSERVATION" MODIFY ("OBSERVATION_NUMBER" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CRUISE_LAYER
--------------------------------------------------------

  ALTER TABLE "MEDSADMIN"."CRUISE_LAYER" ADD CONSTRAINT "CRUISE_LAYER_IDX" PRIMARY KEY ("MEDS_CRUISE_NUMBER")
  USING INDEX "MEDSADMIN"."CRUISE_LAYER_IDX"  ENABLE;
--------------------------------------------------------
--  Constraints for Table INSTRUMENT
--------------------------------------------------------

  ALTER TABLE "MEDSADMIN"."INSTRUMENT" MODIFY ("SERD" NOT NULL ENABLE);
  ALTER TABLE "MEDSADMIN"."INSTRUMENT" ADD CONSTRAINT "INSTRUMENT_IDX" PRIMARY KEY ("SERD")
  USING INDEX "MEDSADMIN"."INSTRUMENT_IDX"  ENABLE;
--------------------------------------------------------
--  Constraints for Table JOB_TRACKING
--------------------------------------------------------

  ALTER TABLE "MEDSADMIN"."JOB_TRACKING" MODIFY ("STATUS" NOT NULL ENABLE);
  ALTER TABLE "MEDSADMIN"."JOB_TRACKING" MODIFY ("JOB_TYPE_NUMBER" NOT NULL ENABLE);
  ALTER TABLE "MEDSADMIN"."JOB_TRACKING" MODIFY ("ACKNOWLEDGE" NOT NULL ENABLE);
  ALTER TABLE "MEDSADMIN"."JOB_TRACKING" MODIFY ("PRIORITY_REGION1" NOT NULL ENABLE);
  ALTER TABLE "MEDSADMIN"."JOB_TRACKING" MODIFY ("PRIORITY_REGION2" NOT NULL ENABLE);
  ALTER TABLE "MEDSADMIN"."JOB_TRACKING" MODIFY ("PRIORITY_REGION3" NOT NULL ENABLE);
  ALTER TABLE "MEDSADMIN"."JOB_TRACKING" MODIFY ("PRIORITY_REGION4" NOT NULL ENABLE);
  ALTER TABLE "MEDSADMIN"."JOB_TRACKING" MODIFY ("PRIORITY_REGION5" NOT NULL ENABLE);
  ALTER TABLE "MEDSADMIN"."JOB_TRACKING" MODIFY ("PRIORITY_REGION6" NOT NULL ENABLE);
  ALTER TABLE "MEDSADMIN"."JOB_TRACKING" ADD CONSTRAINT "PK_JOB_TRACKING" PRIMARY KEY ("MEIC_NUMBER")
  USING INDEX "MEDSADMIN"."PK_JOB_TRACKING"  ENABLE;
--------------------------------------------------------
--  Constraints for Table FIELD_LOOKUP_DUP
--------------------------------------------------------

  ALTER TABLE "MEDSADMIN"."FIELD_LOOKUP_DUP" MODIFY ("FIELD_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PROFILE_INDEX_SV
--------------------------------------------------------

  ALTER TABLE "MEDSADMIN"."PROFILE_INDEX_SV" ADD CONSTRAINT "PROFILE_INDEX_SV_IDX" PRIMARY KEY ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER")
  USING INDEX "MEDSADMIN"."PROFILE_INDEX_SV_IDX"  ENABLE;
--------------------------------------------------------
--  Constraints for Table EVENTLOG
--------------------------------------------------------

  ALTER TABLE "MEDSADMIN"."EVENTLOG" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MEDS_JOB_TYPE
--------------------------------------------------------

  ALTER TABLE "MEDSADMIN"."MEDS_JOB_TYPE" ADD PRIMARY KEY ("JOB_TYPE_NUMBER")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table FIELD_LOOKUP
--------------------------------------------------------

  ALTER TABLE "MEDSADMIN"."FIELD_LOOKUP" MODIFY ("FIELD_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PROFILE_HEADER_TS
--------------------------------------------------------

  ALTER TABLE "MEDSADMIN"."PROFILE_HEADER_TS" MODIFY ("MEDS_OBSERVATION_NUMBER" NOT NULL ENABLE);
  ALTER TABLE "MEDSADMIN"."PROFILE_HEADER_TS" MODIFY ("MEDS_JOB_NUMBER" NOT NULL ENABLE);
  ALTER TABLE "MEDSADMIN"."PROFILE_HEADER_TS" ADD CONSTRAINT "PROFILE_HEADER_TS_IDX" PRIMARY KEY ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER")
  USING INDEX "MEDSADMIN"."PROFILE_HEADER_TS_IDX"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PROFILE_INDEX_TONLY
--------------------------------------------------------

  ALTER TABLE "MEDSADMIN"."PROFILE_INDEX_TONLY" ADD CONSTRAINT "PROFILE_INDEX_TONLY_IDX" PRIMARY KEY ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER")
  USING INDEX "MEDSADMIN"."PROFILE_INDEX_TONLY_IDX"  ENABLE;
--------------------------------------------------------
--  Constraints for Table FILE_LOOKUP
--------------------------------------------------------

  ALTER TABLE "MEDSADMIN"."FILE_LOOKUP" MODIFY ("FILE_NAME" NOT NULL ENABLE);
  ALTER TABLE "MEDSADMIN"."FILE_LOOKUP" MODIFY ("PATH_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ACCESS_CONTROL
--------------------------------------------------------

  ALTER TABLE "MEDSADMIN"."ACCESS_CONTROL" MODIFY ("TABLE_NAME" NOT NULL ENABLE);
  ALTER TABLE "MEDSADMIN"."ACCESS_CONTROL" MODIFY ("USER_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PROFILE_INDEX_TS
--------------------------------------------------------

  ALTER TABLE "MEDSADMIN"."PROFILE_INDEX_TS" ADD CONSTRAINT "PROFILE_INDEX_TS_IDX" PRIMARY KEY ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER")
  USING INDEX "MEDSADMIN"."PROFILE_INDEX_TS_IDX"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PROFILE_HEADER_SV
--------------------------------------------------------

  ALTER TABLE "MEDSADMIN"."PROFILE_HEADER_SV" MODIFY ("MEDS_OBSERVATION_NUMBER" NOT NULL ENABLE);
  ALTER TABLE "MEDSADMIN"."PROFILE_HEADER_SV" MODIFY ("MEDS_JOB_NUMBER" NOT NULL ENABLE);
  ALTER TABLE "MEDSADMIN"."PROFILE_HEADER_SV" ADD CONSTRAINT "PROFILE_HEADER_SV_IDX" PRIMARY KEY ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER")
  USING INDEX "MEDSADMIN"."PROFILE_HEADER_SV_IDX"  ENABLE;
