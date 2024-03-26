--------------------------------------------------------
--  DDL for Index CRUISE_LAYER_IDX
--------------------------------------------------------

  CREATE UNIQUE INDEX "MEDSDATA"."CRUISE_LAYER_IDX" ON "MEDSDATA"."CRUISE_LAYER" ("MEDS_CRUISE_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index HELP_TOPIC_SEQ
--------------------------------------------------------

  CREATE UNIQUE INDEX "MEDSDATA"."HELP_TOPIC_SEQ" ON "MEDSDATA"."HELP" ("TOPIC", "SEQ") 
  ;
--------------------------------------------------------
--  DDL for Index PK_JOB_TRACKING
--------------------------------------------------------

  CREATE UNIQUE INDEX "MEDSDATA"."PK_JOB_TRACKING" ON "MEDSDATA"."JOB_TRACKING" ("MEIC_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index PROFILE_HEADER_SV_IDX
--------------------------------------------------------

  CREATE UNIQUE INDEX "MEDSDATA"."PROFILE_HEADER_SV_IDX" ON "MEDSDATA"."PROFILE_HEADER_SV" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index PROFILE_HEADER_TONLY_IDX
--------------------------------------------------------

  CREATE UNIQUE INDEX "MEDSDATA"."PROFILE_HEADER_TONLY_IDX" ON "MEDSDATA"."PROFILE_HEADER_TONLY" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index PROFILE_HEADER_TS_IDX
--------------------------------------------------------

  CREATE UNIQUE INDEX "MEDSDATA"."PROFILE_HEADER_TS_IDX" ON "MEDSDATA"."PROFILE_HEADER_TS" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index PROFILE_INDEX_SV_IDX
--------------------------------------------------------

  CREATE UNIQUE INDEX "MEDSDATA"."PROFILE_INDEX_SV_IDX" ON "MEDSDATA"."PROFILE_INDEX_SV" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index PROFILE_INDEX_TONLY_IDX
--------------------------------------------------------

  CREATE UNIQUE INDEX "MEDSDATA"."PROFILE_INDEX_TONLY_IDX" ON "MEDSDATA"."PROFILE_INDEX_TONLY" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index PROFILE_INDEX_TS_IDX
--------------------------------------------------------

  CREATE UNIQUE INDEX "MEDSDATA"."PROFILE_INDEX_TS_IDX" ON "MEDSDATA"."PROFILE_INDEX_TS" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index INSTRUMENT_IDX
--------------------------------------------------------

  CREATE UNIQUE INDEX "MEDSDATA"."INSTRUMENT_IDX" ON "MEDSDATA"."INSTRUMENT" ("SERD") 
  ;
--------------------------------------------------------
--  DDL for Index JOB_LAYER_IDX
--------------------------------------------------------

  CREATE UNIQUE INDEX "MEDSDATA"."JOB_LAYER_IDX" ON "MEDSDATA"."MEDS_PROCESSING_JOB" ("JOB_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_PROFILEL4JUN_LATLON
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_PROFILEL4JUN_LATLON" ON "MEDSDATA"."REPRES_PROFILE_L4_JUN" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_JOB_MLO_59
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_MLO_59" ON "MEDSDATA"."MLO_JELLYFISH_OBSERVATION" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index PROFILE_INDEX_TONLY_MONTH
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."PROFILE_INDEX_TONLY_MONTH" ON "MEDSDATA"."PROFILE_INDEX_TONLY" ("MONTH") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_REPSHIPHITSD1_GRIDIDX
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_REPSHIPHITSD1_GRIDIDX" ON "MEDSDATA"."REPRES_SHIPHITS_D1" ("GRID_INDEX") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_DATE_AQUAPACK_2
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_DATE_AQUAPACK_2" ON "MEDSDATA"."AQUAPACK_JOB" ("VALIDATED") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_JOB_FRONT_36
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_FRONT_36" ON "MEDSDATA"."FRONT_SURVEY_DATA" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_LATLONG_MIXEDLAYER_L1
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_LATLONG_MIXEDLAYER_L1" ON "MEDSDATA"."REPRES_MIXEDLAYER_L1" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_PROFILEL1APR_LATLON
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_PROFILEL1APR_LATLON" ON "MEDSDATA"."REPRES_PROFILE_L1_APR" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_REPPROFILEL2_FEB
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_REPPROFILEL2_FEB" ON "MEDSDATA"."REPRES_PROFILE_L2_FEB" ("GRID_INDEX") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_PROFILEL2JUN_LATLON
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_PROFILEL2JUN_LATLON" ON "MEDSDATA"."REPRES_PROFILE_L2_JUN" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index MDQT_39EC6$_B2
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."MDQT_39EC6$_B2" ON "MEDSDATA"."MDQT_39EC6$" ("SDO_ROWID") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_AQUAPROF_DATA_MEDS
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_AQUAPROF_DATA_MEDS" ON "MEDSDATA"."AQUAPACK_PROFILE_DATA" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_POSN_MLO_27
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_POSN_MLO_27" ON "MEDSDATA"."MLO_SHIP_OBSERVATION" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_JOB_DIVE_17
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_DIVE_17" ON "MEDSDATA"."DIVE_SITE_OBSERVATION" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_DATE_BIOLUMINESCENCE_9
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_DATE_BIOLUMINESCENCE_9" ON "MEDSDATA"."BIOLUMINESCENCE_OBSERVATION" ("DATETIME") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_REPPROFILEL2_MAR
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_REPPROFILEL2_MAR" ON "MEDSDATA"."REPRES_PROFILE_L2_MAR" ("GRID_INDEX") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_REPPROFILEL1_AUG
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_REPPROFILEL1_AUG" ON "MEDSDATA"."REPRES_PROFILE_L1_AUG" ("GRID_INDEX") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_DATE_INTERNAL_27
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_DATE_INTERNAL_27" ON "MEDSDATA"."INTERNAL_WAVE_DATA" ("PUBLICATION_DATE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_GRIDL2_GRIDINDEX
--------------------------------------------------------

  CREATE UNIQUE INDEX "MEDSDATA"."IDX_GRIDL2_GRIDINDEX" ON "MEDSDATA"."MASTER_GRID_L2" ("GRID_INDEX", "DATATYPE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_REPPROFILEL2_SEP
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_REPPROFILEL2_SEP" ON "MEDSDATA"."REPRES_PROFILE_L2_SEP" ("GRID_INDEX") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_DATE_MLO_37
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_DATE_MLO_37" ON "MEDSDATA"."MLO_PINNIPEDS_OBSERVATION" ("DATE_RECORDED") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_JOB_IW_50
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_IW_50" ON "MEDSDATA"."IW_POINTS" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_DATE_BEACH_5
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_DATE_BEACH_5" ON "MEDSDATA"."BEACH_DATA" ("GRADIENT_SURVEY_DATE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_REPPROFILEL2_NOV
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_REPPROFILEL2_NOV" ON "MEDSDATA"."REPRES_PROFILE_L2_NOV" ("GRID_INDEX") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_REPPROFILEL2_OCT
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_REPPROFILEL2_OCT" ON "MEDSDATA"."REPRES_PROFILE_L2_OCT" ("GRID_INDEX") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_JOB_ASRAP_1
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_ASRAP_1" ON "MEDSDATA"."ASRAP_POINT_CADS_REPEAT" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_REPMIXEDLYRL2_GRIDIDXMTH
--------------------------------------------------------

  CREATE UNIQUE INDEX "MEDSDATA"."IDX_REPMIXEDLYRL2_GRIDIDXMTH" ON "MEDSDATA"."REPRES_MIXEDLAYER_L2" ("LATITUDE", "LONGITUDE", "MONTH_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_REPSECL1_LOC
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_REPSECL1_LOC" ON "MEDSDATA"."REPRES_SPECIES_L1" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index SI_INTERNALWAVE
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."SI_INTERNALWAVE" ON "MEDSDATA"."INTERNAL_WAVE_OBSERVATION" ("LOCATION") 
   INDEXTYPE IS "MDSYS"."SPATIAL_INDEX"  PARAMETERS (' ');
--------------------------------------------------------
--  DDL for Index IDX_JOB_SECCHI_74
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_SECCHI_74" ON "MEDSDATA"."SECCHI_DISK_OBSERVATION" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_LATLONG_MIXEDLAYER_D1
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_LATLONG_MIXEDLAYER_D1" ON "MEDSDATA"."REPRES_MIXEDLAYER_D1" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_REPPROFILEL4_NOV
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_REPPROFILEL4_NOV" ON "MEDSDATA"."REPRES_PROFILE_L4_NOV" ("GRID_INDEX") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_REPPROFILEL1_OCT
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_REPPROFILEL1_OCT" ON "MEDSDATA"."REPRES_PROFILE_L1_OCT" ("GRID_INDEX") 
  ;
--------------------------------------------------------
--  DDL for Index SI_GRID_L4
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."SI_GRID_L4" ON "MEDSDATA"."MASTER_GRID_L4" ("LOCATION") 
   INDEXTYPE IS "MDSYS"."SPATIAL_INDEX"  PARAMETERS (' ');
--------------------------------------------------------
--  DDL for Index IDX_POSN_ASRAP_1
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_POSN_ASRAP_1" ON "MEDSDATA"."ASRAP_POINT_OBSERVATION" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index PROCESSING_JOB_BOOKING_IDX
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."PROCESSING_JOB_BOOKING_IDX" ON "MEDSDATA"."MEDS_PROCESSING_JOB" ("BOOKING_JOB") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_FLAGS_JOB_OBS_NUMBER
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_FLAGS_JOB_OBS_NUMBER" ON "MEDSDATA"."MEDS_FLAGS" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_SPECL1_LATLONTYPNAM
--------------------------------------------------------

  CREATE UNIQUE INDEX "MEDSDATA"."IDX_SPECL1_LATLONTYPNAM" ON "MEDSDATA"."REPRES_SPECIES_L1" ("LATITUDE", "LONGITUDE", "SPECIES_TYPE", "SPECIES_NAME") 
  ;
--------------------------------------------------------
--  DDL for Index PROFILE_INDEX_SV_YEAR
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."PROFILE_INDEX_SV_YEAR" ON "MEDSDATA"."PROFILE_INDEX_SV" ("YEAR") 
  ;
--------------------------------------------------------
--  DDL for Index SI_MLOSHIP
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."SI_MLOSHIP" ON "MEDSDATA"."MLO_SHIP_OBSERVATION" ("LOCATION") 
   INDEXTYPE IS "MDSYS"."SPATIAL_INDEX"  PARAMETERS (' ');
--------------------------------------------------------
--  DDL for Index PROFILE_INDEX_SV_INSTRUMENT
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."PROFILE_INDEX_SV_INSTRUMENT" ON "MEDSDATA"."PROFILE_INDEX_SV" ("INSTRUMENT_CODE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_AQUA2081_DATA_MEDS
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_AQUA2081_DATA_MEDS" ON "MEDSDATA"."AQUA2081_LINE_DATA" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index SI_GLIDER_THREADED_X
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."SI_GLIDER_THREADED_X" ON "MEDSDATA"."GLIDER_THREADED_OBSERVATION" ("LOCATION") 
   INDEXTYPE IS "MDSYS"."SPATIAL_INDEX"  PARAMETERS ('TABLESPACE=INDX');
--------------------------------------------------------
--  DDL for Index IDX_JOB_MLO_60
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_MLO_60" ON "MEDSDATA"."MLO_OTHERS_DATA" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_REPPROFILEL4_MAR
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_REPPROFILEL4_MAR" ON "MEDSDATA"."REPRES_PROFILE_L4_MAR" ("GRID_INDEX") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_MLO_CETACEANS_TRACK_DATE
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_MLO_CETACEANS_TRACK_DATE" ON "MEDSDATA"."MLO_CETACEANS_TRACK" ("DATE_RECORDED_START") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_ADCP_JOB
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_ADCP_JOB" ON "MEDSDATA"."ADCP_OBSERVATION" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_LATLONG_SHIPHITS_D1
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_LATLONG_SHIPHITS_D1" ON "MEDSDATA"."REPRES_SHIPHITS_D1" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index SI_FRONTDEPTH
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."SI_FRONTDEPTH" ON "MEDSDATA"."FRONT_DEPTH_PLAN_OBSERVATION" ("LOCATION") 
   INDEXTYPE IS "MDSYS"."SPATIAL_INDEX"  PARAMETERS (' ');
--------------------------------------------------------
--  DDL for Index IDX_JOB_GEOLOGY_41
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_GEOLOGY_41" ON "MEDSDATA"."GEOLOGY_PARAM_OBSERVATION" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index SI_SEASOAR_PROFILE
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."SI_SEASOAR_PROFILE" ON "MEDSDATA"."SEASOAR_PROFILE_OBSERVATION" ("LOCATION") 
   INDEXTYPE IS "MDSYS"."SPATIAL_INDEX"  PARAMETERS (' ');
--------------------------------------------------------
--  DDL for Index SI_DIVESITE
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."SI_DIVESITE" ON "MEDSDATA"."DIVE_SITE_OBSERVATION" ("LOCATION") 
   INDEXTYPE IS "MDSYS"."SPATIAL_INDEX"  PARAMETERS (' ');
--------------------------------------------------------
--  DDL for Index PROFILE_INDEX_SV_DATE
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."PROFILE_INDEX_SV_DATE" ON "MEDSDATA"."PROFILE_INDEX_SV" ("DATE_TIME") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_JOB_EDDY_21
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_EDDY_21" ON "MEDSDATA"."EDDY_SATELLITE_DATA" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_JOB_MLO_61
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_MLO_61" ON "MEDSDATA"."MLO_OTHERS_OBSERVATION" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_JOB_DEEP_11
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_DEEP_11" ON "MEDSDATA"."DEEP_SCATTERING_DATA" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_JOB_FRONT_25
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_FRONT_25" ON "MEDSDATA"."FRONT_FWOC_OBSERVATION" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_JOB_FRONT_24
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_FRONT_24" ON "MEDSDATA"."FRONT_DEPTH_PLAN_REPEAT" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index SI_DIRAMBIENT
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."SI_DIRAMBIENT" ON "MEDSDATA"."DIR_AMBIENT_OBSERVATION" ("LOCATION") 
   INDEXTYPE IS "MDSYS"."SPATIAL_INDEX"  PARAMETERS (' ');
--------------------------------------------------------
--  DDL for Index IDX_JOB_MLO_55
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_MLO_55" ON "MEDSDATA"."MLO_CETACEANS_OBSERVATION" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_MLO_SEABED_CONTACT_DATE
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_MLO_SEABED_CONTACT_DATE" ON "MEDSDATA"."MLO_SEABED_CONTACT_OBSERVATION" ("DATE_RECORDED") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_PROFILEL4AUG_LATLON
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_PROFILEL4AUG_LATLON" ON "MEDSDATA"."REPRES_PROFILE_L4_AUG" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_REPIGPADSL1_GRIDIDX
--------------------------------------------------------

  CREATE UNIQUE INDEX "MEDSDATA"."IDX_REPIGPADSL1_GRIDIDX" ON "MEDSDATA"."REPRES_IGPADS_L1" ("GRID_INDEX") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_DATE_MLO_36
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_DATE_MLO_36" ON "MEDSDATA"."MLO_OTHERS_OBSERVATION" ("DATE_RECORDED") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_JOB_FRONT_38
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_FRONT_38" ON "MEDSDATA"."FRONT_TRANSECT_OBSERVATION" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_PROFILEL1MAY_LATLON
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_PROFILEL1MAY_LATLON" ON "MEDSDATA"."REPRES_PROFILE_L1_MAY" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index PROFILE_INDEX_SV_MONTH
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."PROFILE_INDEX_SV_MONTH" ON "MEDSDATA"."PROFILE_INDEX_SV" ("MONTH") 
  ;
--------------------------------------------------------
--  DDL for Index PROFILE_DATA_TONLYALL_IDX
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."PROFILE_DATA_TONLYALL_IDX" ON "MEDSDATA"."PROFILE_DATA_TONLY" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER", "DEPTH") 
  ;
--------------------------------------------------------
--  DDL for Index SI_ADCP
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."SI_ADCP" ON "MEDSDATA"."ADCP_OBSERVATION" ("LOCATION") 
   INDEXTYPE IS "MDSYS"."SPATIAL_INDEX"  PARAMETERS (' ');
--------------------------------------------------------
--  DDL for Index IDX_JOB_BEACH_8
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_BEACH_8" ON "MEDSDATA"."BEACH_OBSERVATION" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_JOB_OMNI_69
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_OMNI_69" ON "MEDSDATA"."OMNI_AMBIENT_OBSERVATION" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_REPPROFILEL4_JAN
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_REPPROFILEL4_JAN" ON "MEDSDATA"."REPRES_PROFILE_L4_JAN" ("GRID_INDEX") 
  ;
--------------------------------------------------------
--  DDL for Index SI_FRONTGRID
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."SI_FRONTGRID" ON "MEDSDATA"."FRONT_GRID_OBSERVATION" ("LOCATION") 
   INDEXTYPE IS "MDSYS"."SPATIAL_INDEX"  PARAMETERS (' ');
--------------------------------------------------------
--  DDL for Index IDX_SEASOAR_DATE
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_SEASOAR_DATE" ON "MEDSDATA"."SEASOAR_PROFILE_OBSERVATION" ("DATE_RECORDED") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_JOB_FRONT_30
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_FRONT_30" ON "MEDSDATA"."FRONT_IMAGE_DATA" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_PROFILEL2MAY_LATLON
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_PROFILEL2MAY_LATLON" ON "MEDSDATA"."REPRES_PROFILE_L2_MAY" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index SHIP_DETAILS_SHIP_IDX
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."SHIP_DETAILS_SHIP_IDX" ON "MEDSDATA"."SHIP_DETAILS" ("MEDS_SHIP_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_DATE_MLO_34
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_DATE_MLO_34" ON "MEDSDATA"."MLO_FISH_OBSERVATION" ("DATE_RECORDED") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_POSN_GEOLOGY_17
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_POSN_GEOLOGY_17" ON "MEDSDATA"."GEOLOGY_QUALITY_OBSERVATION" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_JOB_PRODUCTS_71
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_PRODUCTS_71" ON "MEDSDATA"."PRODUCTS_REGION_DATA" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index SI_ASRAPPOINT
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."SI_ASRAPPOINT" ON "MEDSDATA"."ASRAP_POINT_OBSERVATION" ("LOCATION") 
   INDEXTYPE IS "MDSYS"."SPATIAL_INDEX"  PARAMETERS (' ');
--------------------------------------------------------
--  DDL for Index IDX_REPPROFILEL1_APR
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_REPPROFILEL1_APR" ON "MEDSDATA"."REPRES_PROFILE_L1_APR" ("GRID_INDEX") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_REPSEASRFL1_GRIDIDX
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_REPSEASRFL1_GRIDIDX" ON "MEDSDATA"."REPRES_SEASURFACE_L1" ("GRID_INDEX") 
  ;
--------------------------------------------------------
--  DDL for Index SI_GEOLOGYPARAM
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."SI_GEOLOGYPARAM" ON "MEDSDATA"."GEOLOGY_PARAM_OBSERVATION" ("LOCATION") 
   INDEXTYPE IS "MDSYS"."SPATIAL_INDEX"  PARAMETERS (' ');
--------------------------------------------------------
--  DDL for Index IDX_JOB_FRONT_26
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_FRONT_26" ON "MEDSDATA"."FRONT_FWOC_REPEAT" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_JOB_BEACH_7
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_BEACH_7" ON "MEDSDATA"."BEACH_DATA" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index SI_IWIMAGE
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."SI_IWIMAGE" ON "MEDSDATA"."IW_IMAGE_OBSERVATION" ("LOCATION") 
   INDEXTYPE IS "MDSYS"."SPATIAL_INDEX"  PARAMETERS (' ');
--------------------------------------------------------
--  DDL for Index IDX_FLAGS_CATEGORY
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_FLAGS_CATEGORY" ON "MEDSDATA"."MEDS_FLAGS" ("CATEGORY") 
  ;
--------------------------------------------------------
--  DDL for Index PROFILE_INDEX_SV_JOB
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."PROFILE_INDEX_SV_JOB" ON "MEDSDATA"."PROFILE_INDEX_SV" ("MEDS_JOB_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_DATE_MLO_32
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_DATE_MLO_32" ON "MEDSDATA"."MLO_BIRDS_OBSERVATION" ("DATE_RECORDED") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_REPMIXEDLYRL1_GRIDIDX
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_REPMIXEDLYRL1_GRIDIDX" ON "MEDSDATA"."REPRES_MIXEDLAYER_L1" ("GRID_INDEX") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_POSN_FRONT_10
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_POSN_FRONT_10" ON "MEDSDATA"."FRONT_DEPTH_PLAN_REPEAT" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_REPPROFILEL4_OCT
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_REPPROFILEL4_OCT" ON "MEDSDATA"."REPRES_PROFILE_L4_OCT" ("GRID_INDEX") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_JOBLOOK_TYPE
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOBLOOK_TYPE" ON "MEDSDATA"."JOB_LOOKUPS" ("TYPE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_JOB_MLO_54
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_MLO_54" ON "MEDSDATA"."MLO_CETACEANS_DATA" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_REPPROFILEL4_JUN
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_REPPROFILEL4_JUN" ON "MEDSDATA"."REPRES_PROFILE_L4_JUN" ("GRID_INDEX") 
  ;
--------------------------------------------------------
--  DDL for Index PROFILE_INDEX_TONLY_SHIP
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."PROFILE_INDEX_TONLY_SHIP" ON "MEDSDATA"."PROFILE_INDEX_TONLY" ("MEDS_SHIP_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_REPPROFILEL4_JUL
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_REPPROFILEL4_JUL" ON "MEDSDATA"."REPRES_PROFILE_L4_JUL" ("GRID_INDEX") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_POSN_BIOMASS
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_POSN_BIOMASS" ON "MEDSDATA"."BIOMASS_OBSERVATION" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_DATE_FRONT_21
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_DATE_FRONT_21" ON "MEDSDATA"."FRONT_SATELLITE_OBSERVATION" ("OBSERVERED_DATE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_REPPROFILEL4_AUG
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_REPPROFILEL4_AUG" ON "MEDSDATA"."REPRES_PROFILE_L4_AUG" ("GRID_INDEX") 
  ;
--------------------------------------------------------
--  DDL for Index SI_MLO_SOSUS
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."SI_MLO_SOSUS" ON "MEDSDATA"."MLO_SOSUS_OBSERVATION" ("LOCATION") 
   INDEXTYPE IS "MDSYS"."SPATIAL_INDEX"  PARAMETERS (' ');
--------------------------------------------------------
--  DDL for Index SI_UNIFIEDSECCHI
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."SI_UNIFIEDSECCHI" ON "MEDSDATA"."UNIFIED_SECCHI_OBSERVATION" ("LOCATION") 
   INDEXTYPE IS "MDSYS"."SPATIAL_INDEX"  PARAMETERS ('SDO_LEVEL=2 SDO_NUMTILES=1 TABLESPACE = INDX ');
--------------------------------------------------------
--  DDL for Index IDX_PROFILEL1DEC_LATLON
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_PROFILEL1DEC_LATLON" ON "MEDSDATA"."REPRES_PROFILE_L1_DEC" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_JOB_ASRAP_5
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_ASRAP_5" ON "MEDSDATA"."ASRAP_POLYGON_OBSERVATION" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_JOB_BIOMASS
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_BIOMASS" ON "MEDSDATA"."BIOMASS_OBSERVATION" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_POSN_INTERNAL_18
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_POSN_INTERNAL_18" ON "MEDSDATA"."INTERNAL_WAVE_OBSERVATION" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_DATE_FRONT_20
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_DATE_FRONT_20" ON "MEDSDATA"."FRONT_MEAN_DATA" ("DATES") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_AQUA2081_LATLON
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_AQUA2081_LATLON" ON "MEDSDATA"."AQUA2081_LINE_OBSERVATION" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_ADCP_REPEAT_JOB
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_ADCP_REPEAT_JOB" ON "MEDSDATA"."ADCP_REPEAT" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_DATE_MLO_39
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_DATE_MLO_39" ON "MEDSDATA"."MLO_SHIP_OBSERVATION" ("DATE_RECORDED") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_POSN_SECCHI_29
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_POSN_SECCHI_29" ON "MEDSDATA"."SECCHI_DISK_OBSERVATION" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_PROFILEL1AUG_LATLON
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_PROFILEL1AUG_LATLON" ON "MEDSDATA"."REPRES_PROFILE_L1_AUG" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_REPPROFILEL2_DEC
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_REPPROFILEL2_DEC" ON "MEDSDATA"."REPRES_PROFILE_L2_DEC" ("GRID_INDEX") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_PROFILEL4APR_LATLON
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_PROFILEL4APR_LATLON" ON "MEDSDATA"."REPRES_PROFILE_L4_APR" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_PROFILEL1MAR_LATLON
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_PROFILEL1MAR_LATLON" ON "MEDSDATA"."REPRES_PROFILE_L1_MAR" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_PROFILEL4OCT_LATLON
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_PROFILEL4OCT_LATLON" ON "MEDSDATA"."REPRES_PROFILE_L4_OCT" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_JOB_MLO_53
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_MLO_53" ON "MEDSDATA"."MLO_BIRDS_OBSERVATION" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_SEASOAR_TOW_DATA_JOB
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_SEASOAR_TOW_DATA_JOB" ON "MEDSDATA"."SEASOAR_TOW_DATA" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_POSN_ASRAP_2
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_POSN_ASRAP_2" ON "MEDSDATA"."ASRAP_POLYGON_REPEAT" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_MLO_CETACEANS_TRACK_JOB
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_MLO_CETACEANS_TRACK_JOB" ON "MEDSDATA"."MLO_CETACEANS_TRACK" ("MEDS_JOB_NUMBER", "MEDS_TRACK_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_POSN_MLO_23
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_POSN_MLO_23" ON "MEDSDATA"."MLO_JELLYFISH_OBSERVATION" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_REPPROFILEL1_MAY
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_REPPROFILEL1_MAY" ON "MEDSDATA"."REPRES_PROFILE_L1_MAY" ("GRID_INDEX") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_REPSEASRFL1_GRIDIDXMTH
--------------------------------------------------------

  CREATE UNIQUE INDEX "MEDSDATA"."IDX_REPSEASRFL1_GRIDIDXMTH" ON "MEDSDATA"."REPRES_SEASURFACE_L1" ("LATITUDE", "LONGITUDE", "MONTH_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_DATE_BIOMASS
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_DATE_BIOMASS" ON "MEDSDATA"."BIOMASS_OBSERVATION" ("DATE_RECORDED") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_POSN_DIR_6
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_POSN_DIR_6" ON "MEDSDATA"."DIR_AMBIENT_OBSERVATION" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index SI_AQUA2081LINE
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."SI_AQUA2081LINE" ON "MEDSDATA"."AQUA2081_LINE_OBSERVATION" ("LOCATION") 
   INDEXTYPE IS "MDSYS"."SPATIAL_INDEX"  PARAMETERS (' ');
--------------------------------------------------------
--  DDL for Index PROFILE_INDEX_TS_INSTRUMENT
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."PROFILE_INDEX_TS_INSTRUMENT" ON "MEDSDATA"."PROFILE_INDEX_TS" ("INSTRUMENT_CODE") 
  ;
--------------------------------------------------------
--  DDL for Index SI_MLOBIRDS
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."SI_MLOBIRDS" ON "MEDSDATA"."MLO_BIRDS_OBSERVATION" ("LOCATION") 
   INDEXTYPE IS "MDSYS"."SPATIAL_INDEX"  PARAMETERS (' ');
--------------------------------------------------------
--  DDL for Index IDX_DATE_FRONT_22
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_DATE_FRONT_22" ON "MEDSDATA"."FRONT_SURVEY_OBSERVATION" ("END_DATE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_POSN_GEOLOGY_16
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_POSN_GEOLOGY_16" ON "MEDSDATA"."GEOLOGY_PARAM_OBSERVATION" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_MLO_SEABED_CONTACT_JOB
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_MLO_SEABED_CONTACT_JOB" ON "MEDSDATA"."MLO_SEABED_CONTACT_OBSERVATION" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index PROFILE_INDEX_TS_LATLON
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."PROFILE_INDEX_TS_LATLON" ON "MEDSDATA"."PROFILE_INDEX_TS" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_REPAMBNOISED1_TOY
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_REPAMBNOISED1_TOY" ON "MEDSDATA"."REPRES_AMBIENTNOISE_D1" ("TIME_OF_YEAR") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_JOB_ASRAP_4
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_ASRAP_4" ON "MEDSDATA"."ASRAP_POINT_REPEAT" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_GRIDD1_LATLON
--------------------------------------------------------

  CREATE UNIQUE INDEX "MEDSDATA"."IDX_GRIDD1_LATLON" ON "MEDSDATA"."MASTER_GRID_D1" ("LATITUDE", "LONGITUDE", "DATATYPE") 
  ;
--------------------------------------------------------
--  DDL for Index SI_SHIPPING
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."SI_SHIPPING" ON "MEDSDATA"."SHIPPING_OBSERVATION" ("LOCATION") 
   INDEXTYPE IS "MDSYS"."SPATIAL_INDEX" ;
--------------------------------------------------------
--  DDL for Index IDX_JOB_FRONT_27
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_FRONT_27" ON "MEDSDATA"."FRONT_GRID_DATA" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index PROFILE_DATA_TS_IDX
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."PROFILE_DATA_TS_IDX" ON "MEDSDATA"."PROFILE_DATA_TS" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_JOB_PRODUCTS_72
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_PRODUCTS_72" ON "MEDSDATA"."PRODUCTS_REGION_OBSERVATION" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_MLO_SEABED_CONTACT_DATA
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_MLO_SEABED_CONTACT_DATA" ON "MEDSDATA"."MLO_SEABED_CONTACT_DATA" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_DATE_FRONT_24
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_DATE_FRONT_24" ON "MEDSDATA"."FRONT_TRANSECT_OBSERVATION" ("START_DATE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_FIELD_LOOKUP_DATATYPEINDEX
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_FIELD_LOOKUP_DATATYPEINDEX" ON "MEDSDATA"."FIELD_LOOKUP" ("DATA_TYPE_INDEX") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_DATE_DIVE_12
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_DATE_DIVE_12" ON "MEDSDATA"."DIVE_SITE_DATA" ("DATE_RECORDED") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_MLO_CETACEANS_ENVELOPE_JOB
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_MLO_CETACEANS_ENVELOPE_JOB" ON "MEDSDATA"."MLO_CETACEANS_ENVELOPE" ("MEDS_JOB_NUMBER", "MEDS_TRACK_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_JOB_MLO_64
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_MLO_64" ON "MEDSDATA"."MLO_REPTILES_DATA" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_REPMIXEDLYRL1_GRIDIDXMTH
--------------------------------------------------------

  CREATE UNIQUE INDEX "MEDSDATA"."IDX_REPMIXEDLYRL1_GRIDIDXMTH" ON "MEDSDATA"."REPRES_MIXEDLAYER_L1" ("LATITUDE", "LONGITUDE", "MONTH_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SI_MLOCETEACEANS
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."SI_MLOCETEACEANS" ON "MEDSDATA"."MLO_CETACEANS_OBSERVATION" ("LOCATION") 
   INDEXTYPE IS "MDSYS"."SPATIAL_INDEX" ;
--------------------------------------------------------
--  DDL for Index IDX_PROFILEL4MAR_LATLON
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_PROFILEL4MAR_LATLON" ON "MEDSDATA"."REPRES_PROFILE_L4_MAR" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index WVS_COUNTRY
--------------------------------------------------------

  CREATE UNIQUE INDEX "MEDSDATA"."WVS_COUNTRY" ON "MEDSDATA"."WVS_D_3M_COUNTPOLY" ("NAM_DESCRI") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_JOB_OMNI_68
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_OMNI_68" ON "MEDSDATA"."OMNI_AMBIENT_DATA" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index WVS_BATHY_3M
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."WVS_BATHY_3M" ON "MEDSDATA"."WVS_3M_BATHY_LINE" ("CRV") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_REPMIXEDLYRD1_GRIDIDXMTH
--------------------------------------------------------

  CREATE UNIQUE INDEX "MEDSDATA"."IDX_REPMIXEDLYRD1_GRIDIDXMTH" ON "MEDSDATA"."REPRES_MIXEDLAYER_D1" ("LATITUDE", "LONGITUDE", "MONTH_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SI_DEEPSCATTERIN
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."SI_DEEPSCATTERIN" ON "MEDSDATA"."DEEP_SCATTERING_OBSERVATION" ("LOCATION") 
   INDEXTYPE IS "MDSYS"."SPATIAL_INDEX"  PARAMETERS (' ');
--------------------------------------------------------
--  DDL for Index IDX_DATE_MLO_38
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_DATE_MLO_38" ON "MEDSDATA"."MLO_REPTILES_OBSERVATION" ("DATE_RECORDED") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_JOB_ASRAP_3
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_ASRAP_3" ON "MEDSDATA"."ASRAP_POINT_OBSERVATION" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_JOB_IW_47
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_IW_47" ON "MEDSDATA"."IW_IMAGE_DATA" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index SI_BIOMASS
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."SI_BIOMASS" ON "MEDSDATA"."BIOMASS_OBSERVATION" ("LOCATION") 
   INDEXTYPE IS "MDSYS"."SPATIAL_INDEX"  PARAMETERS (' ');
--------------------------------------------------------
--  DDL for Index IDX_GRIDL1_LATLON
--------------------------------------------------------

  CREATE UNIQUE INDEX "MEDSDATA"."IDX_GRIDL1_LATLON" ON "MEDSDATA"."MASTER_GRID_L1" ("LATITUDE", "LONGITUDE", "DATATYPE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_AQUALINE_LATLON
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_AQUALINE_LATLON" ON "MEDSDATA"."AQUAPACK_LINE_OBSERVATION" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_REPPROFILEL2_AUG
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_REPPROFILEL2_AUG" ON "MEDSDATA"."REPRES_PROFILE_L2_AUG" ("GRID_INDEX") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_GRIDL4_LATLON
--------------------------------------------------------

  CREATE UNIQUE INDEX "MEDSDATA"."IDX_GRIDL4_LATLON" ON "MEDSDATA"."MASTER_GRID_L4" ("LATITUDE", "LONGITUDE", "DATATYPE") 
  ;
--------------------------------------------------------
--  DDL for Index MDQT_39EC6$_B1
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."MDQT_39EC6$_B1" ON "MEDSDATA"."MDQT_39EC6$" ("SDO_GROUPCODE", "SDO_CODE", "SDO_ROWID", "SDO_STATUS") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_DATE_AQUAPACK_1
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_DATE_AQUAPACK_1" ON "MEDSDATA"."AQUAPACK_JOB" ("DATE_ARCHIVED") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_REPPROFILEL4_DEC
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_REPPROFILEL4_DEC" ON "MEDSDATA"."REPRES_PROFILE_L4_DEC" ("GRID_INDEX") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_DATE_MLO_SOSUS
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_DATE_MLO_SOSUS" ON "MEDSDATA"."MLO_SOSUS_OBSERVATION" ("DATE_RECORDED") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_POSN_BIOLUMINESCENCE_4
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_POSN_BIOLUMINESCENCE_4" ON "MEDSDATA"."BIOLUMINESCENCE_OBSERVATION" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_PROFILEL1SEP_LATLON
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_PROFILEL1SEP_LATLON" ON "MEDSDATA"."REPRES_PROFILE_L1_SEP" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index SI_CHART_PANEL
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."SI_CHART_PANEL" ON "MEDSDATA"."CHART_PANEL" ("LIMITS") 
   INDEXTYPE IS "MDSYS"."SPATIAL_INDEX"  PARAMETERS (' ');
--------------------------------------------------------
--  DDL for Index IDX_PROFILEL4NOV_LATLON
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_PROFILEL4NOV_LATLON" ON "MEDSDATA"."REPRES_PROFILE_L4_NOV" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_REPPROFILEL1_JUN
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_REPPROFILEL1_JUN" ON "MEDSDATA"."REPRES_PROFILE_L1_JUN" ("GRID_INDEX") 
  ;
--------------------------------------------------------
--  DDL for Index SHIP_DETAILS_CRUISE_IDX
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."SHIP_DETAILS_CRUISE_IDX" ON "MEDSDATA"."SHIP_DETAILS" ("MEDS_CRUISE_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index SI_AQUAPACKLINE
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."SI_AQUAPACKLINE" ON "MEDSDATA"."AQUAPACK_LINE_OBSERVATION" ("LOCATION") 
   INDEXTYPE IS "MDSYS"."SPATIAL_INDEX"  PARAMETERS (' ');
--------------------------------------------------------
--  DDL for Index IDX_JOB_FRONT_39
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_FRONT_39" ON "MEDSDATA"."FRONT_TRANSECT_REPEAT" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_PROFILEL4DEC_LATLON
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_PROFILEL4DEC_LATLON" ON "MEDSDATA"."REPRES_PROFILE_L4_DEC" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_DATE_IW_29
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_DATE_IW_29" ON "MEDSDATA"."IW_IMAGE_OBSERVATION" ("RECORDED_DATE") 
  ;
--------------------------------------------------------
--  DDL for Index SI_MLOPINNIPEDS
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."SI_MLOPINNIPEDS" ON "MEDSDATA"."MLO_PINNIPEDS_OBSERVATION" ("LOCATION") 
   INDEXTYPE IS "MDSYS"."SPATIAL_INDEX"  PARAMETERS (' ');
--------------------------------------------------------
--  DDL for Index IDX_REPPROFILEL1_JAN
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_REPPROFILEL1_JAN" ON "MEDSDATA"."REPRES_PROFILE_L1_JAN" ("GRID_INDEX") 
  ;
--------------------------------------------------------
--  DDL for Index OBSERVATION_IDX2
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."OBSERVATION_IDX2" ON "MEDSDATA"."OBSERVATION" ("JOB_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index PROFILE_DATA_SV_IDX
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."PROFILE_DATA_SV_IDX" ON "MEDSDATA"."PROFILE_DATA_SV" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_REPPROFILEL4_APR
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_REPPROFILEL4_APR" ON "MEDSDATA"."REPRES_PROFILE_L4_APR" ("GRID_INDEX") 
  ;
--------------------------------------------------------
--  DDL for Index SI_FRONTSATELLITE
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."SI_FRONTSATELLITE" ON "MEDSDATA"."FRONT_SATELLITE_OBSERVATION" ("LOCATION") 
   INDEXTYPE IS "MDSYS"."SPATIAL_INDEX"  PARAMETERS ('TABLESPACE=INDX');
--------------------------------------------------------
--  DDL for Index PROFILE_INDEX_TS_MONTH
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."PROFILE_INDEX_TS_MONTH" ON "MEDSDATA"."PROFILE_INDEX_TS" ("MONTH") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_PROFILEL1NOV_LATLON
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_PROFILEL1NOV_LATLON" ON "MEDSDATA"."REPRES_PROFILE_L1_NOV" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index SI_ASRAPPOLY
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."SI_ASRAPPOLY" ON "MEDSDATA"."ASRAP_POLYGON_OBSERVATION" ("LOCATION") 
   INDEXTYPE IS "MDSYS"."SPATIAL_INDEX"  PARAMETERS (' ');
--------------------------------------------------------
--  DDL for Index SI_TIFF_CHARTS
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."SI_TIFF_CHARTS" ON "MEDSDATA"."TIFF_CHARTS" ("LIMITS") 
   INDEXTYPE IS "MDSYS"."SPATIAL_INDEX"  PARAMETERS (' ');
--------------------------------------------------------
--  DDL for Index IDX_DATE_EDDY_13
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_DATE_EDDY_13" ON "MEDSDATA"."EDDY_DATA" ("PUBLICATION_DATE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_JOB_IW_49
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_IW_49" ON "MEDSDATA"."IW_PACKETS" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index PROFILE_INDEX_TONLY_DATE
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."PROFILE_INDEX_TONLY_DATE" ON "MEDSDATA"."PROFILE_INDEX_TONLY" ("DATE_TIME") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_JOB_ASRAP_6
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_ASRAP_6" ON "MEDSDATA"."ASRAP_POLYGON_REPEAT" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_POSN_SHIPPING
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_POSN_SHIPPING" ON "MEDSDATA"."SHIPPING_OBSERVATION" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_SEASOAR_TOW_JOB
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_SEASOAR_TOW_JOB" ON "MEDSDATA"."SEASOAR_TOW_OBSERVATION" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_JOB_BIOLUMINESCENCE_10
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_BIOLUMINESCENCE_10" ON "MEDSDATA"."BIOLUMINESCENCE_OBSERVATION" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_JOB_EDDY_19
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_EDDY_19" ON "MEDSDATA"."EDDY_OBSERVATION" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_REPPROFILEL1_DEC
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_REPPROFILEL1_DEC" ON "MEDSDATA"."REPRES_PROFILE_L1_DEC" ("GRID_INDEX") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_JOB_IW_51
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_IW_51" ON "MEDSDATA"."IW_WAVES" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index SHIP_DETAILS_INSTCODE
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."SHIP_DETAILS_INSTCODE" ON "MEDSDATA"."SHIP_DETAILS" ("MIAS_INSTITUTE_CODE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_POSN_MLO_20
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_POSN_MLO_20" ON "MEDSDATA"."MLO_BIRDS_OBSERVATION" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_PROFILEL1FEB_LATLON
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_PROFILEL1FEB_LATLON" ON "MEDSDATA"."REPRES_PROFILE_L1_FEB" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_AQUALINE_DATA_MEDS
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_AQUALINE_DATA_MEDS" ON "MEDSDATA"."AQUAPACK_LINE_DATA" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_PROFILEL2OCT_LATLON
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_PROFILEL2OCT_LATLON" ON "MEDSDATA"."REPRES_PROFILE_L2_OCT" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_JOB_INTERNAL_46
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_INTERNAL_46" ON "MEDSDATA"."INTERNAL_WAVE_REPEAT" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_DATE_SHIPPING
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_DATE_SHIPPING" ON "MEDSDATA"."SHIPPING_OBSERVATION" ("DATE_RECORDED") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_LATLONG_MIXEDLAYER_L2
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_LATLONG_MIXEDLAYER_L2" ON "MEDSDATA"."REPRES_MIXEDLAYER_L2" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index SI_MLO_CETACEANS_ENVELOPE
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."SI_MLO_CETACEANS_ENVELOPE" ON "MEDSDATA"."MLO_CETACEANS_ENVELOPE" ("ENVELOPE") 
   INDEXTYPE IS "MDSYS"."SPATIAL_INDEX"  PARAMETERS ('TABLESPACE=INDX');
--------------------------------------------------------
--  DDL for Index IDX_JOB_MLO_58
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_MLO_58" ON "MEDSDATA"."MLO_JELLYFISH_DATA" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_PROFILEL2AUG_LATLON
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_PROFILEL2AUG_LATLON" ON "MEDSDATA"."REPRES_PROFILE_L2_AUG" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_JOB_DEEP_12
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_DEEP_12" ON "MEDSDATA"."DEEP_SCATTERING_OBSERVATION" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_INSTRUMENT_OCEAN
--------------------------------------------------------

  CREATE UNIQUE INDEX "MEDSDATA"."IDX_INSTRUMENT_OCEAN" ON "MEDSDATA"."INSTRUMENT" ("OCEAN") 
  ;
--------------------------------------------------------
--  DDL for Index SI_AQUAPACKPROFI
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."SI_AQUAPACKPROFI" ON "MEDSDATA"."AQUAPACK_PROFILE_OBSERVATION" ("LOCATION") 
   INDEXTYPE IS "MDSYS"."SPATIAL_INDEX"  PARAMETERS (' ');
--------------------------------------------------------
--  DDL for Index IDX_JOB_FRONT_32
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_FRONT_32" ON "MEDSDATA"."FRONT_MEAN_DATA" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_DATE_MLO_35
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_DATE_MLO_35" ON "MEDSDATA"."MLO_JELLYFISH_OBSERVATION" ("DATE_RECORDED") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_JOB_FRONT_35
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_FRONT_35" ON "MEDSDATA"."FRONT_SATELLITE_OBSERVATION" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_PROFILEL2MAR_LATLON
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_PROFILEL2MAR_LATLON" ON "MEDSDATA"."REPRES_PROFILE_L2_MAR" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_REPPROFILEL2_JUN
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_REPPROFILEL2_JUN" ON "MEDSDATA"."REPRES_PROFILE_L2_JUN" ("GRID_INDEX") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_REPPROFILEL4_FEB
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_REPPROFILEL4_FEB" ON "MEDSDATA"."REPRES_PROFILE_L4_FEB" ("GRID_INDEX") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_PROFILEL4FEB_LATLON
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_PROFILEL4FEB_LATLON" ON "MEDSDATA"."REPRES_PROFILE_L4_FEB" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index PROFILE_INDEX_TS_SHIP
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."PROFILE_INDEX_TS_SHIP" ON "MEDSDATA"."PROFILE_INDEX_TS" ("MEDS_SHIP_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_GRIDL2_LATLON
--------------------------------------------------------

  CREATE UNIQUE INDEX "MEDSDATA"."IDX_GRIDL2_LATLON" ON "MEDSDATA"."MASTER_GRID_L2" ("LATITUDE", "LONGITUDE", "DATATYPE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_REPPROFILEL1_MAR
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_REPPROFILEL1_MAR" ON "MEDSDATA"."REPRES_PROFILE_L1_MAR" ("GRID_INDEX") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_PROFILEL4JUL_LATLON
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_PROFILEL4JUL_LATLON" ON "MEDSDATA"."REPRES_PROFILE_L4_JUL" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index SI_FRONTTRANSECT
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."SI_FRONTTRANSECT" ON "MEDSDATA"."FRONT_TRANSECT_OBSERVATION" ("LOCATION") 
   INDEXTYPE IS "MDSYS"."SPATIAL_INDEX"  PARAMETERS (' ');
--------------------------------------------------------
--  DDL for Index IDX_MLO_CETACEANS_TRACK
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_MLO_CETACEANS_TRACK" ON "MEDSDATA"."MLO_CETACEANS_OBSERVATION" ("MEDS_JOB_NUMBER", "MEDS_TRACK_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_JOB_MLO_SOSUS
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_MLO_SOSUS" ON "MEDSDATA"."MLO_SOSUS_OBSERVATION" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index SI_FRONTSURVEY
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."SI_FRONTSURVEY" ON "MEDSDATA"."FRONT_SURVEY_OBSERVATION" ("LOCATION") 
   INDEXTYPE IS "MDSYS"."SPATIAL_INDEX"  PARAMETERS (' ');
--------------------------------------------------------
--  DDL for Index IDX_JOB_FRONT_28
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_FRONT_28" ON "MEDSDATA"."FRONT_GRID_OBSERVATION" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_POSN_FRONT_12
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_POSN_FRONT_12" ON "MEDSDATA"."FRONT_GRID_REPEAT" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_DATE_OMNI_40
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_DATE_OMNI_40" ON "MEDSDATA"."OMNI_AMBIENT_OBSERVATION" ("DATE_RECORDED") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_POSN_MLO_26
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_POSN_MLO_26" ON "MEDSDATA"."MLO_REPTILES_OBSERVATION" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index SI_EDDYOBSERVATI
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."SI_EDDYOBSERVATI" ON "MEDSDATA"."EDDY_OBSERVATION" ("LOCATION") 
   INDEXTYPE IS "MDSYS"."SPATIAL_INDEX"  PARAMETERS (' ');
--------------------------------------------------------
--  DDL for Index IDX_POSN_DIVE_7
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_POSN_DIVE_7" ON "MEDSDATA"."DIVE_SITE_OBSERVATION" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_POSN_MLO_SOSUS
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_POSN_MLO_SOSUS" ON "MEDSDATA"."MLO_SOSUS_OBSERVATION" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_JOB_FRONT_37
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_FRONT_37" ON "MEDSDATA"."FRONT_SURVEY_OBSERVATION" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_REPSPECIESL1_GRIDIDX
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_REPSPECIESL1_GRIDIDX" ON "MEDSDATA"."REPRES_SPECIES_L1" ("GRID_INDEX") 
  ;
--------------------------------------------------------
--  DDL for Index SI_GRID_L1
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."SI_GRID_L1" ON "MEDSDATA"."MASTER_GRID_L1" ("LOCATION") 
   INDEXTYPE IS "MDSYS"."SPATIAL_INDEX"  PARAMETERS (' ');
--------------------------------------------------------
--  DDL for Index IDX_REPPROFILEL2_JAN
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_REPPROFILEL2_JAN" ON "MEDSDATA"."REPRES_PROFILE_L2_JAN" ("GRID_INDEX") 
  ;
--------------------------------------------------------
--  DDL for Index SI_SECCHIDISK
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."SI_SECCHIDISK" ON "MEDSDATA"."SECCHI_DISK_OBSERVATION" ("LOCATION") 
   INDEXTYPE IS "MDSYS"."SPATIAL_INDEX"  PARAMETERS (' ');
--------------------------------------------------------
--  DDL for Index IDX_DATE_EDDY_14
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_DATE_EDDY_14" ON "MEDSDATA"."EDDY_SATELLITE_OBSERVATION" ("EDDY_OBSERVED_DATE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_DATE_FRONT_18
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_DATE_FRONT_18" ON "MEDSDATA"."FRONT_FWOC_OBSERVATION" ("FRONT_DATE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_POSN_DEEP_5
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_POSN_DEEP_5" ON "MEDSDATA"."DEEP_SCATTERING_OBSERVATION" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index R421_SDE_ROWID_UK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MEDSDATA"."R421_SDE_ROWID_UK" ON "MEDSDATA"."WVS_3M_BATHY_LINE" ("OBJECTID") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_PROFILEL2APR_LATLON
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_PROFILEL2APR_LATLON" ON "MEDSDATA"."REPRES_PROFILE_L2_APR" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_JOB_MLO_52
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_MLO_52" ON "MEDSDATA"."MLO_BIRDS_DATA" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_ADCP_DATA_JOB
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_ADCP_DATA_JOB" ON "MEDSDATA"."ADCP_DATA" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_REPPROFILEL1_JUL
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_REPPROFILEL1_JUL" ON "MEDSDATA"."REPRES_PROFILE_L1_JUL" ("GRID_INDEX") 
  ;
--------------------------------------------------------
--  DDL for Index PROFILE_DATA_SVALL_IDX
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."PROFILE_DATA_SVALL_IDX" ON "MEDSDATA"."PROFILE_DATA_SV" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER", "DEPTH") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_GRIDL4_GRIDINDEX
--------------------------------------------------------

  CREATE UNIQUE INDEX "MEDSDATA"."IDX_GRIDL4_GRIDINDEX" ON "MEDSDATA"."MASTER_GRID_L4" ("GRID_INDEX", "DATATYPE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_POSN_MLO_21
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_POSN_MLO_21" ON "MEDSDATA"."MLO_CETACEANS_OBSERVATION" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_JOB_DIR_15
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_DIR_15" ON "MEDSDATA"."DIR_AMBIENT_REPEAT" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_PROFILEL1OCT_LATLON
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_PROFILEL1OCT_LATLON" ON "MEDSDATA"."REPRES_PROFILE_L1_OCT" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_DATE_INTERNAL_26
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_DATE_INTERNAL_26" ON "MEDSDATA"."INTERNAL_WAVE_DATA" ("OBSERVED_DATE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_SHIPPING
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_SHIPPING" ON "MEDSDATA"."SHIPPING_DATA" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index PROFILE_INDEX_SV_SHIP
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."PROFILE_INDEX_SV_SHIP" ON "MEDSDATA"."PROFILE_INDEX_SV" ("MEDS_SHIP_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index PROFILE_INDEX_TONLY_YEAR
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."PROFILE_INDEX_TONLY_YEAR" ON "MEDSDATA"."PROFILE_INDEX_TONLY" ("YEAR") 
  ;
--------------------------------------------------------
--  DDL for Index SI_GEOLOGYQUALIT
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."SI_GEOLOGYQUALIT" ON "MEDSDATA"."GEOLOGY_QUALITY_OBSERVATION" ("LOCATION") 
   INDEXTYPE IS "MDSYS"."SPATIAL_INDEX"  PARAMETERS (' ');
--------------------------------------------------------
--  DDL for Index PROFILE_DATA_TONLY_IDX
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."PROFILE_DATA_TONLY_IDX" ON "MEDSDATA"."PROFILE_DATA_TONLY" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index SI_MLOREPTILES
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."SI_MLOREPTILES" ON "MEDSDATA"."MLO_REPTILES_OBSERVATION" ("LOCATION") 
   INDEXTYPE IS "MDSYS"."SPATIAL_INDEX"  PARAMETERS (' ');
--------------------------------------------------------
--  DDL for Index IDX_JOB_SHIPPING
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_SHIPPING" ON "MEDSDATA"."SHIPPING_OBSERVATION" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_REPPROFILEL2_APR
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_REPPROFILEL2_APR" ON "MEDSDATA"."REPRES_PROFILE_L2_APR" ("GRID_INDEX") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_JOB_DIVE_16
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_DIVE_16" ON "MEDSDATA"."DIVE_SITE_DATA" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index SI_GRID_D1
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."SI_GRID_D1" ON "MEDSDATA"."MASTER_GRID_D1" ("LOCATION") 
   INDEXTYPE IS "MDSYS"."SPATIAL_INDEX"  PARAMETERS (' ');
--------------------------------------------------------
--  DDL for Index IDX_POSN_MLO_25
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_POSN_MLO_25" ON "MEDSDATA"."MLO_PINNIPEDS_OBSERVATION" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_POSN_OMNI_28
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_POSN_OMNI_28" ON "MEDSDATA"."OMNI_AMBIENT_OBSERVATION" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index PROFILE_INDEX_SV_CRUISE
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."PROFILE_INDEX_SV_CRUISE" ON "MEDSDATA"."PROFILE_INDEX_SV" ("MEDS_CRUISE_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index PROFILE_INDEX_TONLY_LATLON
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."PROFILE_INDEX_TONLY_LATLON" ON "MEDSDATA"."PROFILE_INDEX_TONLY" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_PROFILEL2NOV_LATLON
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_PROFILEL2NOV_LATLON" ON "MEDSDATA"."REPRES_PROFILE_L2_NOV" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_LATLONG_IGPADS_L1
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_LATLONG_IGPADS_L1" ON "MEDSDATA"."REPRES_IGPADS_L1" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_POSN_FRONT_15
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_POSN_FRONT_15" ON "MEDSDATA"."FRONT_TRANSECT_REPEAT" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index SI_PRODUCTSREGION
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."SI_PRODUCTSREGION" ON "MEDSDATA"."PRODUCTS_REGION_OBSERVATION" ("LOCATION") 
   INDEXTYPE IS "MDSYS"."SPATIAL_INDEX"  PARAMETERS (' ');
--------------------------------------------------------
--  DDL for Index IDX_PROFILEL4SEP_LATLON
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_PROFILEL4SEP_LATLON" ON "MEDSDATA"."REPRES_PROFILE_L4_SEP" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_PROFILEL4MAY_LATLON
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_PROFILEL4MAY_LATLON" ON "MEDSDATA"."REPRES_PROFILE_L4_MAY" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index SI_MLOOTHERS
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."SI_MLOOTHERS" ON "MEDSDATA"."MLO_OTHERS_OBSERVATION" ("LOCATION") 
   INDEXTYPE IS "MDSYS"."SPATIAL_INDEX"  PARAMETERS (' ');
--------------------------------------------------------
--  DDL for Index IDX_JOB_INTERNAL_45
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_INTERNAL_45" ON "MEDSDATA"."INTERNAL_WAVE_OBSERVATION" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index CRUISE_LAYER_BOOKING_IDX
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."CRUISE_LAYER_BOOKING_IDX" ON "MEDSDATA"."CRUISE_LAYER" ("BOOKING_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_UNIFIED_SECCHI_LATLON
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_UNIFIED_SECCHI_LATLON" ON "MEDSDATA"."UNIFIED_SECCHI_OBSERVATION" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_REPPROFILEL1_NOV
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_REPPROFILEL1_NOV" ON "MEDSDATA"."REPRES_PROFILE_L1_NOV" ("GRID_INDEX") 
  ;
--------------------------------------------------------
--  DDL for Index PROFILE_DATA_TSALL_IDX
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."PROFILE_DATA_TSALL_IDX" ON "MEDSDATA"."PROFILE_DATA_TS" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER", "DEPTH") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_JOB_FRONT_23
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_FRONT_23" ON "MEDSDATA"."FRONT_DEPTH_PLAN_OBSERVATION" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index SI_BIOLUMINESCEN
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."SI_BIOLUMINESCEN" ON "MEDSDATA"."BIOLUMINESCENCE_OBSERVATION" ("LOCATION") 
   INDEXTYPE IS "MDSYS"."SPATIAL_INDEX"  PARAMETERS (' ');
--------------------------------------------------------
--  DDL for Index IDX_POSN_MLO_24
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_POSN_MLO_24" ON "MEDSDATA"."MLO_OTHERS_OBSERVATION" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_PROFILEL2FEB_LATLON
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_PROFILEL2FEB_LATLON" ON "MEDSDATA"."REPRES_PROFILE_L2_FEB" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_DATE_FRONT_15
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_DATE_FRONT_15" ON "MEDSDATA"."FRONT_DEPTH_PLAN_OBSERVATION" ("START_DATE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_REPPROFILEL4_SEP
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_REPPROFILEL4_SEP" ON "MEDSDATA"."REPRES_PROFILE_L4_SEP" ("GRID_INDEX") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_REPSHIPHITSD1_GRIDIDXMTH
--------------------------------------------------------

  CREATE UNIQUE INDEX "MEDSDATA"."IDX_REPSHIPHITSD1_GRIDIDXMTH" ON "MEDSDATA"."REPRES_SHIPHITS_D1" ("LATITUDE", "LONGITUDE", "MONTH_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PROFILE_INDEX_TS_YEAR
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."PROFILE_INDEX_TS_YEAR" ON "MEDSDATA"."PROFILE_INDEX_TS" ("YEAR") 
  ;
--------------------------------------------------------
--  DDL for Index A530_IX1
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."A530_IX1" ON "MEDSDATA"."WVS_D_3M_COUNTPOLY" ("SHAPE") 
   INDEXTYPE IS "MDSYS"."SPATIAL_INDEX"  PARAMETERS (' ');
--------------------------------------------------------
--  DDL for Index IDX_REPPROFILEL2_JUL
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_REPPROFILEL2_JUL" ON "MEDSDATA"."REPRES_PROFILE_L2_JUL" ("GRID_INDEX") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_PROFILEL2SEP_LATLON
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_PROFILEL2SEP_LATLON" ON "MEDSDATA"."REPRES_PROFILE_L2_SEP" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index PROFILE_INDEX_TONLY_CRUISE
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."PROFILE_INDEX_TONLY_CRUISE" ON "MEDSDATA"."PROFILE_INDEX_TONLY" ("MEDS_CRUISE_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_JOB_FRONT_29
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_FRONT_29" ON "MEDSDATA"."FRONT_GRID_REPEAT" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_UNIFIED_SECCHI_DATA_OBS
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_UNIFIED_SECCHI_DATA_OBS" ON "MEDSDATA"."UNIFIED_SECCHI_DATA" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index BATHY_CVL
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."BATHY_CVL" ON "MEDSDATA"."WVS_3M" ("CVL") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_JOB_MLO_56
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_MLO_56" ON "MEDSDATA"."MLO_FISH_DATA" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_DATE_MLO_33
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_DATE_MLO_33" ON "MEDSDATA"."MLO_CETACEANS_OBSERVATION" ("DATE_RECORDED") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_JOB_GEOLOGY_40
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_GEOLOGY_40" ON "MEDSDATA"."GEOLOGY_PARAM_DATA" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index SI_GRID_L2
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."SI_GRID_L2" ON "MEDSDATA"."MASTER_GRID_L2" ("LOCATION") 
   INDEXTYPE IS "MDSYS"."SPATIAL_INDEX"  PARAMETERS (' ');
--------------------------------------------------------
--  DDL for Index IDX_DATE_SECCHI_42
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_DATE_SECCHI_42" ON "MEDSDATA"."SECCHI_DISK_OBSERVATION" ("DATE_RECORDED") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_REPPROFILEL1_SEP
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_REPPROFILEL1_SEP" ON "MEDSDATA"."REPRES_PROFILE_L1_SEP" ("GRID_INDEX") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_REPPROFILEL4_MAY
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_REPPROFILEL4_MAY" ON "MEDSDATA"."REPRES_PROFILE_L4_MAY" ("GRID_INDEX") 
  ;
--------------------------------------------------------
--  DDL for Index SI_FRONTMEAN
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."SI_FRONTMEAN" ON "MEDSDATA"."FRONT_MEAN_OBSERVATION" ("LOCATION") 
   INDEXTYPE IS "MDSYS"."SPATIAL_INDEX"  PARAMETERS (' ');
--------------------------------------------------------
--  DDL for Index IDX_JOB_FRONT_33
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_FRONT_33" ON "MEDSDATA"."FRONT_MEAN_OBSERVATION" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_SEASOAR_JOB
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_SEASOAR_JOB" ON "MEDSDATA"."SEASOAR_PROFILE_OBSERVATION" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_LEVELINDEX_TABLENAM
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_LEVELINDEX_TABLENAM" ON "MEDSDATA"."TABLE_INDEX_LOOKUP" ("TABLE_NAME") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_AQUA2081_JOB
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_AQUA2081_JOB" ON "MEDSDATA"."AQUA2081_LINE_OBSERVATION" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index OBSERVATION_IDX1
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."OBSERVATION_IDX1" ON "MEDSDATA"."OBSERVATION" ("USER_NAME") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_REPMIXEDLYRL2_GRIDIDX
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_REPMIXEDLYRL2_GRIDIDX" ON "MEDSDATA"."REPRES_MIXEDLAYER_L2" ("GRID_INDEX") 
  ;
--------------------------------------------------------
--  DDL for Index CRUISE_LAYER_NAME_IDX
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."CRUISE_LAYER_NAME_IDX" ON "MEDSDATA"."CRUISE_LAYER" ("CRUISE_NAME") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_SUPTAB_NAM
--------------------------------------------------------

  CREATE UNIQUE INDEX "MEDSDATA"."IDX_SUPTAB_NAM" ON "MEDSDATA"."SUPPORT_TABLES" ("NAME") 
  ;
--------------------------------------------------------
--  DDL for Index SI_BEACHOBSERVAT
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."SI_BEACHOBSERVAT" ON "MEDSDATA"."BEACH_OBSERVATION" ("LOCATION") 
   INDEXTYPE IS "MDSYS"."SPATIAL_INDEX"  PARAMETERS (' ');
--------------------------------------------------------
--  DDL for Index IDX_SEASOAR_DATA_JOB
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_SEASOAR_DATA_JOB" ON "MEDSDATA"."SEASOAR_PROFILE_DATA" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_DATE_FRONT_16
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_DATE_FRONT_16" ON "MEDSDATA"."FRONT_DEPTH_PLAN_OBSERVATION" ("SURVEY_DATES") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_BIOMASS_JOB
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_BIOMASS_JOB" ON "MEDSDATA"."BIOMASS_DATA" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_DATE_PRODUCTS_41
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_DATE_PRODUCTS_41" ON "MEDSDATA"."PRODUCTS_REGION_OBSERVATION" ("STATUS_DATE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_PROFILEL2JAN_LATLON
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_PROFILEL2JAN_LATLON" ON "MEDSDATA"."REPRES_PROFILE_L2_JAN" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_MLO_SEABED_CONTACT_POSN
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_MLO_SEABED_CONTACT_POSN" ON "MEDSDATA"."MLO_SEABED_CONTACT_OBSERVATION" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index PROFILE_INDEX_TONLY_INSTRUMENT
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."PROFILE_INDEX_TONLY_INSTRUMENT" ON "MEDSDATA"."PROFILE_INDEX_TONLY" ("INSTRUMENT_CODE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_JOB_GEOLOGY_42
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_GEOLOGY_42" ON "MEDSDATA"."GEOLOGY_QUALITY_DATA" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_PROFILEL1JUN_LATLON
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_PROFILEL1JUN_LATLON" ON "MEDSDATA"."REPRES_PROFILE_L1_JUN" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_DATE_FRONT_25
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_DATE_FRONT_25" ON "MEDSDATA"."FRONT_TRANSECT_OBSERVATION" ("TRANSECT_DATES") 
  ;
--------------------------------------------------------
--  DDL for Index SI_EDDYSATELLITE
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."SI_EDDYSATELLITE" ON "MEDSDATA"."EDDY_SATELLITE_OBSERVATION" ("LOCATION") 
   INDEXTYPE IS "MDSYS"."SPATIAL_INDEX"  PARAMETERS (' ');
--------------------------------------------------------
--  DDL for Index SI_MLOJELLYFISH
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."SI_MLOJELLYFISH" ON "MEDSDATA"."MLO_JELLYFISH_OBSERVATION" ("LOCATION") 
   INDEXTYPE IS "MDSYS"."SPATIAL_INDEX"  PARAMETERS (' ');
--------------------------------------------------------
--  DDL for Index SI_MLO_CETACEANS_TRACK
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."SI_MLO_CETACEANS_TRACK" ON "MEDSDATA"."MLO_CETACEANS_TRACK" ("LOCATION") 
   INDEXTYPE IS "MDSYS"."SPATIAL_INDEX"  PARAMETERS ('TABLESPACE=INDX');
--------------------------------------------------------
--  DDL for Index IDX_JOB_MLO_65
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_MLO_65" ON "MEDSDATA"."MLO_REPTILES_OBSERVATION" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_JOB_DIR_13
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_DIR_13" ON "MEDSDATA"."DIR_AMBIENT_DATA" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_JOB_MLO_66
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_MLO_66" ON "MEDSDATA"."MLO_SHIP_DATA" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_DATE_FRONT_17
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_DATE_FRONT_17" ON "MEDSDATA"."FRONT_FWOC_OBSERVATION" ("ARCHIVE_DATE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_LATLONG_AMBIENTNOISE_D1
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_LATLONG_AMBIENTNOISE_D1" ON "MEDSDATA"."REPRES_AMBIENTNOISE_D1" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_JOB_GEOLOGY_43
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_GEOLOGY_43" ON "MEDSDATA"."GEOLOGY_QUALITY_OBSERVATION" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_REPIGPADSL2_GRIDIDX
--------------------------------------------------------

  CREATE UNIQUE INDEX "MEDSDATA"."IDX_REPIGPADSL2_GRIDIDX" ON "MEDSDATA"."REPRES_IGPADS_L2" ("GRID_INDEX") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_JOB_SECCHI_73
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_SECCHI_73" ON "MEDSDATA"."SECCHI_DISK_DATA" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_POSN_FRONT_14
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_POSN_FRONT_14" ON "MEDSDATA"."FRONT_MEAN_REPEAT" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_POSN_IW_19
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_POSN_IW_19" ON "MEDSDATA"."IW_IMAGE_OBSERVATION" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_LATLONG_SEASURFACE_L1
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_LATLONG_SEASURFACE_L1" ON "MEDSDATA"."REPRES_SEASURFACE_L1" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_UNIFIED_SECCI_OBS
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_UNIFIED_SECCI_OBS" ON "MEDSDATA"."UNIFIED_SECCHI_OBSERVATION" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_PROFILEL4JAN_LATLON
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_PROFILEL4JAN_LATLON" ON "MEDSDATA"."REPRES_PROFILE_L4_JAN" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index OBSERVATION_IDX3
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."OBSERVATION_IDX3" ON "MEDSDATA"."OBSERVATION" ("OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_JOB_MLO_63
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_MLO_63" ON "MEDSDATA"."MLO_PINNIPEDS_OBSERVATION" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_JOB_FRONT_34
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_FRONT_34" ON "MEDSDATA"."FRONT_MEAN_REPEAT" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_DATE_DEEP_10
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_DATE_DEEP_10" ON "MEDSDATA"."DEEP_SCATTERING_OBSERVATION" ("DATE_RECORDED") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_JOB_EDDY_18
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_EDDY_18" ON "MEDSDATA"."EDDY_DATA" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_REPMIXEDLYRD1_GRIDIDX
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_REPMIXEDLYRD1_GRIDIDX" ON "MEDSDATA"."REPRES_MIXEDLAYER_D1" ("GRID_INDEX") 
  ;
--------------------------------------------------------
--  DDL for Index A531_IX1
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."A531_IX1" ON "MEDSDATA"."WVS_3M_BATHY_LINE" ("SHAPE") 
   INDEXTYPE IS "MDSYS"."SPATIAL_INDEX"  PARAMETERS (' ');
--------------------------------------------------------
--  DDL for Index PROFILE_INDEX_SV_LATLON
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."PROFILE_INDEX_SV_LATLON" ON "MEDSDATA"."PROFILE_INDEX_SV" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_DATE_FRONT_19
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_DATE_FRONT_19" ON "MEDSDATA"."FRONT_GRID_DATA" ("DATES") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_JOB_BIOLUMINESCENCE_9
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_BIOLUMINESCENCE_9" ON "MEDSDATA"."BIOLUMINESCENCE_DATA" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index SI_MLOFISH
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."SI_MLOFISH" ON "MEDSDATA"."MLO_FISH_OBSERVATION" ("LOCATION") 
   INDEXTYPE IS "MDSYS"."SPATIAL_INDEX"  PARAMETERS (' ');
--------------------------------------------------------
--  DDL for Index IDX_PROFILEL2JUL_LATLON
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_PROFILEL2JUL_LATLON" ON "MEDSDATA"."REPRES_PROFILE_L2_JUL" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_JOB_MLO_57
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_MLO_57" ON "MEDSDATA"."MLO_FISH_OBSERVATION" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_DATE_DIR_11
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_DATE_DIR_11" ON "MEDSDATA"."DIR_AMBIENT_OBSERVATION" ("DATE_RECORDED") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_GRIDL1_GRIDINDEX
--------------------------------------------------------

  CREATE UNIQUE INDEX "MEDSDATA"."IDX_GRIDL1_GRIDINDEX" ON "MEDSDATA"."MASTER_GRID_L1" ("GRID_INDEX", "DATATYPE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_JOB_INTERNAL_44
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_INTERNAL_44" ON "MEDSDATA"."INTERNAL_WAVE_DATA" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_FLAGS_VALUE
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_FLAGS_VALUE" ON "MEDSDATA"."MEDS_FLAGS" ("FLAG_VALUE") 
  ;
--------------------------------------------------------
--  DDL for Index R420_SDE_ROWID_UK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MEDSDATA"."R420_SDE_ROWID_UK" ON "MEDSDATA"."WVS_D_3M_COUNTPOLY" ("OBJECTID") 
  ;
--------------------------------------------------------
--  DDL for Index PROCESSING_JOB_SHIP_IDX
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."PROCESSING_JOB_SHIP_IDX" ON "MEDSDATA"."MEDS_PROCESSING_JOB" ("MEDS_SHIP_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index PROFILE_INDEX_TS_DATE
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."PROFILE_INDEX_TS_DATE" ON "MEDSDATA"."PROFILE_INDEX_TS" ("DATE_TIME") 
  ;
--------------------------------------------------------
--  DDL for Index PROFILE_INDEX_TONLY_JOB
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."PROFILE_INDEX_TONLY_JOB" ON "MEDSDATA"."PROFILE_INDEX_TONLY" ("MEDS_JOB_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_FLAGS_STATUS
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_FLAGS_STATUS" ON "MEDSDATA"."MEDS_FLAGS" ("FLAG_STATUS") 
  ;
--------------------------------------------------------
--  DDL for Index SI_FRONTFWOC
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."SI_FRONTFWOC" ON "MEDSDATA"."FRONT_FWOC_OBSERVATION" ("LOCATION") 
   INDEXTYPE IS "MDSYS"."SPATIAL_INDEX"  PARAMETERS (' ');
--------------------------------------------------------
--  DDL for Index IDX_DBFIELD_FINDEX
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_DBFIELD_FINDEX" ON "MEDSDATA"."DBFIELD_LOOKUP" ("FIELD_INDEX") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_PROFILEL1JUL_LATLON
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_PROFILEL1JUL_LATLON" ON "MEDSDATA"."REPRES_PROFILE_L1_JUL" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index SI_MLO_SEABED_CONTACT
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."SI_MLO_SEABED_CONTACT" ON "MEDSDATA"."MLO_SEABED_CONTACT_OBSERVATION" ("LOCATION") 
   INDEXTYPE IS "MDSYS"."SPATIAL_INDEX"  PARAMETERS ('TABLESPACE=INDX');
--------------------------------------------------------
--  DDL for Index IDX_GRIDD1_GRIDINDEX
--------------------------------------------------------

  CREATE UNIQUE INDEX "MEDSDATA"."IDX_GRIDD1_GRIDINDEX" ON "MEDSDATA"."MASTER_GRID_D1" ("GRID_INDEX", "DATATYPE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_POSN_MLO_22
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_POSN_MLO_22" ON "MEDSDATA"."MLO_FISH_OBSERVATION" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_LATLONG_IGPADS_L2
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_LATLONG_IGPADS_L2" ON "MEDSDATA"."REPRES_IGPADS_L2" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_DATE_FRONT_23
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_DATE_FRONT_23" ON "MEDSDATA"."FRONT_SURVEY_OBSERVATION" ("START_DATE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_JOB_EDDY_22
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_EDDY_22" ON "MEDSDATA"."EDDY_SATELLITE_OBSERVATION" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index PROFILE_INDEX_TS_CRUISE
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."PROFILE_INDEX_TS_CRUISE" ON "MEDSDATA"."PROFILE_INDEX_TS" ("MEDS_CRUISE_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_JOB_IW_48
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_IW_48" ON "MEDSDATA"."IW_IMAGE_OBSERVATION" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index SI_BATHY
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."SI_BATHY" ON "MEDSDATA"."WVS_3M" ("SHAPE") 
   INDEXTYPE IS "MDSYS"."SPATIAL_INDEX"  PARAMETERS (' ');
--------------------------------------------------------
--  DDL for Index IDX_JOB_MLO_62
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_MLO_62" ON "MEDSDATA"."MLO_PINNIPEDS_DATA" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_REPPROFILEL2_MAY
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_REPPROFILEL2_MAY" ON "MEDSDATA"."REPRES_PROFILE_L2_MAY" ("GRID_INDEX") 
  ;
--------------------------------------------------------
--  DDL for Index PROFILE_INDEX_TS_JOB
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."PROFILE_INDEX_TS_JOB" ON "MEDSDATA"."PROFILE_INDEX_TS" ("MEDS_JOB_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_REPAMBNOISED1_GRIDIDX
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_REPAMBNOISED1_GRIDIDX" ON "MEDSDATA"."REPRES_AMBIENTNOISE_D1" ("GRID_INDEX") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_AQUALINE_JOB
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_AQUALINE_JOB" ON "MEDSDATA"."AQUAPACK_LINE_OBSERVATION" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_JOB_ASRAP_2
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_ASRAP_2" ON "MEDSDATA"."ASRAP_POINT_DATA" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_REPPROFILEL1_FEB
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_REPPROFILEL1_FEB" ON "MEDSDATA"."REPRES_PROFILE_L1_FEB" ("GRID_INDEX") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_GLIDER_THREADED_JOB
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_GLIDER_THREADED_JOB" ON "MEDSDATA"."GLIDER_THREADED_OBSERVATION" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_JOB_MLO_67
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_MLO_67" ON "MEDSDATA"."MLO_SHIP_OBSERVATION" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_ADCP_DATE
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_ADCP_DATE" ON "MEDSDATA"."ADCP_OBSERVATION" ("DATE_RECORDED") 
  ;
--------------------------------------------------------
--  DDL for Index ARCHIVE_DATE_IDX
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."ARCHIVE_DATE_IDX" ON "MEDSDATA"."MEDS_PROCESSING_JOB" ("ARCHIVE_DATE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_MLO_SHIPD_JOB
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_MLO_SHIPD_JOB" ON "MEDSDATA"."MLO_SOSUS_DATA" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_GLIDER_THREADED_DATA_JOB
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_GLIDER_THREADED_DATA_JOB" ON "MEDSDATA"."GLIDER_THREADED_DATA" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_JOB_DIR_14
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_DIR_14" ON "MEDSDATA"."DIR_AMBIENT_OBSERVATION" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_JOB_EDDY_20
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_JOB_EDDY_20" ON "MEDSDATA"."EDDY_REPEAT" ("MEDS_JOB_NUMBER", "MEDS_OBSERVATION_NUMBER") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_DATE_IW_28
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_DATE_IW_28" ON "MEDSDATA"."IW_IMAGE_DATA" ("ARCHIVE_DATE") 
  ;
--------------------------------------------------------
--  DDL for Index SI_SEASOAR_TOW
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."SI_SEASOAR_TOW" ON "MEDSDATA"."SEASOAR_TOW_OBSERVATION" ("LOCATION") 
   INDEXTYPE IS "MDSYS"."SPATIAL_INDEX"  PARAMETERS (' ');
--------------------------------------------------------
--  DDL for Index IDX_POSN_EDDY_8
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_POSN_EDDY_8" ON "MEDSDATA"."EDDY_OBSERVATION" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_DATE_BEACH_8
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_DATE_BEACH_8" ON "MEDSDATA"."BEACH_OBSERVATION" ("DATE_OF_SURVEY") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_POSN_BEACH_3
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_POSN_BEACH_3" ON "MEDSDATA"."BEACH_OBSERVATION" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_FIELDLOKKUP_TABNAME
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_FIELDLOKKUP_TABNAME" ON "MEDSDATA"."FIELD_LOOKUP" ("TABLE_NAME") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_PROFILEL1JAN_LATLON
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_PROFILEL1JAN_LATLON" ON "MEDSDATA"."REPRES_PROFILE_L1_JAN" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_PROFILEL2DEC_LATLON
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_PROFILEL2DEC_LATLON" ON "MEDSDATA"."REPRES_PROFILE_L2_DEC" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_SEASOAR_TOW_DATE
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_SEASOAR_TOW_DATE" ON "MEDSDATA"."SEASOAR_TOW_OBSERVATION" ("DATE_RECORDED") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_POSN_FRONT_11
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."IDX_POSN_FRONT_11" ON "MEDSDATA"."FRONT_FWOC_REPEAT" ("LATITUDE", "LONGITUDE") 
  ;
--------------------------------------------------------
--  DDL for Index SI_OMNIAMBIENT
--------------------------------------------------------

  CREATE INDEX "MEDSDATA"."SI_OMNIAMBIENT" ON "MEDSDATA"."OMNI_AMBIENT_OBSERVATION" ("LOCATION") 
   INDEXTYPE IS "MDSYS"."SPATIAL_INDEX"  PARAMETERS (' ');
