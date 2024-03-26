--------------------------------------------------------
--  Constraints for Table STATS_PERIOD
--------------------------------------------------------

  ALTER TABLE "MEDSDATA"."STATS_PERIOD" MODIFY ("PERIOD_START" NOT NULL ENABLE);
  ALTER TABLE "MEDSDATA"."STATS_PERIOD" MODIFY ("PERIOD_END" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TAB_COLUMNS_COPY
--------------------------------------------------------

  ALTER TABLE "MEDSDATA"."TAB_COLUMNS_COPY" MODIFY ("TABLE_NAME" NOT NULL ENABLE);
  ALTER TABLE "MEDSDATA"."TAB_COLUMNS_COPY" MODIFY ("COLUMN_NAME" NOT NULL ENABLE);
  ALTER TABLE "MEDSDATA"."TAB_COLUMNS_COPY" MODIFY ("TAB_NUMBER" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table WVS_3M_BATHY_LINE
--------------------------------------------------------

  ALTER TABLE "MEDSDATA"."WVS_3M_BATHY_LINE" MODIFY ("OBJECTID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MEDS_JOB_ERROR
--------------------------------------------------------

  ALTER TABLE "MEDSDATA"."MEDS_JOB_ERROR" MODIFY ("MEIC_NUMBER" NOT NULL ENABLE);
  ALTER TABLE "MEDSDATA"."MEDS_JOB_ERROR" MODIFY ("MEDS_ERROR_TYPE" NOT NULL ENABLE);
  ALTER TABLE "MEDSDATA"."MEDS_JOB_ERROR" MODIFY ("NUM_ERRORS" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table GENERIC_EDIT
--------------------------------------------------------

  ALTER TABLE "MEDSDATA"."GENERIC_EDIT" MODIFY ("ROW_TYPE" NOT NULL ENABLE);
  ALTER TABLE "MEDSDATA"."GENERIC_EDIT" MODIFY ("TABLE_NAME" NOT NULL ENABLE);
  ALTER TABLE "MEDSDATA"."GENERIC_EDIT" ADD UNIQUE ("DATA_TYPE_ALIAS")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table HELP
--------------------------------------------------------

  ALTER TABLE "MEDSDATA"."HELP" MODIFY ("TOPIC" NOT NULL ENABLE);
  ALTER TABLE "MEDSDATA"."HELP" MODIFY ("SEQ" NOT NULL ENABLE);
  ALTER TABLE "MEDSDATA"."HELP" ADD CONSTRAINT "HELP_TOPIC_SEQ" PRIMARY KEY ("TOPIC", "SEQ")
  USING INDEX "MEDSDATA"."HELP_TOPIC_SEQ"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MEDS_ERRORS
--------------------------------------------------------

  ALTER TABLE "MEDSDATA"."MEDS_ERRORS" MODIFY ("MEDS_ERROR_TYPE" NOT NULL ENABLE);
  ALTER TABLE "MEDSDATA"."MEDS_ERRORS" MODIFY ("ERROR_DESCRIPTION" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table WVS_D_3M_COUNTPOLY
--------------------------------------------------------

  ALTER TABLE "MEDSDATA"."WVS_D_3M_COUNTPOLY" MODIFY ("OBJECTID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table WVS_3M
--------------------------------------------------------

  ALTER TABLE "MEDSDATA"."WVS_3M" MODIFY ("OBJECTID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table JOB_STATS_SETTINGS
--------------------------------------------------------

  ALTER TABLE "MEDSDATA"."JOB_STATS_SETTINGS" MODIFY ("VALUE" NOT NULL ENABLE);
  ALTER TABLE "MEDSDATA"."JOB_STATS_SETTINGS" MODIFY ("DAY" NOT NULL ENABLE);
  ALTER TABLE "MEDSDATA"."JOB_STATS_SETTINGS" MODIFY ("MONTH" NOT NULL ENABLE);
  ALTER TABLE "MEDSDATA"."JOB_STATS_SETTINGS" MODIFY ("YEAR" NOT NULL ENABLE);
  ALTER TABLE "MEDSDATA"."JOB_STATS_SETTINGS" MODIFY ("INTERVAL" NOT NULL ENABLE);
  ALTER TABLE "MEDSDATA"."JOB_STATS_SETTINGS" MODIFY ("NUM_INTERVALS" NOT NULL ENABLE);
  ALTER TABLE "MEDSDATA"."JOB_STATS_SETTINGS" MODIFY ("TOTAL" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MEDS_PROCESSING_JOB
--------------------------------------------------------

  ALTER TABLE "MEDSDATA"."MEDS_PROCESSING_JOB" MODIFY ("JOB_NUMBER" NOT NULL ENABLE);
  ALTER TABLE "MEDSDATA"."MEDS_PROCESSING_JOB" ADD CONSTRAINT "JOB_LAYER_IDX" PRIMARY KEY ("JOB_NUMBER")
  USING INDEX "MEDSDATA"."JOB_LAYER_IDX"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LAYER_LOOKUP
--------------------------------------------------------

  ALTER TABLE "MEDSDATA"."LAYER_LOOKUP" MODIFY ("DATA_TABLE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EVENTTYPE
--------------------------------------------------------

  ALTER TABLE "MEDSDATA"."EVENTTYPE" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TAB_COLUMNS
--------------------------------------------------------

  ALTER TABLE "MEDSDATA"."TAB_COLUMNS" MODIFY ("TABLE_NAME" NOT NULL ENABLE);
  ALTER TABLE "MEDSDATA"."TAB_COLUMNS" MODIFY ("COLUMN_NAME" NOT NULL ENABLE);
  ALTER TABLE "MEDSDATA"."TAB_COLUMNS" MODIFY ("TAB_NUMBER" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DIRECTORY_LOOKUP
--------------------------------------------------------

  ALTER TABLE "MEDSDATA"."DIRECTORY_LOOKUP" MODIFY ("USER_NAME" NOT NULL ENABLE);
  ALTER TABLE "MEDSDATA"."DIRECTORY_LOOKUP" MODIFY ("LOOKUP_TYPE" NOT NULL ENABLE);
  ALTER TABLE "MEDSDATA"."DIRECTORY_LOOKUP" MODIFY ("FILE_PATH" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MLO_COLUMNS
--------------------------------------------------------

  ALTER TABLE "MEDSDATA"."MLO_COLUMNS" MODIFY ("TABLE_NAME" NOT NULL ENABLE);
  ALTER TABLE "MEDSDATA"."MLO_COLUMNS" MODIFY ("COLUMN_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table OBSERVATIONS
--------------------------------------------------------

  ALTER TABLE "MEDSDATA"."OBSERVATIONS" MODIFY ("MEDS_JOB_NUMBER" NOT NULL ENABLE);
  ALTER TABLE "MEDSDATA"."OBSERVATIONS" MODIFY ("MEDS_OBSERVATION_NUMBER" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PROFILE_HEADER_TONLY
--------------------------------------------------------

  ALTER TABLE "MEDSDATA"."PROFILE_HEADER_TONLY" MODIFY ("MEDS_OBSERVATION_NUMBER" NOT NULL ENABLE);
  ALTER TABLE "MEDSDATA"."PROFILE_HEADER_TONLY" MODIFY ("MEDS_JOB_NUMBER" NOT NULL ENABLE);
  ALTER TABLE "MEDSDATA"."PROFILE_HEADER_TONLY" ADD CONSTRAINT "PROFILE_HEADER_TONLY_IDX" PRIMARY KEY ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER")
  USING INDEX "MEDSDATA"."PROFILE_HEADER_TONLY_IDX"  ENABLE;
--------------------------------------------------------
--  Constraints for Table JOB_STATS
--------------------------------------------------------

  ALTER TABLE "MEDSDATA"."JOB_STATS" MODIFY ("DESCRIPTION" NOT NULL ENABLE);
  ALTER TABLE "MEDSDATA"."JOB_STATS" MODIFY ("PERIOD_START" NOT NULL ENABLE);
  ALTER TABLE "MEDSDATA"."JOB_STATS" MODIFY ("PERIOD_END" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table OBSERVATION
--------------------------------------------------------

  ALTER TABLE "MEDSDATA"."OBSERVATION" MODIFY ("USER_NAME" NOT NULL ENABLE);
  ALTER TABLE "MEDSDATA"."OBSERVATION" MODIFY ("JOB_NUMBER" NOT NULL ENABLE);
  ALTER TABLE "MEDSDATA"."OBSERVATION" MODIFY ("OBSERVATION_NUMBER" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CRUISE_LAYER
--------------------------------------------------------

  ALTER TABLE "MEDSDATA"."CRUISE_LAYER" ADD CONSTRAINT "CRUISE_LAYER_IDX" PRIMARY KEY ("MEDS_CRUISE_NUMBER")
  USING INDEX "MEDSDATA"."CRUISE_LAYER_IDX"  ENABLE;
--------------------------------------------------------
--  Constraints for Table INSTRUMENT
--------------------------------------------------------

  ALTER TABLE "MEDSDATA"."INSTRUMENT" MODIFY ("SERD" NOT NULL ENABLE);
  ALTER TABLE "MEDSDATA"."INSTRUMENT" ADD CONSTRAINT "INSTRUMENT_IDX" PRIMARY KEY ("SERD")
  USING INDEX "MEDSDATA"."INSTRUMENT_IDX"  ENABLE;
--------------------------------------------------------
--  Constraints for Table JOB_TRACKING
--------------------------------------------------------

  ALTER TABLE "MEDSDATA"."JOB_TRACKING" MODIFY ("STATUS" NOT NULL ENABLE);
  ALTER TABLE "MEDSDATA"."JOB_TRACKING" MODIFY ("JOB_TYPE_NUMBER" NOT NULL ENABLE);
  ALTER TABLE "MEDSDATA"."JOB_TRACKING" MODIFY ("ACKNOWLEDGE" NOT NULL ENABLE);
  ALTER TABLE "MEDSDATA"."JOB_TRACKING" MODIFY ("PRIORITY_REGION1" NOT NULL ENABLE);
  ALTER TABLE "MEDSDATA"."JOB_TRACKING" MODIFY ("PRIORITY_REGION2" NOT NULL ENABLE);
  ALTER TABLE "MEDSDATA"."JOB_TRACKING" MODIFY ("PRIORITY_REGION3" NOT NULL ENABLE);
  ALTER TABLE "MEDSDATA"."JOB_TRACKING" MODIFY ("PRIORITY_REGION4" NOT NULL ENABLE);
  ALTER TABLE "MEDSDATA"."JOB_TRACKING" MODIFY ("PRIORITY_REGION5" NOT NULL ENABLE);
  ALTER TABLE "MEDSDATA"."JOB_TRACKING" MODIFY ("PRIORITY_REGION6" NOT NULL ENABLE);
  ALTER TABLE "MEDSDATA"."JOB_TRACKING" ADD CONSTRAINT "PK_JOB_TRACKING" PRIMARY KEY ("MEIC_NUMBER")
  USING INDEX "MEDSDATA"."PK_JOB_TRACKING"  ENABLE;
--------------------------------------------------------
--  Constraints for Table FIELD_LOOKUP_DUP
--------------------------------------------------------

  ALTER TABLE "MEDSDATA"."FIELD_LOOKUP_DUP" MODIFY ("FIELD_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PROFILE_INDEX_SV
--------------------------------------------------------

  ALTER TABLE "MEDSDATA"."PROFILE_INDEX_SV" ADD CONSTRAINT "PROFILE_INDEX_SV_IDX" PRIMARY KEY ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER")
  USING INDEX "MEDSDATA"."PROFILE_INDEX_SV_IDX"  ENABLE;
--------------------------------------------------------
--  Constraints for Table EVENTLOG
--------------------------------------------------------

  ALTER TABLE "MEDSDATA"."EVENTLOG" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MEDS_JOB_TYPE
--------------------------------------------------------

  ALTER TABLE "MEDSDATA"."MEDS_JOB_TYPE" ADD PRIMARY KEY ("JOB_TYPE_NUMBER")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table FIELD_LOOKUP
--------------------------------------------------------

  ALTER TABLE "MEDSDATA"."FIELD_LOOKUP" MODIFY ("FIELD_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PROFILE_HEADER_TS
--------------------------------------------------------

  ALTER TABLE "MEDSDATA"."PROFILE_HEADER_TS" MODIFY ("MEDS_OBSERVATION_NUMBER" NOT NULL ENABLE);
  ALTER TABLE "MEDSDATA"."PROFILE_HEADER_TS" MODIFY ("MEDS_JOB_NUMBER" NOT NULL ENABLE);
  ALTER TABLE "MEDSDATA"."PROFILE_HEADER_TS" ADD CONSTRAINT "PROFILE_HEADER_TS_IDX" PRIMARY KEY ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER")
  USING INDEX "MEDSDATA"."PROFILE_HEADER_TS_IDX"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PROFILE_INDEX_TONLY
--------------------------------------------------------

  ALTER TABLE "MEDSDATA"."PROFILE_INDEX_TONLY" ADD CONSTRAINT "PROFILE_INDEX_TONLY_IDX" PRIMARY KEY ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER")
  USING INDEX "MEDSDATA"."PROFILE_INDEX_TONLY_IDX"  ENABLE;
--------------------------------------------------------
--  Constraints for Table FILE_LOOKUP
--------------------------------------------------------

  ALTER TABLE "MEDSDATA"."FILE_LOOKUP" MODIFY ("FILE_NAME" NOT NULL ENABLE);
  ALTER TABLE "MEDSDATA"."FILE_LOOKUP" MODIFY ("PATH_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ACCESS_CONTROL
--------------------------------------------------------

  ALTER TABLE "MEDSDATA"."ACCESS_CONTROL" MODIFY ("TABLE_NAME" NOT NULL ENABLE);
  ALTER TABLE "MEDSDATA"."ACCESS_CONTROL" MODIFY ("USER_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PROFILE_INDEX_TS
--------------------------------------------------------

  ALTER TABLE "MEDSDATA"."PROFILE_INDEX_TS" ADD CONSTRAINT "PROFILE_INDEX_TS_IDX" PRIMARY KEY ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER")
  USING INDEX "MEDSDATA"."PROFILE_INDEX_TS_IDX"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PROFILE_HEADER_SV
--------------------------------------------------------

  ALTER TABLE "MEDSDATA"."PROFILE_HEADER_SV" MODIFY ("MEDS_OBSERVATION_NUMBER" NOT NULL ENABLE);
  ALTER TABLE "MEDSDATA"."PROFILE_HEADER_SV" MODIFY ("MEDS_JOB_NUMBER" NOT NULL ENABLE);
  ALTER TABLE "MEDSDATA"."PROFILE_HEADER_SV" ADD CONSTRAINT "PROFILE_HEADER_SV_IDX" PRIMARY KEY ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER")
  USING INDEX "MEDSDATA"."PROFILE_HEADER_SV_IDX"  ENABLE;
