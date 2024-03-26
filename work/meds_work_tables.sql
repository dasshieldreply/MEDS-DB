DROP TABLE MEDSADMIN.ACCESS_CONTROL CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.ACCESS_CONTROL
(
  TABLE_NAME    VARCHAR2(32 BYTE)               NOT NULL,
  USER_NAME     VARCHAR2(32 BYTE)               NOT NULL,
  MULTI_SELECT  NUMBER(1)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.ADCP_DATA CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.ADCP_DATA
(
  MEDS_JOB_NUMBER          NUMBER(10),
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  DEPTH_BSL_TRANS          NUMBER(12,4),
  HEADING                  NUMBER(12,4),
  PITCH                    NUMBER(12,4),
  ROLL                     NUMBER(12,4),
  COMPASS                  NUMBER(12,4),
  TEMPERATURE              NUMBER(12,4),
  BIN_SIZE                 NUMBER(12,4),
  BIN_1_DISTANCE           NUMBER(12,4),
  ENSEMBLE                 VARCHAR2(20 BYTE),
  WATER_DEPTH              NUMBER(20,10),
  NO_BINS                  NUMBER(10),
  NO_ENSEMBLES             NUMBER(10),
  SPEED_SHIP               NUMBER(20,10),
  DIR_SHIP                 NUMBER(20,10),
  U_SHIP                   NUMBER(20,10),
  V_SHIP                   NUMBER(20,10),
  U_BOTTOM                 NUMBER(20,10),
  V_BOTTOM                 NUMBER(20,10),
  SCALE_FACTOR             NUMBER(12,4),
  PROFILE                  NUMBER(10),
  JULIAN_DAY               NUMBER(12,4)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.ADCP_OBSERVATION CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.ADCP_OBSERVATION
(
  LOCATION                 MDSYS.SDO_GEOMETRY,
  MEDS_JOB_NUMBER          NUMBER(10),
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  LONGITUDE                NUMBER(20,10),
  LATITUDE                 NUMBER(20,10),
  DATE_RECORDED            DATE,
  ENSEMBLE                 VARCHAR2(20 BYTE),
  COG                      NUMBER(12,4),
  PROFILE                  NUMBER(10)
)
COLUMN LOCATION NOT SUBSTITUTABLE AT ALL LEVELS
VARRAY "LOCATION"."SDO_ELEM_INFO" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
VARRAY "LOCATION"."SDO_ORDINATES" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.ADCP_REPEAT CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.ADCP_REPEAT
(
  MEDS_JOB_NUMBER          NUMBER(10),
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  DATA_ID                  NUMBER(10),
  BIN                      NUMBER(10),
  SPEED                    NUMBER(20,10),
  DIRECTION                NUMBER(20,10),
  U_EAST_WEST              NUMBER(20,10),
  V_NORTH_SOUTH            NUMBER(20,10),
  W_VERTICAL               NUMBER(20,10),
  ERROR                    NUMBER(20,10),
  PERCENTAGE_ERROR         NUMBER(10),
  ECHO_INT_AVERAGE         NUMBER(12,4),
  DEPTH_BSL                NUMBER(12,4),
  QUALITY                  NUMBER(12,6),
  ENSEMBLE                 VARCHAR2(20 BYTE),
  PROFILE                  NUMBER(10)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.AQUA2081_LINE_DATA CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.AQUA2081_LINE_DATA
(
  LATITUDE                 NUMBER(12,4),
  LONGITUDE                NUMBER(12,4),
  DATE_RECORDED            DATE,
  PRESSURE                 NUMBER(12,4),
  DEPTH                    NUMBER(12,4),
  TEMPERATURE              NUMBER(12,4),
  SALINITY                 NUMBER(12,4),
  CONDUCTIVITY             NUMBER(12,4),
  SOUND_SPEED              NUMBER(12,4),
  BIOLUMMIN                NUMBER(12,4),
  BIOLUMMAX                NUMBER(12,4),
  BIOLUMSD                 NUMBER(12,4),
  BIOLUMN                  NUMBER(6),
  CHLORN                   NUMBER(6),
  GELBN                    NUMBER(6),
  HYDRON                   NUMBER(6),
  SOUNDMIN                 NUMBER(12,4),
  SOUNDMAX                 NUMBER(12,4),
  SOUNDSD                  NUMBER(12,4),
  SOUNDN                   NUMBER(6),
  TEMPMIN                  NUMBER(12,4),
  TEMPMAX                  NUMBER(12,4),
  TEMPSD                   NUMBER(12,4),
  TEMPN                    NUMBER(6),
  CONDMIN                  NUMBER(12,4),
  CONDMAX                  NUMBER(12,4),
  CONDSD                   NUMBER(12,4),
  CONDN                    NUMBER(6),
  SALMAX                   NUMBER(12,4),
  SALMIN                   NUMBER(12,4),
  SALSD                    NUMBER(12,4),
  SALN                     NUMBER(6),
  MEDS_JOB_NUMBER          NUMBER(10),
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  BIOLUMINESCENCE          NUMBER(20,4),
  GELBSTOFFE               NUMBER(20,17),
  CHLOROPHYLL              NUMBER(20,17),
  HYDROCARBONS             NUMBER(20,17),
  GELBMIN                  NUMBER(20,17),
  GELBMAX                  NUMBER(20,17),
  GELBSD                   NUMBER(20,17),
  HYDROMIN                 NUMBER(20,17),
  HYDROMAX                 NUMBER(20,17),
  HYDROSD                  NUMBER(20,17),
  CHLORMIN                 NUMBER(20,17),
  CHLORMAX                 NUMBER(20,17),
  CHLORSD                  NUMBER(20,17),
  SEABED_DEPTH             NUMBER(12,4)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             256K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.AQUA2081_LINE_OBSERVATION CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.AQUA2081_LINE_OBSERVATION
(
  LOCATION                 MDSYS.SDO_GEOMETRY,
  MEDS_JOB_NUMBER          NUMBER(10),
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  LATITUDE                 NUMBER(12,4),
  LONGITUDE                NUMBER(12,4),
  DATE_RECORDED            DATE
)
COLUMN LOCATION NOT SUBSTITUTABLE AT ALL LEVELS
VARRAY "LOCATION"."SDO_ELEM_INFO" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
VARRAY "LOCATION"."SDO_ORDINATES" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.AQUAPACK_JOB CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.AQUAPACK_JOB
(
  VALIDATED                VARCHAR2(1 BYTE),
  TEMPORAL_RESOLUTION      VARCHAR2(10 BYTE),
  GEOGRAPHICAL_RESOLUTION  VARCHAR2(20 BYTE),
  DATE_ARCHIVED            DATE,
  SENSOR_UNIT_NUMBER       VARCHAR2(16 BYTE),
  VESSEL                   VARCHAR2(50 BYTE),
  COMMENTS                 VARCHAR2(500 BYTE),
  JOB_NUMBER               NUMBER(10)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.AQUAPACK_LINE_DATA CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.AQUAPACK_LINE_DATA
(
  PRESSURE                 NUMBER(12,4),
  DEPTH                    NUMBER(12,4),
  TEMPERATURE              NUMBER(12,4),
  SALINITY                 NUMBER(12,4),
  CONDUCTIVITY             NUMBER(12,4),
  SOUND_SPEED              NUMBER(12,4),
  BIOLUMMIN                NUMBER(12,4),
  BIOLUMMAX                NUMBER(12,4),
  BIOLUMSD                 NUMBER(12,4),
  BIOLUMN                  NUMBER(6),
  CHLORN                   NUMBER(6),
  GELBN                    NUMBER(6),
  HYDRON                   NUMBER(6),
  SOUNDMIN                 NUMBER(12,4),
  SOUNDMAX                 NUMBER(12,4),
  SOUNDSD                  NUMBER(12,4),
  SOUNDN                   NUMBER(6),
  TEMPMIN                  NUMBER(12,4),
  TEMPMAX                  NUMBER(12,4),
  TEMPSD                   NUMBER(12,4),
  TEMPN                    NUMBER(6),
  CONDMIN                  NUMBER(12,4),
  CONDMAX                  NUMBER(12,4),
  CONDSD                   NUMBER(12,4),
  CONDN                    NUMBER(6),
  SALMAX                   NUMBER(12,4),
  SALMIN                   NUMBER(12,4),
  SALSD                    NUMBER(12,4),
  SALN                     NUMBER(6),
  MEDS_JOB_NUMBER          NUMBER(10),
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  HYDROCARBONS             NUMBER(20,17),
  GELBSTOFFE               NUMBER(20,17),
  CHLOROPHYLL              NUMBER(20,17),
  BIOLUMINESCENCE          NUMBER(20,4),
  HYDROMIN                 NUMBER(20,17),
  HYDROMAX                 NUMBER(20,17),
  HYDROSD                  NUMBER(20,17),
  CHLORMIN                 NUMBER(20,17),
  CHLORMAX                 NUMBER(20,17),
  CHLORSD                  NUMBER(20,17),
  GELBMIN                  NUMBER(20,17),
  GELBMAX                  NUMBER(20,17),
  GELBSD                   NUMBER(20,17),
  LATITUDE                 NUMBER(12,4),
  LONGITUDE                NUMBER(12,4),
  DATE_RECORDED            DATE,
  SEABED_DEPTH             NUMBER(12,4)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.AQUAPACK_LINE_OBSERVATION CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.AQUAPACK_LINE_OBSERVATION
(
  LOCATION                 MDSYS.SDO_GEOMETRY,
  MEDS_JOB_NUMBER          NUMBER(10),
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  LATITUDE                 NUMBER(12,4),
  LONGITUDE                NUMBER(12,4),
  DATE_RECORDED            DATE
)
COLUMN LOCATION NOT SUBSTITUTABLE AT ALL LEVELS
VARRAY "LOCATION"."SDO_ELEM_INFO" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
VARRAY "LOCATION"."SDO_ORDINATES" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.AQUAPACK_PROFILE_DATA CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.AQUAPACK_PROFILE_DATA
(
  PRESSURE                 NUMBER(12,4),
  DEPTH                    NUMBER(12,4),
  TEMPERATURE              NUMBER(12,4),
  SALINITY                 NUMBER(12,4),
  CONDUCTIVITY             NUMBER(12,4),
  SOUND_SPEED              NUMBER(12,4),
  BIOLUMMIN                NUMBER(12,4),
  BIOLUMMAX                NUMBER(12,4),
  BIOLUMSD                 NUMBER(12,4),
  BIOLUMN                  NUMBER(6),
  CHLORN                   NUMBER(6),
  GELBN                    NUMBER(6),
  HYDRON                   NUMBER(6),
  SOUNDMIN                 NUMBER(12,4),
  SOUNDMAX                 NUMBER(12,4),
  SOUNDSD                  NUMBER(12,4),
  SOUNDN                   NUMBER(6),
  TEMPMIN                  NUMBER(12,4),
  TEMPMAX                  NUMBER(12,4),
  TEMPSD                   NUMBER(12,4),
  TEMPN                    NUMBER(6),
  CONDMIN                  NUMBER(12,4),
  CONDMAX                  NUMBER(12,4),
  CONDSD                   NUMBER(12,4),
  CONDN                    NUMBER(6),
  SALMAX                   NUMBER(12,4),
  SALMIN                   NUMBER(12,4),
  SALSD                    NUMBER(12,4),
  SALN                     NUMBER(6),
  MEDS_JOB_NUMBER          NUMBER(10),
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  BIOLUMINESCENCE          NUMBER(20,4),
  GELBSTOFFE               NUMBER(20,17),
  CHLOROPHYLL              NUMBER(20,17),
  HYDROCARBONS             NUMBER(20,17),
  GELBMIN                  NUMBER(20,17),
  GELBMAX                  NUMBER(20,17),
  GELBSD                   NUMBER(20,17),
  HYDROMIN                 NUMBER(20,17),
  HYDROMAX                 NUMBER(20,17),
  HYDROSD                  NUMBER(20,17),
  CHLORMIN                 NUMBER(20,17),
  CHLORMAX                 NUMBER(20,17),
  CHLORSD                  NUMBER(20,17),
  TURBIDITY                NUMBER(20,17),
  PROFILE_ID               NUMBER(10)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.AQUAPACK_PROFILE_OBSERVATION CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.AQUAPACK_PROFILE_OBSERVATION
(
  LOCATION                 MDSYS.SDO_GEOMETRY,
  MEDS_JOB_NUMBER          NUMBER(10),
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  LONGITUDE                NUMBER(12,4),
  LATITUDE                 NUMBER(12,4),
  DATE_RECORDED            DATE,
  SEABED_DEPTH             NUMBER(12)           DEFAULT 0
)
COLUMN LOCATION NOT SUBSTITUTABLE AT ALL LEVELS
VARRAY "LOCATION"."SDO_ELEM_INFO" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
VARRAY "LOCATION"."SDO_ORDINATES" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.ASRAP_POINT_CADS_REPEAT CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.ASRAP_POINT_CADS_REPEAT
(
  MEDS_JOB_NUMBER          NUMBER(10),
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  MEAN_DEPTH               VARCHAR2(4 BYTE),
  YEAR                     NUMBER(4),
  QUALITY                  VARCHAR2(1 BYTE),
  NUMBER_OF_DEPTH_LEVELS   NUMBER(2),
  NUMBER_OF_COMMENTS       NUMBER(2),
  COMMENTS                 VARCHAR2(650 BYTE),
  MONTH                    VARCHAR2(2 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.ASRAP_POINT_DATA CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.ASRAP_POINT_DATA
(
  HFBL                     NUMBER(12,3),
  LFBL                     NUMBER(12,3),
  SHIPPING_NOISE           NUMBER(12,3),
  MEAN_DEPTH               VARCHAR2(4 BYTE),
  MEAN_DEEP_DEPTH          VARCHAR2(4 BYTE),
  JAN_HEIGHT               VARCHAR2(5 BYTE),
  FEB_HEIGHT               VARCHAR2(5 BYTE),
  MAR_HEIGHT               VARCHAR2(5 BYTE),
  APR_HEIGHT               VARCHAR2(5 BYTE),
  MAY_HEIGHT               VARCHAR2(5 BYTE),
  JUN_HEIGHT               VARCHAR2(5 BYTE),
  JUL_HEIGHT               VARCHAR2(5 BYTE),
  AUG_HEIGHT               VARCHAR2(5 BYTE),
  SEP_HEIGHT               VARCHAR2(5 BYTE),
  OCT_HEIGHT               VARCHAR2(5 BYTE),
  NOV_HEIGHT               VARCHAR2(5 BYTE),
  DEC_HEIGHT               VARCHAR2(5 BYTE),
  MEDS_JOB_NUMBER          NUMBER(10),
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  HO_CAVEAT                VARCHAR2(25 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.ASRAP_POINT_OBSERVATION CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.ASRAP_POINT_OBSERVATION
(
  DOMAIN_ID                VARCHAR2(10 BYTE),
  LOCATION                 MDSYS.SDO_GEOMETRY,
  MEDS_JOB_NUMBER          NUMBER(10),
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  LONGITUDE                NUMBER(12,6),
  LATITUDE                 NUMBER(12,6)
)
COLUMN LOCATION NOT SUBSTITUTABLE AT ALL LEVELS
VARRAY "LOCATION"."SDO_ELEM_INFO" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
VARRAY "LOCATION"."SDO_ORDINATES" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.ASRAP_POINT_REPEAT CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.ASRAP_POINT_REPEAT
(
  DEPTH                    NUMBER(12,3),
  TEMPERATURE              NUMBER(12,3),
  SALINITY                 NUMBER(12,3),
  SOUND_VELOCITY           NUMBER(12,3),
  SOURCE_CODE              VARCHAR2(1 BYTE),
  SV_CODE                  VARCHAR2(1 BYTE),
  MEDS_JOB_NUMBER          NUMBER(10),
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  MONTH                    VARCHAR2(2 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.ASRAP_POLYGON_OBSERVATION CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.ASRAP_POLYGON_OBSERVATION
(
  LOCATION                 MDSYS.SDO_GEOMETRY,
  MEDS_JOB_NUMBER          NUMBER(10),
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  DOMAIN_ID                VARCHAR2(10 BYTE)
)
COLUMN LOCATION NOT SUBSTITUTABLE AT ALL LEVELS
VARRAY "LOCATION"."SDO_ELEM_INFO" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
VARRAY "LOCATION"."SDO_ORDINATES" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.ASRAP_POLYGON_REPEAT CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.ASRAP_POLYGON_REPEAT
(
  HO_CAVEAT_1              VARCHAR2(4 BYTE),
  HO_CAVEAT_2              VARCHAR2(5 BYTE),
  ICES_QUADRANT            VARCHAR2(1 BYTE),
  MARSDEN_SQUARE           VARCHAR2(3 BYTE),
  DEGREE_SQUARE            VARCHAR2(2 BYTE),
  MEDS_JOB_NUMBER          NUMBER(10),
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  LATITUDE                 NUMBER(12,8),
  LONGITUDE                NUMBER(12,8),
  POINT_ORDER              NUMBER(8)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.BEACH_DATA CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.BEACH_DATA
(
  TBLBEACHESID              VARCHAR2(20 BYTE),
  MAP                       VARCHAR2(10 BYTE),
  SHEET                     VARCHAR2(10 BYTE),
  GRID                      VARCHAR2(10 BYTE),
  ANCHORAGE                 VARCHAR2(500 BYTE),
  SURF_CONDITIONS           VARCHAR2(20 BYTE),
  SURF_SEA_SWELL            VARCHAR2(600 BYTE),
  APPROACH_SEAWARD          VARCHAR2(700 BYTE),
  OBSTRUCTIONS              VARCHAR2(500 BYTE),
  JETTIES_RAMPS_HARDS       VARCHAR2(600 BYTE),
  AIR_LANDING_SITES         VARCHAR2(500 BYTE),
  WATER_AND_ENGINEERING     VARCHAR2(600 BYTE),
  PUBLICATION_STATUS        VARCHAR2(500 BYTE),
  CD_ROM_REFERENCE          VARCHAR2(50 BYTE),
  TYPE_OF_IMAGERY           VARCHAR2(100 BYTE),
  CLASSIFICATION            VARCHAR2(20 BYTE),
  ORIGINATOR                VARCHAR2(50 BYTE),
  CURRENT_SPEED             VARCHAR2(20 BYTE),
  CURRENT_ORIENTATION       VARCHAR2(20 BYTE),
  GRADIENT_OVERALL          VARCHAR2(20 BYTE),
  GRADIENT_SURVEY_DATE      VARCHAR2(20 BYTE),
  GRADIENT_BEARING          VARCHAR2(20 BYTE),
  DROP_ZONE_DESCRIPTION     VARCHAR2(500 BYTE),
  DROP_ZONE_LOCATION        VARCHAR2(100 BYTE),
  LINK_TO_GROUND_PHOTO      VARCHAR2(500 BYTE),
  LINK_TO_BEACH_DIAGRAM     VARCHAR2(500 BYTE),
  LINK_TO_GRADIENT_DIAGRAM  VARCHAR2(500 BYTE),
  CARD_2                    VARCHAR2(20 BYTE),
  MEDS_JOB_NUMBER           NUMBER(10),
  MEDS_OBSERVATION_NUMBER   NUMBER(10),
  CARD_1                    VARCHAR2(10 BYTE),
  EXIT_DESCRIPTION          VARCHAR2(700 BYTE),
  HINTERLAND                VARCHAR2(800 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.BEACH_OBSERVATION CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.BEACH_OBSERVATION
(
  BEACH_NAME               VARCHAR2(50 BYTE),
  BEACH_CATEGORY           NUMBER(1),
  BEACH_NUMBER             VARCHAR2(20 BYTE),
  DATE_OF_SURVEY           DATE,
  GRADIENT_NEARSHORE       NUMBER(1),
  GRADIENT_FORESHORE       NUMBER(1),
  GRADIENT_BACKSHORE       NUMBER(1),
  TRAFFICABILITY           NUMBER(1),
  EXIT_CONDITIONS          NUMBER(1),
  SECTOR                   VARCHAR2(10 BYTE),
  LATITUDE                 NUMBER(13,4),
  LONGITUDE                NUMBER(13,4),
  SURF_HEIGHT              NUMBER(10,2),
  BEACH_DIMENSIONS         NUMBER(10),
  QUALITY_OF_REECE         VARCHAR2(3 BYTE),
  BEACH_COMPOSITION        VARCHAR2(17 BYTE),
  MEDS_JOB_NUMBER          NUMBER(10),
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  LOCATION                 MDSYS.SDO_GEOMETRY,
  COUNTRY                  VARCHAR2(50 BYTE),
  BEACH_CHANGES            VARCHAR2(500 BYTE),
  BEACH_CHANGES_NO         NUMBER(2)
)
COLUMN LOCATION NOT SUBSTITUTABLE AT ALL LEVELS
VARRAY "LOCATION"."SDO_ELEM_INFO" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
VARRAY "LOCATION"."SDO_ORDINATES" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.BIOLUMINESCENCE_DATA CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.BIOLUMINESCENCE_DATA
(
  MP_BAND                  VARCHAR2(20 BYTE),
  MP_DIRECTION             VARCHAR2(20 BYTE),
  MP_DUR                   VARCHAR2(20 BYTE),
  AREA                     VARCHAR2(200 BYTE),
  MP_FREQ                  VARCHAR2(20 BYTE),
  MP_LENGTH                VARCHAR2(20 BYTE),
  MP_NO                    VARCHAR2(20 BYTE),
  MP_ROTATE                VARCHAR2(20 BYTE),
  MP_SEPERATE              VARCHAR2(20 BYTE),
  BOWWV                    VARCHAR2(20 BYTE),
  MP_SPD                   VARCHAR2(20 BYTE),
  COLOUR                   VARCHAR2(200 BYTE),
  DIFFUSE                  VARCHAR2(20 BYTE),
  PATCH                    VARCHAR2(200 BYTE),
  STIMULUS                 VARCHAR2(200 BYTE),
  SURFACE                  VARCHAR2(20 BYTE),
  VHEAD                    VARCHAR2(20 BYTE),
  VKTS                     VARCHAR2(20 BYTE),
  WAKE                     VARCHAR2(20 BYTE),
  WDEP                     VARCHAR2(20 BYTE),
  SAMP                     VARCHAR2(20 BYTE),
  WVCRSTS                  VARCHAR2(20 BYTE),
  RECORD_NUMBER            VARCHAR2(20 BYTE),
  VESSEL                   VARCHAR2(50 BYTE),
  PT                       VARCHAR2(20 BYTE),
  SS                       VARCHAR2(50 BYTE),
  WD_DIR                   VARCHAR2(50 BYTE),
  WD_SPD                   VARCHAR2(50 BYTE),
  MEDS_JOB_NUMBER          NUMBER(8),
  MEDS_OBSERVATION_NUMBER  NUMBER(8),
  SST                      VARCHAR2(20 BYTE),
  IDENT                    VARCHAR2(50 BYTE),
  COMMENT_1                VARCHAR2(700 BYTE),
  AIRTD                    VARCHAR2(20 BYTE),
  AIRTW                    VARCHAR2(20 BYTE),
  BARO                     VARCHAR2(20 BYTE),
  CLASS                    VARCHAR2(300 BYTE),
  ARCHIVED                 VARCHAR2(25 BYTE),
  REFERENCE                VARCHAR2(100 BYTE),
  RANGE                    VARCHAR2(20 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.BIOLUMINESCENCE_OBSERVATION CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.BIOLUMINESCENCE_OBSERVATION
(
  MEDS_OBSERVATION_NUMBER  NUMBER(8),
  DATETIME                 DATE,
  LATITUDE                 NUMBER(12,6),
  LONGITUDE                NUMBER(12,6),
  LOCATION                 MDSYS.SDO_GEOMETRY,
  MEDS_JOB_NUMBER          NUMBER(8)
)
COLUMN LOCATION NOT SUBSTITUTABLE AT ALL LEVELS
VARRAY "LOCATION"."SDO_ELEM_INFO" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
VARRAY "LOCATION"."SDO_ORDINATES" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.BIOMASS_DATA CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.BIOMASS_DATA
(
  UPPER_DEPTH              NUMBER(8,3),
  LOWER_DEPTH              NUMBER(8,3),
  TOTAL_DISPLACEMENT_VOL   NUMBER(12,8),
  TOTAL_SETTLED_VOLUME     NUMBER(12,8),
  TOTAL_WET_MASS           NUMBER(12,8),
  TOTAL_DRY_MASS           NUMBER(12,8),
  MEDS_JOB_NUMBER          NUMBER(10),
  MEDS_OBSERVATION_NUMBER  NUMBER(10)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.BIOMASS_OBSERVATION CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.BIOMASS_OBSERVATION
(
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  MEDS_JOB_NUMBER          NUMBER(10),
  LOCATION                 MDSYS.SDO_GEOMETRY,
  DATE_RECORDED            DATE,
  LATITUDE                 NUMBER(12,8),
  LONGITUDE                NUMBER(12,8)
)
COLUMN LOCATION NOT SUBSTITUTABLE AT ALL LEVELS
VARRAY "LOCATION"."SDO_ELEM_INFO" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
VARRAY "LOCATION"."SDO_ORDINATES" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.CHART_PANEL CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.CHART_PANEL
(
  CHART_NUMBER_PREFIX    CHAR(3 BYTE),
  CHART_NUMBER           NUMBER,
  CHART_NUMBER_SUFFIX    CHAR(1 BYTE),
  PANEL_NUMBER           NUMBER,
  MAIN_TITLE             VARCHAR2(100 BYTE),
  SCALE                  NUMBER,
  HORIZONTAL_DATUM_CODE  CHAR(3 BYTE),
  PROJECTION_CODE        NUMBER,
  WGS_SHIFT_NS           NUMBER,
  WGS_SHIFT_EW           NUMBER,
  LIMITS                 MDSYS.SDO_GEOMETRY
)
COLUMN LIMITS NOT SUBSTITUTABLE AT ALL LEVELS
VARRAY "LIMITS"."SDO_ELEM_INFO" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
VARRAY "LIMITS"."SDO_ORDINATES" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.CLASS_INFORMATION CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.CLASS_INFORMATION
(
  DATA_CLASS       VARCHAR2(50 BYTE),
  DATA_TYPE        VARCHAR2(50 BYTE),
  TEMPORAL         VARCHAR2(500 BYTE),
  GRID             VARCHAR2(50 BYTE),
  RESOLUTION       VARCHAR2(40 BYTE),
  JOB_COL          VARCHAR2(30 BYTE),
  TABLE_NAME       VARCHAR2(40 BYTE),
  HEADER_TABLE     VARCHAR2(40 BYTE),
  DATA_STYLE       VARCHAR2(40 BYTE),
  FILE_NAME        VARCHAR2(30 BYTE),
  COLOR            VARCHAR2(10 BYTE),
  DATA_TYPE_INDEX  NUMBER(8)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


ALTER TABLE MEDSADMIN.CRUISE_LAYER
 DROP PRIMARY KEY CASCADE;

DROP TABLE MEDSADMIN.CRUISE_LAYER CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.CRUISE_LAYER
(
  CRUISE_GEOMETRY     MDSYS.SDO_GEOMETRY,
  START_PORT          VARCHAR2(100 BYTE),
  START_DATE          DATE,
  END_DATE            DATE,
  END_PORT            VARCHAR2(100 BYTE),
  CRUISE_NAME         VARCHAR2(50 BYTE),
  CRUISE_DESCRIPTOR   VARCHAR2(50 BYTE),
  MEDS_CRUISE_NUMBER  NUMBER(10),
  BOOKING_NUMBER      NUMBER(10)
)
COLUMN CRUISE_GEOMETRY NOT SUBSTITUTABLE AT ALL LEVELS
VARRAY "CRUISE_GEOMETRY"."SDO_ELEM_INFO" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
VARRAY "CRUISE_GEOMETRY"."SDO_ORDINATES" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          1M
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.DATASET_LOOKUP CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.DATASET_LOOKUP
(
  NAME           VARCHAR2(50 BYTE),
  DATASET_INDEX  NUMBER(8)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.DATA_TYPES_TABLE CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.DATA_TYPES_TABLE
(
  DESCRIPTION  VARCHAR2(100 BYTE),
  DATA_TYPE    VARCHAR2(20 BYTE),
  TYPE_INDEX   NUMBER(8)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.DBFIELD_LOOKUP CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.DBFIELD_LOOKUP
(
  FIELD_INDEX       NUMBER(4),
  FIELD_NAME        VARCHAR2(50 BYTE),
  HEADER_DATA_FLAG  NUMBER(1),
  DATA_TYPE         VARCHAR2(50 BYTE),
  FILE_EXT          VARCHAR2(50 BYTE),
  FIELD_SIZE        NUMBER(4),
  FIELD_PRECISION   NUMBER(4),
  SINGLE_REPEAT     VARCHAR2(1 BYTE),
  FIELD_TYPE        VARCHAR2(3 BYTE),
  FIELD_VALUE       VARCHAR2(50 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.DEEP_SCATTERING_DATA CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.DEEP_SCATTERING_DATA
(
  SONAR_FREQUENCY          NUMBER(5),
  TYPE_OF_SONAR            VARCHAR2(50 BYTE),
  E_S_TRACE_REFERENCE      VARCHAR2(50 BYTE),
  SHIP                     VARCHAR2(100 BYTE),
  HI_CRUISE                VARCHAR2(100 BYTE),
  REMARKS                  VARCHAR2(500 BYTE),
  SEA_STATE                NUMBER(1),
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  MEDS_JOB_NUMBER          NUMBER(10),
  ARCHIVED                 VARCHAR2(25 BYTE),
  END_TIME                 VARCHAR2(20 BYTE),
  GAIN_SETTINGS            VARCHAR2(20 BYTE),
  MONTH                    VARCHAR2(10 BYTE),
  START_TIME               VARCHAR2(10 BYTE),
  DEPTH_OF_TOP_LAYER       VARCHAR2(20 BYTE),
  LAYER_THICKNESS          VARCHAR2(20 BYTE),
  EXTENT_OF_MOTION         VARCHAR2(20 BYTE),
  END_LAT_LONG             VARCHAR2(50 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.DEEP_SCATTERING_OBSERVATION CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.DEEP_SCATTERING_OBSERVATION
(
  LATITUDE                 NUMBER(12,6),
  LONGITUDE                NUMBER(12,6),
  DATE_RECORDED            DATE,
  LOCATION                 MDSYS.SDO_GEOMETRY,
  MEDS_JOB_NUMBER          NUMBER(10),
  MEDS_OBSERVATION_NUMBER  NUMBER(10)
)
COLUMN LOCATION NOT SUBSTITUTABLE AT ALL LEVELS
VARRAY "LOCATION"."SDO_ELEM_INFO" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
VARRAY "LOCATION"."SDO_ORDINATES" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.DIRECTORY_LOOKUP CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.DIRECTORY_LOOKUP
(
  USER_NAME    CHAR(50 BYTE)                    NOT NULL,
  LOOKUP_TYPE  CHAR(16 BYTE)                    NOT NULL,
  FILE_PATH    CHAR(256 BYTE)                   NOT NULL
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.DIR_AMBIENT_DATA CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.DIR_AMBIENT_DATA
(
  EXERSIZE                 VARCHAR2(20 BYTE),
  PLATFORM                 VARCHAR2(20 BYTE),
  ARRAY_TYPE               VARCHAR2(20 BYTE),
  ARRAY_DEPTH              VARCHAR2(20 BYTE),
  FREQUENCY                VARCHAR2(20 BYTE),
  OMNI                     VARCHAR2(20 BYTE),
  STANDARD_DEVIATION       VARCHAR2(20 BYTE),
  NUMBER_OF_ITERATIONS     VARCHAR2(20 BYTE),
  NUMBER_OF_HEADINGS       VARCHAR2(20 BYTE),
  WIND_SPEED               VARCHAR2(20 BYTE),
  SEA_STATE                VARCHAR2(20 BYTE),
  OCTAVE_NUMBER            VARCHAR2(20 BYTE),
  RECORD_NUMBER            VARCHAR2(20 BYTE),
  SITE_ID_                 VARCHAR2(20 BYTE),
  NUMBER_OF_FREQUENCIES    VARCHAR2(20 BYTE),
  COMMENTS                 VARCHAR2(100 BYTE),
  WATER_DEPTH              VARCHAR2(20 BYTE),
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  MEDS_JOB_NUMBER          NUMBER(10),
  SHIP_CODE                VARCHAR2(20 BYTE),
  COUNTRY_CODE             VARCHAR2(20 BYTE),
  LOCATION_DESCRIPTION     VARCHAR2(100 BYTE),
  SPEED                    VARCHAR2(20 BYTE),
  ARCHIVE_DAT              VARCHAR2(20 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.DIR_AMBIENT_OBSERVATION CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.DIR_AMBIENT_OBSERVATION
(
  DATE_RECORDED            DATE,
  LOCATION                 MDSYS.SDO_GEOMETRY,
  LATITUDE                 NUMBER(12,6),
  LONGITUDE                NUMBER(12,6),
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  MEDS_JOB_NUMBER          NUMBER(10)
)
COLUMN LOCATION NOT SUBSTITUTABLE AT ALL LEVELS
VARRAY "LOCATION"."SDO_ELEM_INFO" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
VARRAY "LOCATION"."SDO_ORDINATES" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.DIR_AMBIENT_REPEAT CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.DIR_AMBIENT_REPEAT
(
  SPECTRAL_LEVEL           NUMBER(5),
  DECIBELS                 NUMBER(12,3),
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  MEDS_JOB_NUMBER          NUMBER(10)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.DIVE_SITE_DATA CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.DIVE_SITE_DATA
(
  SITE_NUMBER              NUMBER(5),
  NAME                     VARCHAR2(100 BYTE),
  REGION                   VARCHAR2(50 BYTE),
  AREA                     VARCHAR2(50 BYTE),
  TYPE_OF_ACTIVITY         VARCHAR2(50 BYTE),
  INSHORE_OFFSHORE         VARCHAR2(20 BYTE),
  COMMENTS                 VARCHAR2(200 BYTE),
  DATE_RECORDED            DATE,
  WATER_CLARITY            VARCHAR2(30 BYTE),
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  MEDS_JOB_NUMBER          NUMBER(10),
  MAIN_SPECIES             VARCHAR2(250 BYTE),
  TIME_OF_YEAR             VARCHAR2(200 BYTE),
  DEPTH                    VARCHAR2(50 BYTE),
  LAT_LON                  VARCHAR2(50 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.DIVE_SITE_OBSERVATION CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.DIVE_SITE_OBSERVATION
(
  LATITUDE                 NUMBER(12,6),
  LONGITUDE                NUMBER(12,6),
  LOCATION                 MDSYS.SDO_GEOMETRY,
  MEDS_JOB_NUMBER          NUMBER(10),
  MEDS_OBSERVATION_NUMBER  NUMBER(10)
)
COLUMN LOCATION NOT SUBSTITUTABLE AT ALL LEVELS
VARRAY "LOCATION"."SDO_ELEM_INFO" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
VARRAY "LOCATION"."SDO_ORDINATES" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.DUC_FORMAT CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.DUC_FORMAT
(
  DATA_USE_CODE   VARCHAR2(50 BYTE),
  DESCRIPTION     VARCHAR2(200 BYTE),
  CLASSIFICATION  VARCHAR2(200 BYTE),
  SHORT_DESC      VARCHAR2(20 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.EDDY_DATA CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.EDDY_DATA
(
  WATER_TYPES_PRESENT          VARCHAR2(400 BYTE),
  MAJOR_AXIS                   VARCHAR2(100 BYTE),
  MINOR_AXIS                   VARCHAR2(100 BYTE),
  CORE_TEMPERATURE             VARCHAR2(100 BYTE),
  TEMPERATURE_CORE             VARCHAR2(100 BYTE),
  TEMPERATURE_EDGE             VARCHAR2(100 BYTE),
  SALINITY_CORE                VARCHAR2(100 BYTE),
  SALINITY_EDGE                VARCHAR2(100 BYTE),
  DENSITY_CORE                 VARCHAR2(200 BYTE),
  DENSITY_EDGE                 VARCHAR2(100 BYTE),
  EDDY_CENTRE_DEPTH            VARCHAR2(100 BYTE),
  AUTHORS                      VARCHAR2(200 BYTE),
  TITLE                        VARCHAR2(200 BYTE),
  JOURNAL_REPORT               VARCHAR2(300 BYTE),
  VOLUME                       VARCHAR2(100 BYTE),
  PAGES                        VARCHAR2(100 BYTE),
  PUBLICATION_DATE             VARCHAR2(100 BYTE),
  MAX_U__THETA_                VARCHAR2(100 BYTE),
  PROPAGATION_SPEED            VARCHAR2(100 BYTE),
  DEPTH_OF_P_THERM             VARCHAR2(100 BYTE),
  PROPAGATION_DIRECTION        VARCHAR2(100 BYTE),
  DEPTH_OF_S_THERM             VARCHAR2(100 BYTE),
  COMMENT_H                    VARCHAR2(800 BYTE),
  DEPTH_TO_BOTTOM              VARCHAR2(100 BYTE),
  SEA_FLOOR_REGION             VARCHAR2(100 BYTE),
  COMMENT_Z                    VARCHAR2(800 BYTE),
  EDDY_ROTATION                VARCHAR2(100 BYTE),
  EDDY_DEPTH_DESCRIPTOR        VARCHAR2(100 BYTE),
  PROPOGATION_CHARACTERISTICS  VARCHAR2(200 BYTE),
  OXYGEN_CORE                  VARCHAR2(100 BYTE),
  OXYGEN_EDGE                  VARCHAR2(100 BYTE),
  COMMENT_AY                   VARCHAR2(800 BYTE),
  MEDS_OBSERVATION_NUMBER      NUMBER(10),
  MEDS_JOB_NUMBER              NUMBER(10),
  EDDY_TYPE                    VARCHAR2(100 BYTE),
  MAJOR_AXIS_ORIENTATION       VARCHAR2(100 BYTE),
  MAX_U_THETA_CHARACTERISTICS  VARCHAR2(400 BYTE),
  ORIGIN                       VARCHAR2(100 BYTE),
  COMMENT_AP                   VARCHAR2(800 BYTE),
  DENSITY_DIFF_P_THERM         VARCHAR2(100 BYTE),
  DENSITY_DIFF_S_THERM         VARCHAR2(100 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.EDDY_OBSERVATION CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.EDDY_OBSERVATION
(
  LIFETIME                 VARCHAR2(100 BYTE),
  DURATION_OF_OBSERVATION  VARCHAR2(100 BYTE),
  COMMENT_S                VARCHAR2(600 BYTE),
  EDDY_NAME                VARCHAR2(100 BYTE),
  LATITUDE                 NUMBER(12,6),
  LONGITUDE                NUMBER(12,6),
  CRUISE_INFORMATION       VARCHAR2(600 BYTE),
  INSTRUMENT               VARCHAR2(600 BYTE),
  OBSERVATION_YEAR         VARCHAR2(20 BYTE),
  OBSERVATION_MONTH        VARCHAR2(40 BYTE),
  MEDS_JOB_NUMBER          NUMBER(10),
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  LOCATION                 MDSYS.SDO_GEOMETRY,
  DATABASE_REFERENCE       VARCHAR2(20 BYTE),
  DATA_AVAILABLE           VARCHAR2(300 BYTE)
)
COLUMN LOCATION NOT SUBSTITUTABLE AT ALL LEVELS
VARRAY "LOCATION"."SDO_ELEM_INFO" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
VARRAY "LOCATION"."SDO_ORDINATES" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.EDDY_REPEAT CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.EDDY_REPEAT
(
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  MEDS_JOB_NUMBER          NUMBER(10),
  DEPTH                    NUMBER(8),
  DENSITY                  NUMBER(12,3),
  TEMPERATURE              NUMBER(12,3),
  RADIUS                   NUMBER(12,3)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.EDDY_SATELLITE_DATA CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.EDDY_SATELLITE_DATA
(
  EDDY_NUMBER              VARCHAR2(20 BYTE),
  FIRST_YEAR_OBSERVED      VARCHAR2(20 BYTE),
  SWIRL_VELOCITY           VARCHAR2(20 BYTE),
  MAJOR_AXIS_LENGTH        VARCHAR2(20 BYTE),
  MINOR_AXIS_LENGTH        VARCHAR2(20 BYTE),
  MAJOR_AXIS_ORIENTATION   VARCHAR2(20 BYTE),
  EDDY_SST                 VARCHAR2(20 BYTE),
  EDDY_TYPE                VARCHAR2(20 BYTE),
  EDDY_GRADIENT            VARCHAR2(20 BYTE),
  MEDS_JOB_NUMBER          NUMBER(10),
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  EDDY_FRONTAL_DEPTH       VARCHAR2(20 BYTE),
  EDDY_CONFIDENCE          NUMBER(8),
  EDDY_ID                  NUMBER(10),
  EDDY_BOUNDARY_TYPE       VARCHAR2(20 BYTE),
  CENTRE_LATITUDE          NUMBER(12,6),
  CENTRE_LONGITUDE         NUMBER(12,6),
  EDDY_FRONT_TYPE          VARCHAR2(20 BYTE),
  PARENT_FEATURE           VARCHAR2(100 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.EDDY_SATELLITE_OBSERVATION CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.EDDY_SATELLITE_OBSERVATION
(
  LOCATION                 MDSYS.SDO_GEOMETRY,
  MEDS_JOB_NUMBER          NUMBER(10),
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  EDDY_OBSERVED_DATE       DATE
)
COLUMN LOCATION NOT SUBSTITUTABLE AT ALL LEVELS
VARRAY "LOCATION"."SDO_ELEM_INFO" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
VARRAY "LOCATION"."SDO_ORDINATES" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.EDDY_SATELLITE_REPEAT CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.EDDY_SATELLITE_REPEAT
(
  LATITUDE                 NUMBER(12,6),
  LONGITUDE                NUMBER(12,6),
  VERTEX_ID                NUMBER(20),
  POINT_ORDER              NUMBER(8),
  MEDS_JOB_NUMBER          NUMBER(10),
  MEDS_OBSERVATION_NUMBER  NUMBER(10)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.EVENTLOG CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.EVENTLOG
(
  ID              NUMBER(10)                    NOT NULL,
  USERID          VARCHAR2(50 BYTE),
  WORKSTATION     VARCHAR2(50 BYTE),
  EVENTDETAILS    VARCHAR2(4000 BYTE),
  EVENTTYPEID     NUMBER(10),
  EVENTDATETIME   DATE,
  VERBOSEDETAILS  VARCHAR2(4000 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.EVENTTYPE CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.EVENTTYPE
(
  ID           NUMBER(10)                       NOT NULL,
  DESCRIPTION  VARCHAR2(50 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.EXCHANGE_LIST CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.EXCHANGE_LIST
(
  MEIC_NUMBER     NUMBER,
  DESCRIPTION     VARCHAR2(32 BYTE),
  SUPPLIER        VARCHAR2(64 BYTE),
  CLASSIFICATION  VARCHAR2(50 BYTE),
  SOURCE          VARCHAR2(20 BYTE),
  COMMENTS        VARCHAR2(512 BYTE),
  DATABASED       DATE
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.EXTRACTION_OPTION_LOOKUP CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.EXTRACTION_OPTION_LOOKUP
(
  DATA_TYPE_INDEX  NUMBER(8),
  EXTRACTION_TYPE  NUMBER(8),
  TABLE_NAME       VARCHAR2(50 BYTE),
  FIELD_NAME_ONE   VARCHAR2(50 BYTE),
  FIELD_NAME_TWO   VARCHAR2(50 BYTE),
  CAPTION          VARCHAR2(50 BYTE),
  USER_NAME        VARCHAR2(100 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.EXTRACTION_TYPES_LOOKUP CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.EXTRACTION_TYPES_LOOKUP
(
  DESCIPTION       VARCHAR2(50 BYTE),
  EXTRACTION_TYPE  NUMBER(8)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.FIELD_LOOKUP CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.FIELD_LOOKUP
(
  DATA_TYPE_INDEX    NUMBER(8),
  FIELD_NAME         VARCHAR2(50 BYTE)          NOT NULL,
  FIELD_TYPE         VARCHAR2(10 BYTE)          DEFAULT 'S',
  FIELD_POSITION     NUMBER(8)                  DEFAULT 0,
  FIELD_WIDTH        NUMBER(8)                  DEFAULT 0,
  INCLUDE_IN_INPUT   NUMBER(1)                  DEFAULT 0,
  INCLUDE_IN_OUTPUT  NUMBER(1)                  DEFAULT 0,
  FIELD_SIZE         NUMBER(8)                  DEFAULT 0,
  FIELD_PRECISION    NUMBER(8)                  DEFAULT 0,
  TABLE_NAME         VARCHAR2(50 BYTE),
  UPDATE_METHOD      NUMBER(8)                  DEFAULT 0,
  FILE_EXTENSION     VARCHAR2(20 BYTE),
  REPEAT_ID          NUMBER(8)                  DEFAULT 0,
  TABLE_INDEX        VARCHAR2(50 BYTE),
  FIELD_INDEX        VARCHAR2(50 BYTE),
  REPEAT_VALUE       VARCHAR2(50 BYTE),
  REPEAT_OFFSET      NUMBER(8)                  DEFAULT 0,
  REPEAT_COUNT       NUMBER(8)                  DEFAULT 0,
  FILE_TYPE          NUMBER(1)                  DEFAULT 0,
  TABLE_ORDER        NUMBER(2)                  DEFAULT 0,
  COLUMN_NAME        VARCHAR2(50 BYTE),
  BIN_SIZE           NUMBER(12)                 DEFAULT NULL,
  SORT_ORDER         NUMBER(2)                  DEFAULT 0
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.FIELD_LOOKUP_CHECK CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.FIELD_LOOKUP_CHECK
(
  TABLE_NAME    VARCHAR2(50 BYTE),
  FIELD_NAME    VARCHAR2(50 BYTE),
  FIELD_EXISTS  NUMBER
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.FILE_LOOKUP CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.FILE_LOOKUP
(
  FILE_NAME  VARCHAR2(32 BYTE)                  NOT NULL,
  PATH_NAME  VARCHAR2(128 BYTE)                 NOT NULL,
  ARGUMENT   VARCHAR2(64 BYTE),
  ARGUMENT2  VARCHAR2(64 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.FILE_PATH_LOOKUP CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.FILE_PATH_LOOKUP
(
  FILE_PATH  VARCHAR2(256 BYTE),
  USER_NAME  VARCHAR2(50 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.FLAG_TYPES_LOOKUP CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.FLAG_TYPES_LOOKUP
(
  FLAG_TYPE_NAME  VARCHAR2(50 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.FRONT_DEPTH_PLAN_OBSERVATION CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.FRONT_DEPTH_PLAN_OBSERVATION
(
  FEATURE                  VARCHAR2(50 BYTE),
  GRID_SIZE                VARCHAR2(50 BYTE),
  LOCATION                 MDSYS.SDO_GEOMETRY,
  SURVEY_DATES             VARCHAR2(100 BYTE),
  DEPTH                    VARCHAR2(50 BYTE),
  BREAKPOINTS              VARCHAR2(20 BYTE),
  MEDS_JOB_NUMBER          NUMBER(10),
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  START_DATE               DATE,
  FILE_HDR_1               VARCHAR2(100 BYTE),
  FILE_HDR_2               VARCHAR2(100 BYTE),
  FILE_HDR_3               VARCHAR2(100 BYTE),
  FILE_HDR_4               VARCHAR2(100 BYTE),
  FILE_HDR_5               VARCHAR2(100 BYTE),
  FILE_HDR_6               VARCHAR2(100 BYTE)
)
COLUMN LOCATION NOT SUBSTITUTABLE AT ALL LEVELS
VARRAY "LOCATION"."SDO_ELEM_INFO" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
VARRAY "LOCATION"."SDO_ORDINATES" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.FRONT_DEPTH_PLAN_REPEAT CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.FRONT_DEPTH_PLAN_REPEAT
(
  LATITUDE                 NUMBER(12,6),
  LONGITUDE                NUMBER(12,6),
  TEMPERATURE              NUMBER(12,5),
  SALINITY                 NUMBER(12,5),
  SOUND_SPEED              NUMBER(12,5),
  DENSITY                  NUMBER(12,5),
  TSGR                     NUMBER(12,5),
  SSGR                     NUMBER(12,5),
  SSSGR                    NUMBER(12,5),
  DENSGR                   NUMBER(12,5),
  WIDTH                    NUMBER(12,5),
  CODE                     VARCHAR2(10 BYTE),
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  MEDS_JOB_NUMBER          NUMBER(10),
  POINT_ORDER              NUMBER(8)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.FRONT_FWOC_OBSERVATION CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.FRONT_FWOC_OBSERVATION
(
  FRONT_NAME               VARCHAR2(100 BYTE),
  DEPTH                    VARCHAR2(20 BYTE),
  BREAKPOINTS              VARCHAR2(20 BYTE),
  LOCATION                 MDSYS.SDO_GEOMETRY,
  MEDS_JOB_NUMBER          NUMBER(10),
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  FRONT_DATE               DATE,
  ARCHIVE_DATE             DATE
)
COLUMN LOCATION NOT SUBSTITUTABLE AT ALL LEVELS
VARRAY "LOCATION"."SDO_ELEM_INFO" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
VARRAY "LOCATION"."SDO_ORDINATES" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.FRONT_FWOC_REPEAT CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.FRONT_FWOC_REPEAT
(
  MEDS_JOB_NUMBER          NUMBER(10),
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  LATITUDE                 NUMBER(12,6),
  LONGITUDE                NUMBER(12,6),
  POINT_ORDER              NUMBER(8)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.FRONT_GRID_DATA CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.FRONT_GRID_DATA
(
  MEDS_JOB_NUMBER          NUMBER(10),
  FRONT_NAME               VARCHAR2(50 BYTE),
  REGION                   VARCHAR2(50 BYTE),
  DURATION                 VARCHAR2(50 BYTE),
  DEPTH                    VARCHAR2(20 BYTE),
  SOURCE                   VARCHAR2(50 BYTE),
  DATES                    VARCHAR2(50 BYTE),
  RESOLUTION               VARCHAR2(20 BYTE),
  ANALYSED                 VARCHAR2(20 BYTE),
  CREATOR                  VARCHAR2(50 BYTE),
  MEDS_OBSERVATION_NUMBER  NUMBER(10)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.FRONT_GRID_OBSERVATION CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.FRONT_GRID_OBSERVATION
(
  MEDS_JOB_NUMBER          NUMBER(10),
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  LOCATION                 MDSYS.SDO_GEOMETRY,
  IDENTIFIER               VARCHAR2(20 BYTE),
  TRH_LATITUDE             NUMBER(12,8),
  TRH_LONGITUDE            NUMBER(12,8),
  BLH_LONGITUDE            NUMBER(12,8),
  BLH_LATITUDE             NUMBER(12,8)
)
COLUMN LOCATION NOT SUBSTITUTABLE AT ALL LEVELS
VARRAY "LOCATION"."SDO_ELEM_INFO" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
VARRAY "LOCATION"."SDO_ORDINATES" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.FRONT_GRID_REPEAT CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.FRONT_GRID_REPEAT
(
  LATITUDE                 NUMBER(12,6),
  LONGITUDE                NUMBER(12,6),
  COUNT                    VARCHAR2(20 BYTE),
  OCCUPANCY                VARCHAR2(20 BYTE),
  MEDS_JOB_NUMBER          NUMBER(10),
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  TOTAL                    VARCHAR2(20 BYTE),
  POINT_ORDER              NUMBER(8)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.FRONT_IMAGE_DATA CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.FRONT_IMAGE_DATA
(
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  MEDS_JOB_NUMBER          NUMBER(10),
  POINT_TYPE               VARCHAR2(20 BYTE),
  FRONTAL_GRADIENT         VARCHAR2(20 BYTE),
  FRONTAL_DEPTH            VARCHAR2(20 BYTE),
  FRONTAL_NAME             VARCHAR2(100 BYTE),
  FRONTAL_TYPE             VARCHAR2(20 BYTE),
  FRONTAL_CONFIDENCE       VARCHAR2(20 BYTE),
  FRONTAL_LINE_ID          NUMBER(10),
  BOUNDARY_TYPE            VARCHAR2(20 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.FRONT_IMAGE_REPEAT CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.FRONT_IMAGE_REPEAT
(
  LATITUDE                 NUMBER,
  LONGITUDE                NUMBER,
  CONFIDENCE               VARCHAR2(20 BYTE),
  STRENGTH                 VARCHAR2(20 BYTE),
  MEDS_JOB_NUMBER          NUMBER(10),
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  POINT_ORDER              NUMBER(8),
  VERTEX_ID                NUMBER(10)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.FRONT_MEAN_DATA CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.FRONT_MEAN_DATA
(
  MEDS_JOB_NUMBER          NUMBER(10),
  FRONT_NAME               VARCHAR2(100 BYTE),
  REGION                   VARCHAR2(100 BYTE),
  BOUNDARY                 VARCHAR2(100 BYTE),
  PROPERTY                 VARCHAR2(100 BYTE),
  FRONT_TYPE               VARCHAR2(100 BYTE),
  DURATION                 VARCHAR2(100 BYTE),
  STRENGTH                 VARCHAR2(100 BYTE),
  DEPTH                    VARCHAR2(100 BYTE),
  LEVEL_1                  VARCHAR2(100 BYTE),
  SOURCE                   VARCHAR2(100 BYTE),
  DATES                    VARCHAR2(100 BYTE),
  OBSERVATIONS             VARCHAR2(100 BYTE),
  RESOLUTION               VARCHAR2(100 BYTE),
  ANALYSED                 VARCHAR2(100 BYTE),
  CREATOR                  VARCHAR2(100 BYTE),
  MEDS_OBSERVATION_NUMBER  NUMBER(10)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.FRONT_MEAN_OBSERVATION CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.FRONT_MEAN_OBSERVATION
(
  MEDS_JOB_NUMBER          NUMBER(10),
  LOCATION                 MDSYS.SDO_GEOMETRY,
  LINE_TYPE                VARCHAR2(20 BYTE),
  IDENTIFIER               VARCHAR2(20 BYTE),
  MEDS_OBSERVATION_NUMBER  NUMBER(10)
)
COLUMN LOCATION NOT SUBSTITUTABLE AT ALL LEVELS
VARRAY "LOCATION"."SDO_ELEM_INFO" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
VARRAY "LOCATION"."SDO_ORDINATES" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.FRONT_MEAN_REPEAT CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.FRONT_MEAN_REPEAT
(
  MEDS_JOB_NUMBER          NUMBER(10),
  LATITUDE                 NUMBER(12,6),
  LONGITUDE                NUMBER(12,6),
  VERTEX_ID                VARCHAR2(20 BYTE),
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  POINT_ORDER              NUMBER(8)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.FRONT_SATELLITE_OBSERVATION CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.FRONT_SATELLITE_OBSERVATION
(
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  MEDS_JOB_NUMBER          NUMBER(10),
  LOCATION                 MDSYS.SDO_GEOMETRY,
  OBSERVERED_DATE          DATE
)
COLUMN LOCATION NOT SUBSTITUTABLE AT ALL LEVELS
VARRAY "LOCATION"."SDO_ELEM_INFO" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
VARRAY "LOCATION"."SDO_ORDINATES" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.FRONT_SURVEY_DATA CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.FRONT_SURVEY_DATA
(
  INSTRUMENTS              VARCHAR2(100 BYTE),
  MAXIMUM_DEPTH            VARCHAR2(20 BYTE),
  NUMBER_OF_OBSERVATIONS   NUMBER(5),
  QUALITY                  VARCHAR2(30 BYTE),
  FILENAME                 VARCHAR2(500 BYTE),
  MEDS_JOB_NUMBER          NUMBER(10),
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  BLH_LATITUDE             NUMBER(12,6),
  TRH_LATITUDE             NUMBER(12,6),
  TRH_LONGITUDE            NUMBER(12,6),
  BLH_LONGITUDE            NUMBER(12,6)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.FRONT_SURVEY_OBSERVATION CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.FRONT_SURVEY_OBSERVATION
(
  LOCATION                 MDSYS.SDO_GEOMETRY,
  MEDS_JOB_NUMBER          NUMBER(10),
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  START_DATE               DATE,
  END_DATE                 DATE
)
COLUMN LOCATION NOT SUBSTITUTABLE AT ALL LEVELS
VARRAY "LOCATION"."SDO_ELEM_INFO" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
VARRAY "LOCATION"."SDO_ORDINATES" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.FRONT_TRANSECT_OBSERVATION CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.FRONT_TRANSECT_OBSERVATION
(
  TRANSECT_FEATURE         VARCHAR2(50 BYTE),
  LOCATION                 MDSYS.SDO_GEOMETRY,
  BEARING                  VARCHAR2(20 BYTE),
  TRANSECT_DATES           VARCHAR2(300 BYTE),
  BREAKPOINTS              VARCHAR2(20 BYTE),
  MEDS_JOB_NUMBER          NUMBER(10),
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  START_DATE               DATE,
  MEAN_VALUES              VARCHAR2(100 BYTE),
  FILE_HDR_1               VARCHAR2(100 BYTE),
  FILE_HDR_2               VARCHAR2(100 BYTE),
  FILE_HDR_3               VARCHAR2(100 BYTE),
  FILE_HDR_4               VARCHAR2(100 BYTE),
  FILE_HDR_5               VARCHAR2(100 BYTE),
  FILE_HDR_6               VARCHAR2(100 BYTE),
  FILE_HDR_7               VARCHAR2(100 BYTE)
)
COLUMN LOCATION NOT SUBSTITUTABLE AT ALL LEVELS
VARRAY "LOCATION"."SDO_ELEM_INFO" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
VARRAY "LOCATION"."SDO_ORDINATES" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.FRONT_TRANSECT_REPEAT CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.FRONT_TRANSECT_REPEAT
(
  LATITUDE                 NUMBER(12,6),
  LONGITUDE                NUMBER(12,6),
  DEPTH                    NUMBER(12,5),
  TEMPERATURE              NUMBER(12,5),
  SALINITY                 NUMBER(12,5),
  SOUND_SPEED              NUMBER(12,5),
  DENSITY                  NUMBER(12,5),
  TSGR                     NUMBER(12,5),
  SSGR                     NUMBER(12,5),
  SSSGR                    NUMBER(12,5),
  DENSGR                   NUMBER(12,5),
  CODE                     VARCHAR2(10 BYTE),
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  MEDS_JOB_NUMBER          NUMBER(10),
  SLOPE                    VARCHAR2(50 BYTE),
  WIDTH                    VARCHAR2(20 BYTE),
  POINT_ORDER              NUMBER(8)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.GENERIC_EDIT CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.GENERIC_EDIT
(
  ROW_TYPE              VARCHAR2(20 BYTE)       NOT NULL,
  TABLE_NAME            VARCHAR2(30 BYTE)       NOT NULL,
  COLUMN_NAME           VARCHAR2(30 BYTE),
  COLUMN_HEADER         VARCHAR2(30 BYTE),
  COLUMN_ORDER          NUMBER,
  TEXT_SEARCH           NUMBER,
  COMBO_SEARCH          NUMBER,
  DATA_TYPE_ALIAS       VARCHAR2(30 BYTE),
  DATE_RECORD_NAME      VARCHAR2(30 BYTE),
  ALLOW_TIME            NUMBER(1),
  DATE_REQUIRED         NUMBER(1),
  CRUISE_REQUIRED       NUMBER(1),
  DATE_SEARCH_REQUIRED  NUMBER(1),
  HAS_TRACK             NUMBER(1)               DEFAULT 0,
  JOB_TYPE_DESCRIPTION  VARCHAR2(30 BYTE)       DEFAULT NULL
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.GEOLOGY_PARAM_DATA CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.GEOLOGY_PARAM_DATA
(
  SEA_BED_TYPE__OLD_              NUMBER(2),
  SEA_BED_TYPE__NEW_              NUMBER(2),
  SEA_BED_SEDIMENT_THICKNESS      NUMBER(3),
  BEDROCK_TYPE                    NUMBER(2),
  BEDROCK_LITHOLOGY               NUMBER(3),
  BEDROCK_ID                      VARCHAR2(10 BYTE),
  BATHMETRY                       NUMBER(5),
  GAS_TYPE                        NUMBER(2),
  GAS_DEPTH                       NUMBER(4),
  NUMBER_BULK_SEDIMENT_LAYERS     NUMBER(3),
  MASTER_BULK_SEDIMENT_LAYER      NUMBER(3),
  MASTER_BULK_SEDIMENT_THICKNESS  NUMBER(4),
  MEDS_JOB_NUMBER                 NUMBER(10),
  MEDS_OBSERVATION_NUMBER         NUMBER(10)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.GEOLOGY_PARAM_OBSERVATION CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.GEOLOGY_PARAM_OBSERVATION
(
  LONGITUDE                NUMBER(12,6),
  LATITUDE                 NUMBER(12,6),
  LOCATION                 MDSYS.SDO_GEOMETRY,
  MEDS_JOB_NUMBER          NUMBER(10),
  MEDS_OBSERVATION_NUMBER  NUMBER(10)
)
COLUMN LOCATION NOT SUBSTITUTABLE AT ALL LEVELS
VARRAY "LOCATION"."SDO_ELEM_INFO" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
VARRAY "LOCATION"."SDO_ORDINATES" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.GEOLOGY_QUALITY_DATA CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.GEOLOGY_QUALITY_DATA
(
  SEDIMENT_TYPE_CONFIDENCE        NUMBER(3),
  SEDIMENT_TYPE_DATA              NUMBER(3),
  SEDIMENT_THICKNESS_CONFIDENCE   NUMBER(3),
  SEDIMENT_THICKNESS_DATA         NUMBER(3),
  BEDROCK_TYPE_CONFIDENCE         NUMBER(3),
  BEDROCK_TYPE_DATA               NUMBER(3),
  BEDROCK_LITH_ID_CONFIDENCE      NUMBER(3),
  BEDROCK_LITH_ID_DATA            NUMBER(3),
  BATHYMETRY_CONFIDENCE           NUMBER(3),
  BATHYMETRY_DATA                 NUMBER(3),
  GAS_TYPE_DATA                   NUMBER(3),
  GAS_TYPE_CONFIDENCE             NUMBER(3),
  GAS_DEPTH_DATA                  NUMBER(3),
  GAS_DEPTH_CONFIDENCE            NUMBER(3),
  BULK_LAYERS_CONFIDENCE          NUMBER(3),
  BULK_LAYERS_DATA_CODE           NUMBER(3),
  MASTER_BSL                      NUMBER(3),
  MASTER_BSL_DATA                 NUMBER(3),
  MASTER_BSL_THICKNESS_CONFIDENC  NUMBER(3),
  MASTER_BSL_THICKNESS_CODE       NUMBER(3),
  MEDS_OBSERVATION_NUMBER         NUMBER(10),
  MEDS_JOB_NUMBER                 NUMBER(10)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.GEOLOGY_QUALITY_OBSERVATION CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.GEOLOGY_QUALITY_OBSERVATION
(
  LONGITUDE                NUMBER(12,6),
  LATITUDE                 NUMBER(12,6),
  LOCATION                 MDSYS.SDO_GEOMETRY,
  MEDS_JOB_NUMBER          NUMBER(10),
  MEDS_OBSERVATION_NUMBER  NUMBER(10)
)
COLUMN LOCATION NOT SUBSTITUTABLE AT ALL LEVELS
VARRAY "LOCATION"."SDO_ELEM_INFO" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
VARRAY "LOCATION"."SDO_ORDINATES" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.GLIDER_THREADED_DATA CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.GLIDER_THREADED_DATA
(
  MEDS_JOB_NUMBER          NUMBER(10),
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  DEPTH                    NUMBER(12,4),
  PRESSURE                 NUMBER(12,4),
  TEMPERATURE              NUMBER(12,4),
  TEMP_FLAG                NUMBER(3),
  SALINITY                 NUMBER(12,4),
  SAL_FLAG                 NUMBER(3),
  SOUND_SPEED              NUMBER(12,4),
  DENSITY                  NUMBER(12,4),
  CHLOROPHYLL              NUMBER(20,10),
  HYDROCARBONS             NUMBER(20,10),
  GELBSTOFFE               NUMBER(20,10),
  BIOLUMINESCENCE          NUMBER(20,10),
  LONGITUDE                NUMBER(12,6),
  LATITUDE                 NUMBER(12,6),
  DATE_RECORDED            DATE,
  POINT_ORDER              NUMBER(8),
  BBP700                   NUMBER(20,10)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.GLIDER_THREADED_OBSERVATION CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.GLIDER_THREADED_OBSERVATION
(
  LOCATION                 MDSYS.SDO_GEOMETRY,
  MEDS_JOB_NUMBER          NUMBER(10),
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  MID_LATITUDE             NUMBER(12,6),
  MID_LONGITUDE            NUMBER(12,6),
  PROFILE_ID               NUMBER(10),
  PROFILE_DIR              NUMBER(2),
  DISTANCE_TRAVELED        NUMBER(12,4),
  MID_TIME                 NUMBER(10)
)
COLUMN LOCATION NOT SUBSTITUTABLE AT ALL LEVELS
VARRAY "LOCATION"."SDO_ELEM_INFO" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
VARRAY "LOCATION"."SDO_ORDINATES" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


ALTER TABLE MEDSADMIN.HELP
 DROP PRIMARY KEY CASCADE;

DROP TABLE MEDSADMIN.HELP CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.HELP
(
  TOPIC  VARCHAR2(50 BYTE)                      NOT NULL,
  SEQ    NUMBER                                 NOT NULL,
  INFO   VARCHAR2(80 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    0
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          48K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.ICES_SHIP_DESC CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.ICES_SHIP_DESC
(
  ICES_SHIP_CODE    VARCHAR2(4 BYTE),
  CODE_DESCRIPTION  VARCHAR2(200 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.INGRES_ROWS_PER_JOB CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.INGRES_ROWS_PER_JOB
(
  BOOKING_JOB  INTEGER,
  N_ROWS       INTEGER
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


ALTER TABLE MEDSADMIN.INSTRUMENT
 DROP PRIMARY KEY CASCADE;

DROP TABLE MEDSADMIN.INSTRUMENT CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.INSTRUMENT
(
  OCEAN        NUMBER(4),
  DESCRIPTION  VARCHAR2(200 BYTE),
  NEBT         VARCHAR2(2 BYTE),
  SERD         VARCHAR2(4 BYTE)                 NOT NULL,
  NODEF_       VARCHAR2(4 BYTE),
  DATA_TYPE    NUMBER(1)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.INTERNAL_WAVE_DATA CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.INTERNAL_WAVE_DATA
(
  GENERAL_DESCRIPTION          VARCHAR2(150 BYTE),
  LONG_LENGTH_SCALE            NUMBER(12,3),
  SHORT_LENGTH_SCALE           NUMBER(12,3),
  MEASUREMENT                  VARCHAR2(200 BYTE),
  SPEED                        VARCHAR2(30 BYTE),
  PROPAGATION_DISTANCE         VARCHAR2(100 BYTE),
  FIGURES                      VARCHAR2(100 BYTE),
  AUTHORS                      VARCHAR2(200 BYTE),
  TITLE                        VARCHAR2(200 BYTE),
  JOURNAL_REPORT               VARCHAR2(300 BYTE),
  VOLUME                       VARCHAR2(100 BYTE),
  PAGES                        VARCHAR2(30 BYTE),
  PUBLICATION_DATE             VARCHAR2(50 BYTE),
  CROSS_REFERENCE              VARCHAR2(50 BYTE),
  WAVE_PERIOD                  NUMBER(12,3),
  MARSDEN_SQUARE               VARCHAR2(20 BYTE),
  MEDS_OBSERVATION_NUMBER      NUMBER(10),
  MEDS_JOB_NUMBER              NUMBER(10),
  OTHER                        VARCHAR2(200 BYTE),
  BATHYMETRY                   VARCHAR2(300 BYTE),
  SURVEY_IDENTIFIER            VARCHAR2(150 BYTE),
  LOCATION_LONGITUDE           VARCHAR2(40 BYTE),
  LOCATION_LATITUDE            VARCHAR2(50 BYTE),
  OCEANOGRAPHY                 VARCHAR2(500 BYTE),
  METEOROLOGY                  VARCHAR2(300 BYTE),
  WAVELENGTH                   VARCHAR2(100 BYTE),
  INSTRUMENT                   VARCHAR2(150 BYTE),
  IW_PERIOD                    VARCHAR2(200 BYTE),
  REPEAT_PERIOD                VARCHAR2(150 BYTE),
  PROPOSED_GENERATING_MECH     VARCHAR2(500 BYTE),
  DESCRIPTION                  VARCHAR2(500 BYTE),
  IW_DIRECTION_OF_PROPAGATION  VARCHAR2(150 BYTE),
  OBSERVED_DATE                VARCHAR2(75 BYTE),
  BOOK_EDITOR_PUBLISHER        VARCHAR2(150 BYTE),
  THERMOCLINE_PYCNOCLINE       VARCHAR2(100 BYTE),
  IW_SPEED_OBS                 VARCHAR2(100 BYTE),
  IW_AMPLITUDE_OBS             VARCHAR2(150 BYTE),
  DEPTH                        VARCHAR2(50 BYTE),
  AMPLITUDE                    VARCHAR2(100 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.INTERNAL_WAVE_OBSERVATION CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.INTERNAL_WAVE_OBSERVATION
(
  LATITUDE                        NUMBER(12,6),
  LONGITUDE                       NUMBER(12,6),
  LOCATION                        MDSYS.SDO_GEOMETRY,
  DATABASE_IDENTIFICATION_NUMBER  VARCHAR2(20 BYTE),
  MONTH                           VARCHAR2(20 BYTE),
  MEDS_JOB_NUMBER                 NUMBER(10),
  MEDS_OBSERVATION_NUMBER         NUMBER(10)
)
COLUMN LOCATION NOT SUBSTITUTABLE AT ALL LEVELS
VARRAY "LOCATION"."SDO_ELEM_INFO" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
VARRAY "LOCATION"."SDO_ORDINATES" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.INTERNAL_WAVE_REPEAT CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.INTERNAL_WAVE_REPEAT
(
  DIRECTION                VARCHAR2(20 BYTE),
  MEDS_JOB_NUMBER          NUMBER(10),
  MEDS_OBSERVATION_NUMBER  NUMBER(10)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.IPR_LOOKUP CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.IPR_LOOKUP
(
  IPR_OWNER_TYPE   VARCHAR2(100 BYTE),
  IPR_PERIOD       DATE,
  IPR_OWNER        VARCHAR2(50 BYTE),
  RIGHTS           NUMBER(1),
  FOI_EXEMPT       NUMBER(1),
  FOI_DECLARE      NUMBER(1),
  CONFIDENTIALITY  NUMBER(1)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.IPR_OWNER_CONTACT CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.IPR_OWNER_CONTACT
(
  OWNER       VARCHAR2(50 BYTE),
  OWNER_CODE  NUMBER(10)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.IPR_OWNER_TYPE CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.IPR_OWNER_TYPE
(
  DESRIPTION  VARCHAR2(50 BYTE),
  TYPE        NUMBER(3)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.IW_IMAGE_DATA CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.IW_IMAGE_DATA
(
  FEATURE_TYPE             VARCHAR2(100 BYTE),
  FEATURE_NAME             VARCHAR2(100 BYTE),
  OCEAN_AREA               VARCHAR2(100 BYTE),
  LATITUDE_NW              VARCHAR2(50 BYTE),
  LATITUDE_NE              VARCHAR2(50 BYTE),
  LATITUDE_SE              VARCHAR2(50 BYTE),
  LATITUDE_SW              VARCHAR2(50 BYTE),
  ORBIT_NUMBER             VARCHAR2(50 BYTE),
  IMAGE_SOURCE             VARCHAR2(100 BYTE),
  STORAGE_FORMAT           VARCHAR2(50 BYTE),
  ARCHIVE_DATE             DATE,
  ADDITIONAL_INFORMATION   VARCHAR2(500 BYTE),
  FILE_REFERENCE           VARCHAR2(100 BYTE),
  LONGITUDE_NE             VARCHAR2(50 BYTE),
  LONGITUDE_SW             VARCHAR2(50 BYTE),
  LONGITUDE_NW             VARCHAR2(50 BYTE),
  LONGITUDE_SE             VARCHAR2(50 BYTE),
  PROJECT_OF_IMAGE         VARCHAR2(50 BYTE),
  IMAGE_FILE_REFERENCE     VARCHAR2(500 BYTE),
  NUMBER_OF_WAVE_PACKETS   VARCHAR2(20 BYTE),
  INSTRUMENT               VARCHAR2(50 BYTE),
  MEASUREMENT              VARCHAR2(50 BYTE),
  SATELLITE                VARCHAR2(50 BYTE),
  TIME_OF_TIDE             VARCHAR2(20 BYTE),
  SOURCE_OF_TIDE_INFO      VARCHAR2(100 BYTE),
  FRAME_NUMBER             VARCHAR2(20 BYTE),
  ORIGINAL_IMAGE_PRODUCT   VARCHAR2(100 BYTE),
  ORIGINAL_X_RESOLUTION    VARCHAR2(20 BYTE),
  ORIGINAL_Y_RESOLUTION    VARCHAR2(20 BYTE),
  STORED_X_RESOLUTION      VARCHAR2(20 BYTE),
  STORED_Y_RESOLUTION      VARCHAR2(20 BYTE),
  X_SIZE                   VARCHAR2(20 BYTE),
  Y_SIZE                   VARCHAR2(20 BYTE),
  MEDS_JOB_NUMBER          NUMBER(10),
  MEDS_OBSERVATION_NUMBER  VARCHAR2(10 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.IW_IMAGE_OBSERVATION CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.IW_IMAGE_OBSERVATION
(
  LATITUDE                 NUMBER(12,6),
  LONGITUDE                NUMBER(12,6),
  LOCATION                 MDSYS.SDO_GEOMETRY,
  RECORDED_DATE            DATE,
  IMAGE_ID                 VARCHAR2(20 BYTE),
  MEDS_JOB_NUMBER          NUMBER(10),
  MEDS_OBSERVATION_NUMBER  NUMBER(10)
)
COLUMN LOCATION NOT SUBSTITUTABLE AT ALL LEVELS
VARRAY "LOCATION"."SDO_ELEM_INFO" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
VARRAY "LOCATION"."SDO_ORDINATES" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.IW_PACKETS CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.IW_PACKETS
(
  MEDS_JOB_NUMBER           NUMBER(10),
  MEDS_OBSERVATION_NUMBER   NUMBER(10),
  WAVE_PACKET_ID            VARCHAR2(20 BYTE),
  NUMBER_OF_WAVES           VARCHAR2(20 BYTE),
  LATITUDE_FOCAL_PT         VARCHAR2(20 BYTE),
  LONGITUDE_FOCAL_PT        VARCHAR2(20 BYTE),
  FOCAL_RADIUS              VARCHAR2(20 BYTE),
  ESTIMATED_FOCAL_ERROR     VARCHAR2(20 BYTE),
  FOCAL_POINT_FLAG          VARCHAR2(20 BYTE),
  LEAD_WAVE_LENGTH          VARCHAR2(20 BYTE),
  LEAD_WAVE_CURVATURE       VARCHAR2(20 BYTE),
  LEAD_WAVE_PROP_DIR        VARCHAR2(20 BYTE),
  PROP_DIRECTION_COMMENT    VARCHAR2(500 BYTE),
  DISTANCE_BETWEEN_PACKETS  VARCHAR2(20 BYTE),
  DISTANCE_CALC_PACKETS     VARCHAR2(20 BYTE),
  COMMENTS                  VARCHAR2(500 BYTE),
  MIN_LAT_BREAKPOINTS       VARCHAR2(20 BYTE),
  MIN_LON_BREAKPOINTS       VARCHAR2(20 BYTE),
  MAX_LAT_BREAKPOINTS       VARCHAR2(20 BYTE),
  MAX_LON_BREAKPOINTS       VARCHAR2(20 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.IW_POINTS CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.IW_POINTS
(
  MEDS_JOB_NUMBER          NUMBER(10),
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  BREAK_POINT_ID           VARCHAR2(20 BYTE),
  POINT_LATITUDE           VARCHAR2(20 BYTE),
  POINT_LONGITUDE          VARCHAR2(20 BYTE),
  PROPOGATION_DIRECTION    VARCHAR2(20 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.IW_WAVES CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.IW_WAVES
(
  MEDS_JOB_NUMBER          NUMBER(10),
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  INDIVIDUAL_WAVE_ID       VARCHAR2(20 BYTE),
  CREST_LENGTH             VARCHAR2(20 BYTE),
  MEAN_WAVE_SEPERATION     VARCHAR2(20 BYTE),
  MIN_WAVE_SEPERATION      VARCHAR2(20 BYTE),
  MAX_WAVE_SEPERATION      VARCHAR2(20 BYTE),
  NUMBER_OF_BREAKPOINTS    VARCHAR2(20 BYTE),
  BRIGHTNESS               VARCHAR2(50 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.JOB CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.JOB
(
  JOB_NUMBER       NUMBER(6),
  DATE_OF_RECEIPT  DATE,
  ORIG_INITIALS    VARCHAR2(6 BYTE),
  PERIOD_START     DATE,
  PERIOD_END       DATE,
  PRIORITY_AREA    NUMBER(2),
  SOURCE           VARCHAR2(20 BYTE),
  VESSEL_NAME      VARCHAR2(20 BYTE),
  MEDIA_TYPE       VARCHAR2(20 BYTE),
  RAW_PREPROCESS   VARCHAR2(10 BYTE),
  CLASSIFICATION   VARCHAR2(20 BYTE),
  REMARKS          VARCHAR2(70 BYTE),
  NUM_OBS          NUMBER(6),
  TARGET_DATE      DATE
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          256K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.JOB_ERROR CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.JOB_ERROR
(
  JOB_NUMBER    NUMBER,
  JOB_TYPE      NUMBER,
  ERROR_NUMBER  NUMBER,
  NUM_ERROR     NUMBER
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.JOB_LOOKUPS CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.JOB_LOOKUPS
(
  TYPE            VARCHAR2(20 BYTE),
  DESCRIPTION     VARCHAR2(50 BYTE),
  USAGE           VARCHAR2(50 BYTE),
  INDEX_FIELD     NUMBER(8),
  GENERIC         NUMBER(1),
  TEXT_FILE_TYPE  NUMBER(1),
  FILE_EXTENSION  VARCHAR2(50 BYTE),
  DUC_POSITION    NUMBER(4)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.JOB_STATS CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.JOB_STATS
(
  DESCRIPTION        VARCHAR2(30 BYTE)          NOT NULL,
  PERIOD_START       DATE                       NOT NULL,
  PERIOD_END         DATE                       NOT NULL,
  RECEIVED           NUMBER,
  ACCEPTED           NUMBER,
  REJECTED           NUMBER,
  ON_TIME            NUMBER,
  LATE               NUMBER,
  MONTH_LATE_1       NUMBER,
  MONTH_LATE_1_3     NUMBER,
  MONTH_LATE_3_6     NUMBER,
  LATE_GREATER_6     NUMBER,
  WAITING            NUMBER,
  WAITING_ON_TIME    NUMBER,
  WAITING_LATE       NUMBER,
  WAITING_LATE_1     NUMBER,
  WAITING_LATE_1_3   NUMBER,
  WAITING_LATE_3_6   NUMBER,
  WAITING_GREATER_6  NUMBER
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.JOB_STATS_SETTINGS CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.JOB_STATS_SETTINGS
(
  VALUE          NUMBER                         NOT NULL,
  DAY            NUMBER                         NOT NULL,
  MONTH          VARCHAR2(16 BYTE)              NOT NULL,
  YEAR           NUMBER                         NOT NULL,
  INTERVAL       VARCHAR2(16 BYTE)              NOT NULL,
  NUM_INTERVALS  NUMBER                         NOT NULL,
  TOTAL          NUMBER                         NOT NULL
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


ALTER TABLE MEDSADMIN.JOB_TRACKING
 DROP PRIMARY KEY CASCADE;

DROP TABLE MEDSADMIN.JOB_TRACKING CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.JOB_TRACKING
(
  MEIC_NUMBER              NUMBER,
  PO_NUMBER                NUMBER,
  PO_TASK                  CHAR(1 BYTE),
  STATUS                   CHAR(16 BYTE)        NOT NULL,
  JOB_TYPE_NUMBER          NUMBER               NOT NULL,
  INGRES_NO                NUMBER,
  DATE_RECEIVED            DATE,
  SUPPLIER                 VARCHAR2(64 BYTE),
  SOURCE                   VARCHAR2(30 BYTE),
  CLASSIFICATION           VARCHAR2(50 BYTE),
  ASSIGNED                 VARCHAR2(16 BYTE),
  ACKNOWLEDGE              CHAR(1 BYTE)         NOT NULL,
  PRIORITY_REGION1         CHAR(1 BYTE)         NOT NULL,
  PRIORITY_REGION2         CHAR(1 BYTE)         NOT NULL,
  PRIORITY_REGION3         CHAR(1 BYTE)         NOT NULL,
  PRIORITY_REGION4         CHAR(1 BYTE)         NOT NULL,
  PRIORITY_REGION5         CHAR(1 BYTE)         NOT NULL,
  PRIORITY_REGION6         CHAR(1 BYTE)         NOT NULL,
  NO_OBS                   NUMBER,
  OBS_ACCEPTED             NUMBER,
  OBS_REJECTED             NUMBER,
  COLLECTION_START         DATE,
  COLLECTION_END           DATE,
  QA_PROCESSING_TARGET     DATE,
  QA_PROCESSING_COMPLETED  DATE,
  QA_PROCESSING_NAME       VARCHAR2(16 BYTE),
  DATABASED                DATE,
  DATABASED_NAME           VARCHAR2(16 BYTE),
  VALIDATED                DATE,
  VALIDATED_NAME           VARCHAR2(16 BYTE),
  COMMENTS                 VARCHAR2(512 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.JOB_TYPE CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.JOB_TYPE
(
  JOB_NUMBER           NUMBER(6),
  JOB_TYPE             NUMBER(4),
  PROCESSING_COMPLETE  DATE,
  PROCESSOR_INITIALS   VARCHAR2(8 BYTE),
  VALIDATION_COMPLETE  DATE,
  VALIDATOR_INITIALS   VARCHAR2(8 BYTE),
  DATABASE_UPDATED     DATE,
  UPDATOR_INITIALS     VARCHAR2(8 BYTE),
  NUM_JOBS_ACCEPTED    NUMBER(6),
  NUM_JOBS_REJECTED    NUMBER(6),
  NUM_DUPLICATES       NUMBER(10)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.LAYER_CRITERIA_LOOKUP CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.LAYER_CRITERIA_LOOKUP
(
  LAYER_INDEX      NUMBER(10),
  CRITERIA_STRING  VARCHAR2(4000 BYTE),
  CAPTION          VARCHAR2(50 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.LAYER_CRITERIA_LOOKUP_COPY CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.LAYER_CRITERIA_LOOKUP_COPY
(
  LAYER_INDEX      NUMBER(10),
  CRITERIA_STRING  VARCHAR2(100 BYTE),
  CAPTION          VARCHAR2(50 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.LAYER_LOOKUP CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.LAYER_LOOKUP
(
  LAYER_SQL        VARCHAR2(4000 BYTE),
  USER_NAME        VARCHAR2(75 BYTE),
  LAYER_NAME       VARCHAR2(150 BYTE),
  DATA_TYPE_INDEX  NUMBER(10),
  LAYER_INDEX      NUMBER(10),
  DATA_TABLE       VARCHAR2(128 BYTE)           NOT NULL
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.LEVEL_TABLES_LOOKUP CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.LEVEL_TABLES_LOOKUP
(
  DATA_TYPE_INDEX    NUMBER(8),
  TABLE_NAME         VARCHAR2(50 BYTE),
  INSERT_UPDATE      NUMBER(1),
  FILE_EXTENSION     VARCHAR2(20 BYTE),
  LEVEL_TABLE_INDEX  NUMBER(8)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MAPINFO_MAPCATALOG CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MAPINFO_MAPCATALOG
(
  SPATIALTYPE       FLOAT(126),
  TABLENAME         VARCHAR2(32 BYTE),
  OWNERNAME         VARCHAR2(32 BYTE),
  SPATIALCOLUMN     VARCHAR2(32 BYTE),
  DB_X_LL           FLOAT(126),
  DB_Y_LL           FLOAT(126),
  DB_X_UR           FLOAT(126),
  DB_Y_UR           FLOAT(126),
  COORDINATESYSTEM  VARCHAR2(254 BYTE),
  SYMBOL            VARCHAR2(254 BYTE),
  XCOLUMNNAME       VARCHAR2(32 BYTE),
  YCOLUMNNAME       VARCHAR2(32 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MASTER_GRID_D1 CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MASTER_GRID_D1
(
  LOCATION                   MDSYS.SDO_GEOMETRY,
  GRID_INDEX                 NUMBER(8),
  JOB_PROFILE_JAN            NUMBER(8),
  JOB_PROFILE_FEB            NUMBER(8),
  JOB_PROFILE_MAR            NUMBER(8),
  JOB_PROFILE_APR            NUMBER(8),
  JOB_PROFILE_MAY            NUMBER(8),
  JOB_PROFILE_JUN            NUMBER(8),
  JOB_PROFILE_JUL            NUMBER(8),
  JOB_PROFILE_AUG            NUMBER(8),
  JOB_PROFILE_SEP            NUMBER(8),
  JOB_PROFILE_OCT            NUMBER(8),
  JOB_PROFILE_NOV            NUMBER(8),
  JOB_PROFILE_DEC            NUMBER(8),
  JOB_SEA_SURFACE            NUMBER(8),
  JOB_MIXED_LAYER            NUMBER(8),
  JOB_SPECIES_BALEEN         NUMBER(8),
  JOB_SPECIES_DOLPHINS       NUMBER(8),
  JOB_SPECIES_PORPOISES      NUMBER(8),
  JOB_SPECIES_HAZARDS        NUMBER(8),
  JOB_SPECIES_STINGING       NUMBER(8),
  JOB_SPECIES_TOOTHED        NUMBER(8),
  JOB_SPECIES_REVERBERATORS  NUMBER(8),
  JOB_PADS                   NUMBER(8),
  JOB_HITS                   NUMBER(8),
  JOB_AMBIENT_OMNI           NUMBER(8),
  LATITUDE                   NUMBER(12,3),
  LONGITUDE                  NUMBER(12,3),
  DATATYPE                   VARCHAR2(20 BYTE)  DEFAULT 'GENERIC'
)
COLUMN LOCATION NOT SUBSTITUTABLE AT ALL LEVELS
VARRAY "LOCATION"."SDO_ELEM_INFO" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
VARRAY "LOCATION"."SDO_ORDINATES" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          5M
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MASTER_GRID_L1 CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MASTER_GRID_L1
(
  DBDBV_DEPTH                NUMBER(8,2),
  LOCATION                   MDSYS.SDO_GEOMETRY,
  GRID_INDEX                 NUMBER(8),
  JOB_PROFILE_JAN            NUMBER(8),
  JOB_PROFILE_FEB            NUMBER(8),
  JOB_PROFILE_MAR            NUMBER(8),
  JOB_PROFILE_APR            NUMBER(8),
  JOB_PROFILE_MAY            NUMBER(8),
  JOB_PROFILE_JUN            NUMBER(8),
  JOB_PROFILE_JUL            NUMBER(8),
  JOB_PROFILE_AUG            NUMBER(8),
  JOB_PROFILE_SEP            NUMBER(8),
  JOB_PROFILE_OCT            NUMBER(8),
  JOB_PROFILE_NOV            NUMBER(8),
  JOB_PROFILE_DEC            NUMBER(8),
  JOB_SEA_SURFACE            NUMBER(8),
  JOB_MIXED_LAYER            NUMBER(8),
  JOB_SPECIES_BALEEN         NUMBER(8),
  JOB_SPECIES_DOLPHINS       NUMBER(8),
  JOB_SPECIES_HAZARDS        NUMBER(8),
  JOB_SPECIES_STINGING       NUMBER(8),
  JOB_SPECIES_TOOTHED        NUMBER(8),
  JOB_SPECIES_REVERBERATORS  NUMBER(8),
  JOB_PADS                   NUMBER(8),
  JOB_HITS                   NUMBER(8),
  JOB_AMBIENT_OMNI           NUMBER(8),
  LATITUDE                   NUMBER(12,3),
  LONGITUDE                  NUMBER(12,3),
  JOB_SPECIES_PORPOISE       NUMBER(8),
  JOB_SPECIES_BEAKED         NUMBER(8),
  DATATYPE                   VARCHAR2(20 BYTE)  DEFAULT 'GENERIC'
)
COLUMN LOCATION NOT SUBSTITUTABLE AT ALL LEVELS
VARRAY "LOCATION"."SDO_ELEM_INFO" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
VARRAY "LOCATION"."SDO_ORDINATES" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          5504K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MASTER_GRID_L2 CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MASTER_GRID_L2
(
  DBDBV_DEPTH                NUMBER(8,2),
  LOCATION                   MDSYS.SDO_GEOMETRY,
  GRID_INDEX                 NUMBER(8),
  JOB_PROFILE_JAN            NUMBER(8),
  JOB_PROFILE_FEB            NUMBER(8),
  JOB_PROFILE_MAR            NUMBER(8),
  JOB_PROFILE_APR            NUMBER(8),
  JOB_PROFILE_MAY            NUMBER(8),
  JOB_PROFILE_JUN            NUMBER(8),
  JOB_PROFILE_JUL            NUMBER(8),
  JOB_PROFILE_AUG            NUMBER(8),
  JOB_PROFILE_SEP            NUMBER(8),
  JOB_PROFILE_OCT            NUMBER(8),
  JOB_PROFILE_NOV            NUMBER(8),
  JOB_PROFILE_DEC            NUMBER(8),
  JOB_SEA_SURFACE            NUMBER(8),
  JOB_MIXED_LAYER            NUMBER(8),
  JOB_SPECIES_BALEEN         NUMBER(8),
  JOB_SPECIES_DOLPHINS       NUMBER(8),
  JOB_SPECIES_PORPOISES      NUMBER(8),
  JOB_SPECIES_HAZARDS        NUMBER(8),
  JOB_SPECIES_STINGING       NUMBER(8),
  JOB_SPECIES_TOOTHED        NUMBER(8),
  JOB_SPECIES_REVERBERATORS  NUMBER(8),
  JOB_PADS                   NUMBER(8),
  JOB_HITS                   NUMBER(8),
  JOB_AMBIENT_OMNI           NUMBER(8),
  LATITUDE                   NUMBER(12,3),
  LONGITUDE                  NUMBER(12,3),
  DATATYPE                   VARCHAR2(20 BYTE)  DEFAULT 'GENERIC'
)
COLUMN LOCATION NOT SUBSTITUTABLE AT ALL LEVELS
VARRAY "LOCATION"."SDO_ELEM_INFO" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
VARRAY "LOCATION"."SDO_ORDINATES" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          25M
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MASTER_GRID_L4 CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MASTER_GRID_L4
(
  DBDBV_DEPTH                NUMBER(8,2),
  LOCATION                   MDSYS.SDO_GEOMETRY,
  GRID_INDEX                 NUMBER(8),
  JOB_PROFILE_JAN            NUMBER(8),
  JOB_PROFILE_FEB            NUMBER(8),
  JOB_PROFILE_MAR            NUMBER(8),
  JOB_PROFILE_APR            NUMBER(8),
  JOB_PROFILE_MAY            NUMBER(8),
  JOB_PROFILE_JUN            NUMBER(8),
  JOB_PROFILE_JUL            NUMBER(8),
  JOB_PROFILE_AUG            NUMBER(8),
  JOB_PROFILE_SEP            NUMBER(8),
  JOB_PROFILE_OCT            NUMBER(8),
  JOB_PROFILE_NOV            NUMBER(8),
  JOB_PROFILE_DEC            NUMBER(8),
  JOB_SEA_SURFACE            NUMBER(8),
  JOB_MIXED_LAYER            NUMBER(8),
  JOB_SPECIES_BALEEN         NUMBER(8),
  JOB_SPECIES_DOLPHINS       NUMBER(8),
  JOB_SPECIES_PORPOISES      NUMBER(8),
  JOB_SPECIES_HAZARDS        NUMBER(8),
  JOB_SPECIES_STINGING       NUMBER(8),
  JOB_SPECIES_TOOTHED        NUMBER(8),
  JOB_SPECIES_REVERBERATORS  NUMBER(8),
  JOB_PADS                   NUMBER(8),
  JOB_HITS                   NUMBER(8),
  JOB_AMBIENT_OMNI           NUMBER(8),
  LATITUDE                   NUMBER(12,3),
  LONGITUDE                  NUMBER(12,3),
  DATATYPE                   VARCHAR2(20 BYTE)  DEFAULT 'GENERIC'
)
COLUMN LOCATION NOT SUBSTITUTABLE AT ALL LEVELS
VARRAY "LOCATION"."SDO_ELEM_INFO" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
VARRAY "LOCATION"."SDO_ORDINATES" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          90M
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MDQT_55E9A$ CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MDQT_55E9A$
(
  SDO_GROUPCODE  RAW(14),
  SDO_ROWID      ROWID,
  SDO_CODE       RAW(14),
  SDO_STATUS     VARCHAR2(1 BYTE)
)
TABLESPACE INDX
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MDRT_1DDC5$ CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MDRT_1DDC5$
(
  NODE_ID     NUMBER,
  NODE_LEVEL  NUMBER,
  INFO        BLOB
)
LOB (INFO) STORE AS (
  TABLESPACE USERS
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  NOCACHE
  LOGGING
  INDEX       (
        TABLESPACE USERS
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    2
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MDRT_1DDD1$ CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MDRT_1DDD1$
(
  NODE_ID     NUMBER,
  NODE_LEVEL  NUMBER,
  INFO        BLOB
)
LOB (INFO) STORE AS (
  TABLESPACE USERS
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  NOCACHE
  LOGGING
  INDEX       (
        TABLESPACE USERS
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    2
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MDRT_1DDDD$ CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MDRT_1DDDD$
(
  NODE_ID     NUMBER,
  NODE_LEVEL  NUMBER,
  INFO        BLOB
)
LOB (INFO) STORE AS (
  TABLESPACE USERS
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  NOCACHE
  LOGGING
  INDEX       (
        TABLESPACE USERS
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    2
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MDRT_1DDEC$ CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MDRT_1DDEC$
(
  NODE_ID     NUMBER,
  NODE_LEVEL  NUMBER,
  INFO        BLOB
)
LOB (INFO) STORE AS (
  TABLESPACE USERS
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  NOCACHE
  LOGGING
  INDEX       (
        TABLESPACE USERS
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    2
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MDRT_1DE18$ CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MDRT_1DE18$
(
  NODE_ID     NUMBER,
  NODE_LEVEL  NUMBER,
  INFO        BLOB
)
LOB (INFO) STORE AS (
  TABLESPACE USERS
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  NOCACHE
  LOGGING
  INDEX       (
        TABLESPACE USERS
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    2
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MDRT_1DE23$ CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MDRT_1DE23$
(
  NODE_ID     NUMBER,
  NODE_LEVEL  NUMBER,
  INFO        BLOB
)
LOB (INFO) STORE AS (
  TABLESPACE USERS
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  NOCACHE
  LOGGING
  INDEX       (
        TABLESPACE USERS
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    2
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MDRT_1DE2E$ CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MDRT_1DE2E$
(
  NODE_ID     NUMBER,
  NODE_LEVEL  NUMBER,
  INFO        BLOB
)
LOB (INFO) STORE AS (
  TABLESPACE USERS
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  NOCACHE
  LOGGING
  INDEX       (
        TABLESPACE USERS
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    2
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MDRT_1DE38$ CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MDRT_1DE38$
(
  NODE_ID     NUMBER,
  NODE_LEVEL  NUMBER,
  INFO        BLOB
)
LOB (INFO) STORE AS (
  TABLESPACE USERS
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  NOCACHE
  LOGGING
  INDEX       (
        TABLESPACE USERS
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    2
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MDRT_1DE43$ CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MDRT_1DE43$
(
  NODE_ID     NUMBER,
  NODE_LEVEL  NUMBER,
  INFO        BLOB
)
LOB (INFO) STORE AS (
  TABLESPACE USERS
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  NOCACHE
  LOGGING
  INDEX       (
        TABLESPACE USERS
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    2
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MDRT_1DE4E$ CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MDRT_1DE4E$
(
  NODE_ID     NUMBER,
  NODE_LEVEL  NUMBER,
  INFO        BLOB
)
LOB (INFO) STORE AS (
  TABLESPACE USERS
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  NOCACHE
  LOGGING
  INDEX       (
        TABLESPACE USERS
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    2
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MDRT_1DE59$ CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MDRT_1DE59$
(
  NODE_ID     NUMBER,
  NODE_LEVEL  NUMBER,
  INFO        BLOB
)
LOB (INFO) STORE AS (
  TABLESPACE USERS
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  NOCACHE
  LOGGING
  INDEX       (
        TABLESPACE USERS
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    2
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MDRT_1DE64$ CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MDRT_1DE64$
(
  NODE_ID     NUMBER,
  NODE_LEVEL  NUMBER,
  INFO        BLOB
)
LOB (INFO) STORE AS (
  TABLESPACE USERS
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  NOCACHE
  LOGGING
  INDEX       (
        TABLESPACE USERS
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    2
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MDRT_1DE6F$ CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MDRT_1DE6F$
(
  NODE_ID     NUMBER,
  NODE_LEVEL  NUMBER,
  INFO        BLOB
)
LOB (INFO) STORE AS (
  TABLESPACE USERS
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  NOCACHE
  LOGGING
  INDEX       (
        TABLESPACE USERS
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    2
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MDRT_1DE79$ CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MDRT_1DE79$
(
  NODE_ID     NUMBER,
  NODE_LEVEL  NUMBER,
  INFO        BLOB
)
LOB (INFO) STORE AS (
  TABLESPACE USERS
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  NOCACHE
  LOGGING
  INDEX       (
        TABLESPACE USERS
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    2
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MDRT_1DE83$ CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MDRT_1DE83$
(
  NODE_ID     NUMBER,
  NODE_LEVEL  NUMBER,
  INFO        BLOB
)
LOB (INFO) STORE AS (
  TABLESPACE USERS
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  NOCACHE
  LOGGING
  INDEX       (
        TABLESPACE USERS
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    2
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MDRT_1DE8E$ CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MDRT_1DE8E$
(
  NODE_ID     NUMBER,
  NODE_LEVEL  NUMBER,
  INFO        BLOB
)
LOB (INFO) STORE AS (
  TABLESPACE USERS
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  NOCACHE
  LOGGING
  INDEX       (
        TABLESPACE USERS
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    2
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MDRT_1DE98$ CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MDRT_1DE98$
(
  NODE_ID     NUMBER,
  NODE_LEVEL  NUMBER,
  INFO        BLOB
)
LOB (INFO) STORE AS (
  TABLESPACE USERS
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  NOCACHE
  LOGGING
  INDEX       (
        TABLESPACE USERS
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    2
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MDRT_1DEA0$ CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MDRT_1DEA0$
(
  NODE_ID     NUMBER,
  NODE_LEVEL  NUMBER,
  INFO        BLOB
)
LOB (INFO) STORE AS (
  TABLESPACE USERS
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  NOCACHE
  LOGGING
  INDEX       (
        TABLESPACE USERS
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    2
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MDRT_1DEAB$ CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MDRT_1DEAB$
(
  NODE_ID     NUMBER,
  NODE_LEVEL  NUMBER,
  INFO        BLOB
)
LOB (INFO) STORE AS (
  TABLESPACE USERS
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  NOCACHE
  LOGGING
  INDEX       (
        TABLESPACE USERS
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    2
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MDRT_1DEB5$ CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MDRT_1DEB5$
(
  NODE_ID     NUMBER,
  NODE_LEVEL  NUMBER,
  INFO        BLOB
)
LOB (INFO) STORE AS (
  TABLESPACE USERS
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  NOCACHE
  LOGGING
  INDEX       (
        TABLESPACE USERS
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    2
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MDRT_1DEBF$ CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MDRT_1DEBF$
(
  NODE_ID     NUMBER,
  NODE_LEVEL  NUMBER,
  INFO        BLOB
)
LOB (INFO) STORE AS (
  TABLESPACE USERS
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  NOCACHE
  LOGGING
  INDEX       (
        TABLESPACE USERS
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    2
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MDRT_1DEC9$ CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MDRT_1DEC9$
(
  NODE_ID     NUMBER,
  NODE_LEVEL  NUMBER,
  INFO        BLOB
)
LOB (INFO) STORE AS (
  TABLESPACE USERS
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  NOCACHE
  LOGGING
  INDEX       (
        TABLESPACE USERS
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    2
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MDRT_1DED1$ CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MDRT_1DED1$
(
  NODE_ID     NUMBER,
  NODE_LEVEL  NUMBER,
  INFO        BLOB
)
LOB (INFO) STORE AS (
  TABLESPACE USERS
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  NOCACHE
  LOGGING
  INDEX       (
        TABLESPACE USERS
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    2
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MDRT_1DEDC$ CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MDRT_1DEDC$
(
  NODE_ID     NUMBER,
  NODE_LEVEL  NUMBER,
  INFO        BLOB
)
LOB (INFO) STORE AS (
  TABLESPACE USERS
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  NOCACHE
  LOGGING
  INDEX       (
        TABLESPACE USERS
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    2
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MDRT_1DEE7$ CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MDRT_1DEE7$
(
  NODE_ID     NUMBER,
  NODE_LEVEL  NUMBER,
  INFO        BLOB
)
LOB (INFO) STORE AS (
  TABLESPACE USERS
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  NOCACHE
  LOGGING
  INDEX       (
        TABLESPACE USERS
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    2
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MDRT_1DEF1$ CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MDRT_1DEF1$
(
  NODE_ID     NUMBER,
  NODE_LEVEL  NUMBER,
  INFO        BLOB
)
LOB (INFO) STORE AS (
  TABLESPACE USERS
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  NOCACHE
  LOGGING
  INDEX       (
        TABLESPACE USERS
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    2
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MDRT_1DEFB$ CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MDRT_1DEFB$
(
  NODE_ID     NUMBER,
  NODE_LEVEL  NUMBER,
  INFO        BLOB
)
LOB (INFO) STORE AS (
  TABLESPACE USERS
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  NOCACHE
  LOGGING
  INDEX       (
        TABLESPACE USERS
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    2
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MDRT_1DF06$ CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MDRT_1DF06$
(
  NODE_ID     NUMBER,
  NODE_LEVEL  NUMBER,
  INFO        BLOB
)
LOB (INFO) STORE AS (
  TABLESPACE USERS
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  NOCACHE
  LOGGING
  INDEX       (
        TABLESPACE USERS
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    2
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MDRT_1DF11$ CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MDRT_1DF11$
(
  NODE_ID     NUMBER,
  NODE_LEVEL  NUMBER,
  INFO        BLOB
)
LOB (INFO) STORE AS (
  TABLESPACE USERS
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  NOCACHE
  LOGGING
  INDEX       (
        TABLESPACE USERS
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    2
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MDRT_1DF1C$ CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MDRT_1DF1C$
(
  NODE_ID     NUMBER,
  NODE_LEVEL  NUMBER,
  INFO        BLOB
)
LOB (INFO) STORE AS (
  TABLESPACE USERS
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  NOCACHE
  LOGGING
  INDEX       (
        TABLESPACE USERS
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    2
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MDRT_1DF26$ CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MDRT_1DF26$
(
  NODE_ID     NUMBER,
  NODE_LEVEL  NUMBER,
  INFO        BLOB
)
LOB (INFO) STORE AS (
  TABLESPACE USERS
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  NOCACHE
  LOGGING
  INDEX       (
        TABLESPACE USERS
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    2
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MDRT_1DF30$ CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MDRT_1DF30$
(
  NODE_ID     NUMBER,
  NODE_LEVEL  NUMBER,
  INFO        BLOB
)
LOB (INFO) STORE AS (
  TABLESPACE USERS
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  NOCACHE
  LOGGING
  INDEX       (
        TABLESPACE USERS
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    2
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MDRT_1DF3A$ CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MDRT_1DF3A$
(
  NODE_ID     NUMBER,
  NODE_LEVEL  NUMBER,
  INFO        BLOB
)
LOB (INFO) STORE AS (
  TABLESPACE USERS
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  NOCACHE
  LOGGING
  INDEX       (
        TABLESPACE USERS
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    2
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MDRT_1DF44$ CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MDRT_1DF44$
(
  NODE_ID     NUMBER,
  NODE_LEVEL  NUMBER,
  INFO        BLOB
)
LOB (INFO) STORE AS (
  TABLESPACE USERS
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  NOCACHE
  LOGGING
  INDEX       (
        TABLESPACE USERS
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    2
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MDRT_1DF4F$ CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MDRT_1DF4F$
(
  NODE_ID     NUMBER,
  NODE_LEVEL  NUMBER,
  INFO        BLOB
)
LOB (INFO) STORE AS (
  TABLESPACE USERS
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  NOCACHE
  LOGGING
  INDEX       (
        TABLESPACE USERS
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    2
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MDRT_1DF5A$ CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MDRT_1DF5A$
(
  NODE_ID     NUMBER,
  NODE_LEVEL  NUMBER,
  INFO        BLOB
)
LOB (INFO) STORE AS (
  TABLESPACE USERS
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  NOCACHE
  LOGGING
  INDEX       (
        TABLESPACE USERS
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    2
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MDRT_1DF62$ CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MDRT_1DF62$
(
  NODE_ID     NUMBER,
  NODE_LEVEL  NUMBER,
  INFO        BLOB
)
LOB (INFO) STORE AS (
  TABLESPACE USERS
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  NOCACHE
  LOGGING
  INDEX       (
        TABLESPACE USERS
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    2
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MDRT_1DF6D$ CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MDRT_1DF6D$
(
  NODE_ID     NUMBER,
  NODE_LEVEL  NUMBER,
  INFO        BLOB
)
LOB (INFO) STORE AS (
  TABLESPACE USERS
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  NOCACHE
  LOGGING
  INDEX       (
        TABLESPACE USERS
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    2
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MDRT_1DF78$ CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MDRT_1DF78$
(
  NODE_ID     NUMBER,
  NODE_LEVEL  NUMBER,
  INFO        BLOB
)
LOB (INFO) STORE AS (
  TABLESPACE USERS
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  NOCACHE
  LOGGING
  INDEX       (
        TABLESPACE USERS
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    2
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MDRT_1DF83$ CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MDRT_1DF83$
(
  NODE_ID     NUMBER,
  NODE_LEVEL  NUMBER,
  INFO        BLOB
)
LOB (INFO) STORE AS (
  TABLESPACE USERS
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  NOCACHE
  LOGGING
  INDEX       (
        TABLESPACE USERS
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    2
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MDRT_1DF8B$ CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MDRT_1DF8B$
(
  NODE_ID     NUMBER,
  NODE_LEVEL  NUMBER,
  INFO        BLOB
)
LOB (INFO) STORE AS (
  TABLESPACE USERS
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  NOCACHE
  LOGGING
  INDEX       (
        TABLESPACE USERS
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    2
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MDRT_1DF96$ CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MDRT_1DF96$
(
  NODE_ID     NUMBER,
  NODE_LEVEL  NUMBER,
  INFO        BLOB
)
LOB (INFO) STORE AS (
  TABLESPACE USERS
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  NOCACHE
  LOGGING
  INDEX       (
        TABLESPACE USERS
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    2
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MDRT_1DFA1$ CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MDRT_1DFA1$
(
  NODE_ID     NUMBER,
  NODE_LEVEL  NUMBER,
  INFO        BLOB
)
LOB (INFO) STORE AS (
  TABLESPACE USERS
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  NOCACHE
  LOGGING
  INDEX       (
        TABLESPACE USERS
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    2
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MDRT_1DFAC$ CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MDRT_1DFAC$
(
  NODE_ID     NUMBER,
  NODE_LEVEL  NUMBER,
  INFO        BLOB
)
LOB (INFO) STORE AS (
  TABLESPACE USERS
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  NOCACHE
  LOGGING
  INDEX       (
        TABLESPACE USERS
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    2
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MDRT_1DFB7$ CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MDRT_1DFB7$
(
  NODE_ID     NUMBER,
  NODE_LEVEL  NUMBER,
  INFO        BLOB
)
LOB (INFO) STORE AS (
  TABLESPACE USERS
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  NOCACHE
  LOGGING
  INDEX       (
        TABLESPACE USERS
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    2
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MDRT_1DFC3$ CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MDRT_1DFC3$
(
  NODE_ID     NUMBER,
  NODE_LEVEL  NUMBER,
  INFO        BLOB
)
LOB (INFO) STORE AS (
  TABLESPACE USERS
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  NOCACHE
  LOGGING
  INDEX       (
        TABLESPACE USERS
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    2
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MDRT_1DFDA$ CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MDRT_1DFDA$
(
  NODE_ID     NUMBER,
  NODE_LEVEL  NUMBER,
  INFO        BLOB
)
LOB (INFO) STORE AS (
  TABLESPACE USERS
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  NOCACHE
  LOGGING
  INDEX       (
        TABLESPACE USERS
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    2
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MDRT_1DFE5$ CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MDRT_1DFE5$
(
  NODE_ID     NUMBER,
  NODE_LEVEL  NUMBER,
  INFO        BLOB
)
LOB (INFO) STORE AS (
  TABLESPACE USERS
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  NOCACHE
  LOGGING
  INDEX       (
        TABLESPACE USERS
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    2
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MDRT_1DFF0$ CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MDRT_1DFF0$
(
  NODE_ID     NUMBER,
  NODE_LEVEL  NUMBER,
  INFO        BLOB
)
LOB (INFO) STORE AS (
  TABLESPACE USERS
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  NOCACHE
  LOGGING
  INDEX       (
        TABLESPACE USERS
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    2
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MDRT_1DFFB$ CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MDRT_1DFFB$
(
  NODE_ID     NUMBER,
  NODE_LEVEL  NUMBER,
  INFO        BLOB
)
LOB (INFO) STORE AS (
  TABLESPACE INDX
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  NOCACHE
  LOGGING
  INDEX       (
        TABLESPACE INDX
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE INDX
PCTUSED    0
PCTFREE    2
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MDRT_1E006$ CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MDRT_1E006$
(
  NODE_ID     NUMBER,
  NODE_LEVEL  NUMBER,
  INFO        BLOB
)
LOB (INFO) STORE AS (
  TABLESPACE INDX
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  NOCACHE
  LOGGING
  INDEX       (
        TABLESPACE INDX
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE INDX
PCTUSED    0
PCTFREE    2
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MDRT_1E011$ CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MDRT_1E011$
(
  NODE_ID     NUMBER,
  NODE_LEVEL  NUMBER,
  INFO        BLOB
)
LOB (INFO) STORE AS (
  TABLESPACE INDX
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  NOCACHE
  LOGGING
  INDEX       (
        TABLESPACE INDX
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE INDX
PCTUSED    0
PCTFREE    2
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MDRT_1E027$ CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MDRT_1E027$
(
  NODE_ID     NUMBER,
  NODE_LEVEL  NUMBER,
  INFO        BLOB
)
LOB (INFO) STORE AS (
  TABLESPACE INDX
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  NOCACHE
  LOGGING
  INDEX       (
        TABLESPACE INDX
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE INDX
PCTUSED    0
PCTFREE    2
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MEDS_ERRORS CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MEDS_ERRORS
(
  MEDS_ERROR_TYPE    NUMBER                     NOT NULL,
  ERROR_DESCRIPTION  VARCHAR2(64 BYTE)          NOT NULL
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MEDS_FLAGS CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MEDS_FLAGS
(
  FLAG_STATUS              NUMBER(1),
  AUTHOR                   VARCHAR2(100 BYTE),
  DATE_ENTERED             DATE,
  COMMENTS                 VARCHAR2(500 BYTE),
  CATEGORY                 VARCHAR2(20 BYTE),
  DATA_TYPE                VARCHAR2(50 BYTE),
  MEDS_JOB_NUMBER          NUMBER(10),
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  GRID_INDEX               NUMBER(10),
  GRID_RESOLUTION          NUMBER(2),
  GRID_TYPE                VARCHAR2(1 BYTE),
  GRID_TEMPORAL            VARCHAR2(10 BYTE),
  FLAGS_INDEX              NUMBER(10),
  LATITUDE                 NUMBER(12,6),
  LONGITUDE                NUMBER(12,6),
  FLAG_VALUE               VARCHAR2(100 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MEDS_FLAGS_ORIG CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MEDS_FLAGS_ORIG
(
  FLAG_STATUS              NUMBER(1),
  AUTHOR                   VARCHAR2(100 BYTE),
  DATE_ENTERED             DATE,
  COMMENTS                 VARCHAR2(500 BYTE),
  CATEGORY                 VARCHAR2(20 BYTE),
  DATA_TYPE                VARCHAR2(50 BYTE),
  MEDS_JOB_NUMBER          NUMBER(10),
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  GRID_INDEX               NUMBER(10),
  GRID_RESOLUTION          NUMBER(2),
  GRID_TYPE                VARCHAR2(1 BYTE),
  GRID_TEMPORAL            VARCHAR2(10 BYTE),
  FLAGS_INDEX              NUMBER(10),
  LATITUDE                 NUMBER(10),
  LONGITUDE                NUMBER(10),
  FLAG_VALUE               VARCHAR2(100 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MEDS_IPR CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MEDS_IPR
(
  MEDS_JOB_NUMBER  NUMBER(10),
  IPR_OWNER_TYPE   VARCHAR2(100 BYTE),
  IPR_PERIOD       DATE,
  IPR_OWNER        VARCHAR2(50 BYTE),
  RIGHTS           NUMBER(1),
  FOI_EXEMPT       NUMBER(1),
  FOI_DECLARE      NUMBER(1),
  CONFIDENTIALITY  NUMBER(1)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MEDS_JOB_ERROR CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MEDS_JOB_ERROR
(
  MEIC_NUMBER      NUMBER                       NOT NULL,
  MEDS_ERROR_TYPE  NUMBER                       NOT NULL,
  NUM_ERRORS       NUMBER                       NOT NULL
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


ALTER TABLE MEDSADMIN.MEDS_JOB_TYPE
 DROP PRIMARY KEY CASCADE;

DROP TABLE MEDSADMIN.MEDS_JOB_TYPE CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MEDS_JOB_TYPE
(
  JOB_TYPE_NUMBER  NUMBER,
  DESCRIPTION      VARCHAR2(32 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


ALTER TABLE MEDSADMIN.MEDS_PROCESSING_JOB
 DROP PRIMARY KEY CASCADE;

DROP TABLE MEDSADMIN.MEDS_PROCESSING_JOB CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MEDS_PROCESSING_JOB
(
  DATUM_TRANSFORMATION    VARCHAR2(50 BYTE),
  LOCAL_DATUM             VARCHAR2(50 BYTE),
  ARCHIVE_DATE            DATE,
  COMMENTS                VARCHAR2(500 BYTE),
  JOB_NUMBER              NUMBER(10)            NOT NULL,
  BOOKING_JOB             NUMBER(10),
  PROCESSOR               VARCHAR2(50 BYTE),
  DATE_OF_RECEIPT         DATE,
  DATA_TYPE               VARCHAR2(50 BYTE),
  PROTECTION              VARCHAR2(50 BYTE),
  CAVEAT                  VARCHAR2(50 BYTE),
  DESCRIPTOR              VARCHAR2(50 BYTE),
  IDO                     VARCHAR2(50 BYTE),
  DATA_QUALITY            VARCHAR2(50 BYTE),
  RELEASE_CONDITIONS      VARCHAR2(50 BYTE),
  OWNER_AUTHORITY_PREFIX  VARCHAR2(50 BYTE),
  ORIGINATOR              VARCHAR2(50 BYTE),
  INSTRUMENT_CODE         NUMBER(2),
  MEDS_SHIP_NUMBER        NUMBER(10),
  MEDS_CRUISE_NUMBER      NUMBER(10),
  DATA_USE_CODE           VARCHAR2(20 BYTE),
  MEIC_NUMBER             NUMBER(10)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          1408K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MEDS_ROWS_PER_JOB CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MEDS_ROWS_PER_JOB
(
  BOOKING_JOB  INTEGER,
  N_ROWS       INTEGER
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MLO_BIRDS_DATA CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MLO_BIRDS_DATA
(
  RECORD_NUMBER            NUMBER(6),
  COUNT_QUALITY            NUMBER(10),
  SPECIES                  VARCHAR2(100 BYTE),
  ID_QUALITY               NUMBER(8),
  SHIP                     VARCHAR2(50 BYTE),
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  MEDS_JOB_NUMBER          NUMBER(10),
  ARCHIVED                 VARCHAR2(25 BYTE),
  FILE_REFERENCE           VARCHAR2(100 BYTE),
  COMMENTS                 VARCHAR2(500 BYTE),
  COUNT                    VARCHAR2(20 BYTE),
  WD_DIR                   VARCHAR2(50 BYTE),
  WD_SPD                   VARCHAR2(50 BYTE),
  LATIN_NAME               VARCHAR2(50 BYTE),
  FAMILY                   VARCHAR2(50 BYTE),
  OBSERVER                 VARCHAR2(100 BYTE),
  SEASTATE                 VARCHAR2(100 BYTE),
  VISABILITY               VARCHAR2(100 BYTE),
  WEATHER                  VARCHAR2(50 BYTE),
  SHIP_ACTIVITY            VARCHAR2(100 BYTE),
  IMAGE_1                  VARCHAR2(50 BYTE),
  STATUS                   NUMBER(8),
  ASSOCIATION              VARCHAR2(100 BYTE),
  POSSIBLE_DUPLICATES      VARCHAR2(100 BYTE),
  ORDER_                   VARCHAR2(50 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MLO_BIRDS_OBSERVATION CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MLO_BIRDS_OBSERVATION
(
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  MEDS_JOB_NUMBER          NUMBER(10),
  LATITUDE                 NUMBER(12,6),
  LONGITUDE                NUMBER(12,6),
  LOCATION                 MDSYS.SDO_GEOMETRY,
  DATE_RECORDED            DATE
)
COLUMN LOCATION NOT SUBSTITUTABLE AT ALL LEVELS
VARRAY "LOCATION"."SDO_ELEM_INFO" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
VARRAY "LOCATION"."SDO_ORDINATES" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MLO_CETACEANS_DATA CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MLO_CETACEANS_DATA
(
  RECORD_NUMBER            NUMBER(6),
  COUNT                    VARCHAR2(10 BYTE),
  COUNT_QUALITY            NUMBER(10),
  SPECIES                  VARCHAR2(200 BYTE),
  ID_QUALITY               NUMBER(8),
  HEADING                  VARCHAR2(50 BYTE),
  COMMENTS                 VARCHAR2(600 BYTE),
  SST                      NUMBER(8,3),
  PISCES_GENUS             VARCHAR2(30 BYTE),
  SPEED                    NUMBER(8),
  REFERENCE                VARCHAR2(100 BYTE),
  SHIP                     VARCHAR2(50 BYTE),
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  MEDS_JOB_NUMBER          NUMBER(10),
  ARCHIVED                 VARCHAR2(25 BYTE),
  SIZE_CLASS               VARCHAR2(20 BYTE),
  MONTH                    NUMBER(4),
  PISCES_SPECIES           VARCHAR2(20 BYTE),
  SIZE_                    VARCHAR2(20 BYTE),
  MEIC                     VARCHAR2(20 BYTE),
  RANGE                    VARCHAR2(20 BYTE),
  BEARING                  VARCHAR2(20 BYTE),
  PERSON_NAME              VARCHAR2(100 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MLO_CETACEANS_ENVELOPE CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MLO_CETACEANS_ENVELOPE
(
  ENVELOPE           MDSYS.SDO_GEOMETRY,
  MEDS_JOB_NUMBER    NUMBER(10),
  MEDS_TRACK_NUMBER  NUMBER(10),
  NUM_OBS            NUMBER(10)                 DEFAULT 0
)
COLUMN ENVELOPE NOT SUBSTITUTABLE AT ALL LEVELS
VARRAY "ENVELOPE"."SDO_ELEM_INFO" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
VARRAY "ENVELOPE"."SDO_ORDINATES" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MLO_CETACEANS_OBSERVATION CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MLO_CETACEANS_OBSERVATION
(
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  MEDS_JOB_NUMBER          NUMBER(10),
  LATITUDE                 NUMBER(12,6),
  LONGITUDE                NUMBER(12,6),
  LOCATION                 MDSYS.SDO_GEOMETRY,
  DATE_RECORDED            DATE,
  MEDS_TRACK_NUMBER        NUMBER(10)           DEFAULT NULL
)
COLUMN LOCATION NOT SUBSTITUTABLE AT ALL LEVELS
VARRAY "LOCATION"."SDO_ELEM_INFO" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
VARRAY "LOCATION"."SDO_ORDINATES" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MLO_CETACEANS_TRACK CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MLO_CETACEANS_TRACK
(
  LOCATION             MDSYS.SDO_GEOMETRY,
  MEDS_JOB_NUMBER      NUMBER(10),
  MEDS_TRACK_NUMBER    NUMBER(10),
  LONGITUDE_START      NUMBER(20,10),
  LATITUDE_START       NUMBER(20,10),
  DATE_RECORDED_START  DATE,
  OFFSET_START         NUMBER(20,10),
  LONGITUDE_END        NUMBER(20,10),
  LATITUDE_END         NUMBER(20,10),
  DATE_RECORDED_END    DATE,
  OFFSET_END           NUMBER(20,10),
  SHIP                 VARCHAR2(50 BYTE),
  NUM_OBS              NUMBER(10)               DEFAULT 0,
  MONITORING_TYPE      VARCHAR2(1 BYTE)         DEFAULT 'V',
  PERIOD_OF_SONAR      NUMBER(10)               DEFAULT NULL,
  SEA_STATE            NUMBER(10)               DEFAULT NULL,
  WIND_SPEED           NUMBER(10)               DEFAULT NULL,
  SOUND_SOURCE         VARCHAR2(50 BYTE)        DEFAULT NULL
)
COLUMN LOCATION NOT SUBSTITUTABLE AT ALL LEVELS
VARRAY "LOCATION"."SDO_ELEM_INFO" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
VARRAY "LOCATION"."SDO_ORDINATES" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MLO_COLUMNS CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MLO_COLUMNS
(
  TABLE_NAME   VARCHAR2(30 BYTE)                NOT NULL,
  COLUMN_NAME  VARCHAR2(30 BYTE)                NOT NULL,
  EDIT_ORDER   NUMBER,
  MANDATORY    NUMBER
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MLO_DATA_TYPE CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MLO_DATA_TYPE
(
  DATA_TYPE             VARCHAR2(32 BYTE),
  PROCESSING_JOB_TYPE   VARCHAR2(50 BYTE),
  VARIABLE_COLUMN_NAME  VARCHAR2(32 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MLO_FISH_DATA CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MLO_FISH_DATA
(
  RECORD_NUMBER            NUMBER(6),
  COUNT                    VARCHAR2(10 BYTE),
  SPECIES                  VARCHAR2(50 BYTE),
  ID_QUALITY               NUMBER(8),
  HEADING                  VARCHAR2(50 BYTE),
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  MEDS_JOB_NUMBER          NUMBER(10),
  REFERENCE                VARCHAR2(100 BYTE),
  SHIP                     VARCHAR2(50 BYTE),
  ARCHIVED                 VARCHAR2(25 BYTE),
  COMMENTS                 VARCHAR2(500 BYTE),
  SIZE_                    VARCHAR2(50 BYTE),
  SPEED                    VARCHAR2(20 BYTE),
  MONTH                    VARCHAR2(20 BYTE),
  COUNT_QUALITY            VARCHAR2(20 BYTE),
  RANGE                    VARCHAR2(20 BYTE),
  BEARING                  VARCHAR2(20 BYTE),
  PERSON_NAME              VARCHAR2(100 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MLO_FISH_OBSERVATION CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MLO_FISH_OBSERVATION
(
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  MEDS_JOB_NUMBER          NUMBER(10),
  LATITUDE                 NUMBER(12,6),
  LONGITUDE                NUMBER(12,6),
  LOCATION                 MDSYS.SDO_GEOMETRY,
  DATE_RECORDED            DATE
)
COLUMN LOCATION NOT SUBSTITUTABLE AT ALL LEVELS
VARRAY "LOCATION"."SDO_ELEM_INFO" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
VARRAY "LOCATION"."SDO_ORDINATES" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MLO_JELLYFISH_DATA CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MLO_JELLYFISH_DATA
(
  RECORD_NUMBER            NUMBER(6),
  COUNT                    VARCHAR2(20 BYTE),
  SPECIES                  VARCHAR2(50 BYTE),
  HEADING                  VARCHAR2(50 BYTE),
  COMMENTS                 VARCHAR2(200 BYTE),
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  MEDS_JOB_NUMBER          NUMBER(10),
  REFERENCE                VARCHAR2(100 BYTE),
  SHIP                     VARCHAR2(50 BYTE),
  ARCHIVED                 VARCHAR2(25 BYTE),
  COUNT_QUALITY            VARCHAR2(20 BYTE),
  SPEED                    VARCHAR2(20 BYTE),
  ID_QUALITY               VARCHAR2(20 BYTE),
  SST                      VARCHAR2(20 BYTE),
  MONTH                    VARCHAR2(10 BYTE),
  SIZE_                    VARCHAR2(20 BYTE),
  BEARING                  VARCHAR2(20 BYTE),
  RANGE                    VARCHAR2(20 BYTE),
  PERSON_NAME              VARCHAR2(100 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MLO_JELLYFISH_OBSERVATION CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MLO_JELLYFISH_OBSERVATION
(
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  MEDS_JOB_NUMBER          NUMBER(10),
  LATITUDE                 NUMBER(12,6),
  LONGITUDE                NUMBER(12,6),
  LOCATION                 MDSYS.SDO_GEOMETRY,
  DATE_RECORDED            DATE
)
COLUMN LOCATION NOT SUBSTITUTABLE AT ALL LEVELS
VARRAY "LOCATION"."SDO_ELEM_INFO" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
VARRAY "LOCATION"."SDO_ORDINATES" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MLO_OTHERS_DATA CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MLO_OTHERS_DATA
(
  RECORD_NUMBER            NUMBER(6),
  COUNT                    VARCHAR2(10 BYTE),
  SPECIES                  VARCHAR2(500 BYTE),
  HEADING                  VARCHAR2(50 BYTE),
  COMMENTS                 VARCHAR2(200 BYTE),
  MEDS_JOB_NUMBER          NUMBER(10),
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  REFERENCE                VARCHAR2(100 BYTE),
  SHIP                     VARCHAR2(50 BYTE),
  ARCHIVED                 VARCHAR2(25 BYTE),
  MONTH                    VARCHAR2(20 BYTE),
  SIZE_                    VARCHAR2(20 BYTE),
  COUNT_QUALITY            VARCHAR2(20 BYTE),
  ID_QUALITY               VARCHAR2(20 BYTE),
  SPEED                    VARCHAR2(20 BYTE),
  SST                      VARCHAR2(20 BYTE),
  WD_DIR                   VARCHAR2(50 BYTE),
  WD_SPD                   VARCHAR2(50 BYTE),
  RANGE                    VARCHAR2(20 BYTE),
  BEARING                  VARCHAR2(20 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MLO_OTHERS_OBSERVATION CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MLO_OTHERS_OBSERVATION
(
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  MEDS_JOB_NUMBER          NUMBER(10),
  LATITUDE                 NUMBER(12,6),
  LONGITUDE                NUMBER(12,6),
  LOCATION                 MDSYS.SDO_GEOMETRY,
  DATE_RECORDED            DATE
)
COLUMN LOCATION NOT SUBSTITUTABLE AT ALL LEVELS
VARRAY "LOCATION"."SDO_ELEM_INFO" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
VARRAY "LOCATION"."SDO_ORDINATES" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MLO_PINNIPEDS_DATA CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MLO_PINNIPEDS_DATA
(
  RECORD_NUMBER            NUMBER(6),
  COUNT                    VARCHAR2(10 BYTE),
  HEADING                  VARCHAR2(50 BYTE),
  COMMENTS                 VARCHAR2(200 BYTE),
  SPECIES                  VARCHAR2(50 BYTE),
  REFERENCE                VARCHAR2(100 BYTE),
  SHIP                     VARCHAR2(50 BYTE),
  MEDS_JOB_NUMBER          NUMBER(10),
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  ARCHIVED                 VARCHAR2(25 BYTE),
  COUNT_QUALITY            VARCHAR2(20 BYTE),
  ID_QUALITY               VARCHAR2(20 BYTE),
  CODE                     VARCHAR2(10 BYTE),
  SPEED                    VARCHAR2(20 BYTE),
  SIZE_                    VARCHAR2(20 BYTE),
  MONTH                    VARCHAR2(10 BYTE),
  RANGE                    VARCHAR2(20 BYTE),
  BEARING                  VARCHAR2(20 BYTE),
  PERSON_NAME              VARCHAR2(100 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MLO_PINNIPEDS_OBSERVATION CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MLO_PINNIPEDS_OBSERVATION
(
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  MEDS_JOB_NUMBER          NUMBER(10),
  LATITUDE                 NUMBER(12,6),
  LONGITUDE                NUMBER(12,6),
  LOCATION                 MDSYS.SDO_GEOMETRY,
  DATE_RECORDED            DATE
)
COLUMN LOCATION NOT SUBSTITUTABLE AT ALL LEVELS
VARRAY "LOCATION"."SDO_ELEM_INFO" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
VARRAY "LOCATION"."SDO_ORDINATES" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MLO_REPTILES_DATA CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MLO_REPTILES_DATA
(
  RECORD_NUMBER            NUMBER(6),
  COUNT                    VARCHAR2(10 BYTE),
  SPECIES                  VARCHAR2(50 BYTE),
  HEADING                  VARCHAR2(50 BYTE),
  COMMENTS                 VARCHAR2(200 BYTE),
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  MEDS_JOB_NUMBER          NUMBER(10),
  REFERENCE                VARCHAR2(100 BYTE),
  SHIP                     VARCHAR2(50 BYTE),
  ARCHIVED                 VARCHAR2(25 BYTE),
  COUNT_QUALITY            VARCHAR2(20 BYTE),
  SIZE_                    VARCHAR2(20 BYTE),
  MONTH                    VARCHAR2(10 BYTE),
  ID_QUALITY               VARCHAR2(20 BYTE),
  SPEED                    VARCHAR2(20 BYTE),
  RANGE                    VARCHAR2(20 BYTE),
  BEARING                  VARCHAR2(20 BYTE),
  PERSON_NAME              VARCHAR2(100 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MLO_REPTILES_OBSERVATION CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MLO_REPTILES_OBSERVATION
(
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  MEDS_JOB_NUMBER          NUMBER(10),
  LATITUDE                 NUMBER(12,6),
  LONGITUDE                NUMBER(12,6),
  LOCATION                 MDSYS.SDO_GEOMETRY,
  DATE_RECORDED            DATE
)
COLUMN LOCATION NOT SUBSTITUTABLE AT ALL LEVELS
VARRAY "LOCATION"."SDO_ELEM_INFO" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
VARRAY "LOCATION"."SDO_ORDINATES" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MLO_SEABED_CONTACT_DATA CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MLO_SEABED_CONTACT_DATA
(
  MEDS_JOB_NUMBER             NUMBER(10),
  MEDS_OBSERVATION_NUMBER     NUMBER(10),
  DEPTH                       NUMBER(12,4),
  SHIP                        VARCHAR2(50 BYTE),
  REPORT_NO                   VARCHAR2(20 BYTE),
  PREVAILING_WEATHER          VARCHAR2(50 BYTE),
  BOTTOM_TYPE                 VARCHAR2(10 BYTE),
  BOTTOM_MATERIAL             VARCHAR2(50 BYTE),
  SOFTNESS_HS_P1              VARCHAR2(50 BYTE),
  SOFTNESS_S_P2               NUMBER(8),
  SLOPE                       VARCHAR2(50 BYTE),
  WRECKAGE_AND_DEBRIS         VARCHAR2(50 BYTE),
  MARINE_LIFE                 VARCHAR2(50 BYTE),
  MARINE_GROWTH               VARCHAR2(50 BYTE),
  VISIBILITY_AT_SEABED        VARCHAR2(50 BYTE),
  CONTACT_REFERENCE           VARCHAR2(20 BYTE),
  DIMENSIONS_LENGTH           NUMBER(10,4),
  DIMENSIONS_WIDTH            NUMBER(10,4),
  DIMENSIONS_HEIGHT           NUMBER(10,4),
  DESCRIPTION                 VARCHAR2(500 BYTE),
  GENERAL_LOCATION            VARCHAR2(50 BYTE),
  BOTTOM_MATERIAL_NO          NUMBER(10),
  VISIBILITY_AT_SEABED_DEPTH  NUMBER(12,4),
  DIMENSIONS_MEASURED         VARCHAR2(50 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;

COMMENT ON COLUMN MEDSADMIN.MLO_SEABED_CONTACT_DATA.MARINE_LIFE IS 'LOW=1-5 FISH; MEDIUM=6-20 FISH; HIGH=>20 FISH';

COMMENT ON COLUMN MEDSADMIN.MLO_SEABED_CONTACT_DATA.MARINE_GROWTH IS 'LOW=SLIGHT COVERING; MEDIUM=WELL COVERED BUT VISUAL ID POSSIBLE; HIGH=VERY DENSE VISUAL ID DIFFICULT';



DROP TABLE MEDSADMIN.MLO_SEABED_CONTACT_OBSERVATION CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MLO_SEABED_CONTACT_OBSERVATION
(
  LOCATION                 MDSYS.SDO_GEOMETRY,
  MEDS_JOB_NUMBER          NUMBER(10),
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  LATITUDE                 NUMBER(12,6),
  LONGITUDE                NUMBER(12,6),
  DATE_RECORDED            DATE
)
COLUMN LOCATION NOT SUBSTITUTABLE AT ALL LEVELS
VARRAY "LOCATION"."SDO_ELEM_INFO" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
VARRAY "LOCATION"."SDO_ORDINATES" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MLO_SHIP_DATA CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MLO_SHIP_DATA
(
  RECORD_NUMBER            NUMBER(6),
  COUNT                    VARCHAR2(10 BYTE),
  SHIP_TABLE               VARCHAR2(200 BYTE),
  HEADING                  VARCHAR2(50 BYTE),
  COMMENTS                 VARCHAR2(200 BYTE),
  CODE                     NUMBER(4),
  ACTIVITY                 VARCHAR2(200 BYTE),
  REFERENCE                VARCHAR2(100 BYTE),
  SHIP                     VARCHAR2(50 BYTE),
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  MEDS_JOB_NUMBER          NUMBER(10),
  ARCHIVED                 VARCHAR2(25 BYTE),
  SIZE_                    VARCHAR2(20 BYTE),
  MONTH                    VARCHAR2(20 BYTE),
  COUNT_QUALITY            VARCHAR2(20 BYTE),
  SPEED                    VARCHAR2(20 BYTE),
  SPARE_1                  VARCHAR2(20 BYTE),
  SPARE_2                  VARCHAR2(20 BYTE),
  SPARE_3                  VARCHAR2(20 BYTE),
  RANGE                    VARCHAR2(20 BYTE),
  BEARING                  VARCHAR2(20 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MLO_SHIP_OBSERVATION CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MLO_SHIP_OBSERVATION
(
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  MEDS_JOB_NUMBER          NUMBER(10),
  LATITUDE                 NUMBER(12,6),
  LONGITUDE                NUMBER(12,6),
  LOCATION                 MDSYS.SDO_GEOMETRY,
  DATE_RECORDED            DATE
)
COLUMN LOCATION NOT SUBSTITUTABLE AT ALL LEVELS
VARRAY "LOCATION"."SDO_ELEM_INFO" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
VARRAY "LOCATION"."SDO_ORDINATES" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MLO_SOSUS_DATA CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MLO_SOSUS_DATA
(
  RECORD_NUMBER            NUMBER(6),
  FILE_IDENTIFIER          NUMBER(8),
  TRACK_NAME               VARCHAR2(20 BYTE),
  TRACK_NUMBER             NUMBER(4),
  SPECIES                  VARCHAR2(20 BYTE),
  MONTH                    NUMBER(2),
  INCLINATION              NUMBER(3),
  MAJOR_AXIS               NUMBER(8,3),
  MINOR_AXIS               NUMBER(8,3),
  MEDS_JOB_NUMBER          NUMBER(10),
  MEDS_OBSERVATION_NUMBER  NUMBER(10)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MLO_SOSUS_OBSERVATION CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MLO_SOSUS_OBSERVATION
(
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  MEDS_JOB_NUMBER          NUMBER(10),
  LOCATION                 MDSYS.SDO_GEOMETRY,
  DATE_RECORDED            DATE,
  LATITUDE                 NUMBER(12,8),
  LONGITUDE                NUMBER(12,8)
)
COLUMN LOCATION NOT SUBSTITUTABLE AT ALL LEVELS
VARRAY "LOCATION"."SDO_ELEM_INFO" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
VARRAY "LOCATION"."SDO_ORDINATES" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.MONTH_LOOKUPS CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.MONTH_LOOKUPS
(
  MONTH_LONG   VARCHAR2(30 BYTE),
  MONTH_SHORT  VARCHAR2(3 BYTE),
  INT_MONTH    NUMBER(2),
  MAX_DAYS     NUMBER(2)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.OBSERVATION CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.OBSERVATION
(
  USER_NAME           CHAR(64 BYTE)             NOT NULL,
  JOB_NUMBER          INTEGER                   NOT NULL,
  OBSERVATION_NUMBER  INTEGER                   NOT NULL
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.OBSERVATIONS CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.OBSERVATIONS
(
  MEDS_JOB_NUMBER          INTEGER              NOT NULL,
  MEDS_OBSERVATION_NUMBER  INTEGER              NOT NULL
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.OCEAN_IMAGE_DATA CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.OCEAN_IMAGE_DATA
(
  IMAGE_ID                 VARCHAR2(20 BYTE),
  FEATURE_TYPE             VARCHAR2(100 BYTE),
  FEATURE_NAME             VARCHAR2(50 BYTE),
  OCEAN_AREA               VARCHAR2(50 BYTE),
  PARAMETER_OBSERVED       VARCHAR2(50 BYTE),
  SATELLITE                VARCHAR2(50 BYTE),
  IMAGE_SIZE               VARCHAR2(100 BYTE),
  IMAGE_CENTRE             VARCHAR2(100 BYTE),
  ORBIT_NUMBER             VARCHAR2(20 BYTE),
  SOURCE_OF_IMAGE          VARCHAR2(100 BYTE),
  STORGE_FORMAT            VARCHAR2(30 BYTE),
  ARCHIVE_DATE             DATE,
  ADDITION_INFORMATION     VARCHAR2(100 BYTE),
  FILE_REF                 VARCHAR2(500 BYTE),
  INSTRUMENT               VARCHAR2(50 BYTE),
  IMAGE_RESOLUTION         VARCHAR2(100 BYTE),
  MEDS_JOB_NUMBER          NUMBER(10),
  MEDS_OBSERVATION_NUMBER  NUMBER(10)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.OCEAN_IMAGE_OBSERVATION CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.OCEAN_IMAGE_OBSERVATION
(
  LOCATION                 MDSYS.SDO_GEOMETRY,
  OBSERVATION_DATE         DATE,
  MEDS_JOB_NUMBER          NUMBER(10),
  MEDS_OBSERVATION_NUMBER  NUMBER(10)
)
COLUMN LOCATION NOT SUBSTITUTABLE AT ALL LEVELS
VARRAY "LOCATION"."SDO_ELEM_INFO" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
VARRAY "LOCATION"."SDO_ORDINATES" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.OMNI_AMBIENT_DATA CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.OMNI_AMBIENT_DATA
(
  DEPTH                    VARCHAR2(20 BYTE),
  WAVE_HEIGHT              VARCHAR2(20 BYTE),
  WIND_SPEED               VARCHAR2(20 BYTE),
  OFP_NUMBER               VARCHAR2(20 BYTE),
  WIND_DIRECTION           VARCHAR2(20 BYTE),
  WAVE_DIRECTION           VARCHAR2(20 BYTE),
  SEA_STATE                VARCHAR2(20 BYTE),
  CONTACT_DENSITY          VARCHAR2(20 BYTE),
  S05_10                   VARCHAR2(100 BYTE),
  S20_50                   VARCHAR2(100 BYTE),
  CONTACT_DETAILS          VARCHAR2(100 BYTE),
  QC                       VARCHAR2(20 BYTE),
  RECORD_NUMBER            VARCHAR2(20 BYTE),
  COMMENTS                 VARCHAR2(200 BYTE),
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  MEDS_JOB_NUMBER          NUMBER(10),
  S00_05                   VARCHAR2(20 BYTE),
  S10_20                   VARCHAR2(10 BYTE),
  SHIP                     VARCHAR2(20 BYTE),
  COUNTRY                  VARCHAR2(20 BYTE),
  PLATFORM_TYPE            VARCHAR2(50 BYTE),
  MONTH                    VARCHAR2(20 BYTE),
  PRECIPITATION            VARCHAR2(50 BYTE),
  TIME                     VARCHAR2(25 BYTE),
  HZ_3_15                  NUMBER(15,6),
  HZ_4                     NUMBER(15,6),
  HZ_5                     NUMBER(15,6),
  HZ_6_3                   NUMBER(15,6),
  HZ_8                     NUMBER(15,6),
  HZ_10                    NUMBER(15,6),
  HZ_12_5                  NUMBER(15,6),
  HZ_16                    NUMBER(15,6),
  HZ_20                    NUMBER(15,6),
  HZ_25                    NUMBER(15,6),
  HZ_31_5                  NUMBER(15,6),
  HZ_40                    NUMBER(15,6),
  HZ_50                    NUMBER(15,6),
  HZ_55                    NUMBER(15,6),
  HZ_60                    NUMBER(15,6),
  HZ_63                    NUMBER(15,6),
  HZ_80                    NUMBER(15,6),
  HZ_100                   NUMBER(15,6),
  HZ_115                   NUMBER(15,6),
  HZ_120                   NUMBER(15,6),
  HZ_125                   NUMBER(15,6),
  HZ_135                   NUMBER(15,6),
  HZ_150                   NUMBER(15,6),
  HZ_155                   NUMBER(15,6),
  HZ_160                   NUMBER(15,6),
  HZ_200                   NUMBER(15,6),
  HZ_240                   NUMBER(15,6),
  HZ_248                   NUMBER(15,6),
  HZ_250                   NUMBER(15,6),
  HZ_300                   NUMBER(15,6),
  HZ_305                   NUMBER(15,6),
  HZ_315                   NUMBER(15,6),
  HZ_400                   NUMBER(15,6),
  HZ_440                   NUMBER(15,6),
  HZ_450                   NUMBER(15,6),
  HZ_500                   NUMBER(15,6),
  HZ_600                   NUMBER(15,6),
  HZ_605                   NUMBER(15,6),
  HZ_630                   NUMBER(15,6),
  HZ_660                   NUMBER(15,6),
  HZ_800                   NUMBER(15,6),
  HZ_850                   NUMBER(15,6),
  HZ_1000                  NUMBER(15,6),
  HZ_1150                  NUMBER(15,6),
  HZ_1205                  NUMBER(15,6),
  HZ_1250                  NUMBER(15,6),
  HZ_1500                  NUMBER(15,6),
  HZ_1600                  NUMBER(15,6),
  HZ_1700                  NUMBER(15,6),
  HZ_2000                  NUMBER(15,6),
  HZ_2400                  NUMBER(15,6),
  HZ_2500                  NUMBER(15,6),
  HZ_3150                  NUMBER(15,6),
  HZ_4000                  NUMBER(15,6),
  HZ_5000                  NUMBER(15,6),
  HZ_6300                  NUMBER(15,6),
  HZ_8000                  NUMBER(15,6),
  HZ_75                    NUMBER(15,6),
  BUOY_TYPE                VARCHAR2(20 BYTE),
  CHANNEL                  NUMBER(15,6),
  HZ_950                   NUMBER(15,6),
  HZ_174                   NUMBER(15,6),
  HZ_720                   NUMBER(15,6),
  HZ_900                   NUMBER(15,6),
  HZ_333                   NUMBER(15,6),
  HZ_650                   NUMBER(15,6),
  HZ_1800                  NUMBER(15,6),
  HZ_30                    NUMBER(15,6),
  HZ_750                   NUMBER(15,6),
  HZ_170                   NUMBER(15,6),
  HZ_172                   NUMBER(15,6),
  HZ_298                   NUMBER(15,6),
  HZ_480                   NUMBER(15,6),
  HZ_360                   NUMBER(15,6),
  HZ_540                   NUMBER(15,6),
  HZ_131                   NUMBER(15,6),
  HZ_49                    NUMBER(15,6),
  HZ_460                   NUMBER(15,6),
  HZ_640                   NUMBER(15,6),
  HZ_645                   NUMBER(15,6),
  HZ_295                   NUMBER(15,6),
  HZ_330                   NUMBER(15,6),
  HZ_110                   NUMBER(15,6),
  HZ_310                   NUMBER(15,6),
  HZ_1050                  NUMBER(15,6),
  HZ_90                    NUMBER(15,6),
  HZ_140                   NUMBER(15,6),
  HZ_29                    NUMBER(15,6),
  HZ_180                   NUMBER(15,6),
  HZ_105                   NUMBER(15,6),
  HZ_420                   NUMBER(15,6),
  HZ_290                   NUMBER(15,6),
  HZ_71                    NUMBER(15,6),
  HZ_368                   NUMBER(15,6),
  HZ_77                    NUMBER(15,6),
  HZ_145                   NUMBER(15,6),
  HZ_286                   NUMBER(15,6)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.OMNI_AMBIENT_OBSERVATION CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.OMNI_AMBIENT_OBSERVATION
(
  LATITUDE                 NUMBER(12,6),
  LONGITUDE                NUMBER(12,6),
  LOCATION                 MDSYS.SDO_GEOMETRY,
  DATE_RECORDED            DATE,
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  MEDS_JOB_NUMBER          NUMBER(10)
)
COLUMN LOCATION NOT SUBSTITUTABLE AT ALL LEVELS
VARRAY "LOCATION"."SDO_ELEM_INFO" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
VARRAY "LOCATION"."SDO_ORDINATES" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.ORIGINATOR_CODE CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.ORIGINATOR_CODE
(
  CODE         VARCHAR2(100 BYTE),
  DESCRIPTION  VARCHAR2(100 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.PRODUCTS_REGION_DATA CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.PRODUCTS_REGION_DATA
(
  LONG1                    NUMBER(12,3),
  LONG2                    NUMBER(12,3),
  LONG3                    NUMBER(12,3),
  LONG4                    NUMBER(12,3),
  LAT1                     NUMBER(12,3),
  LAT2                     NUMBER(12,3),
  LAT3                     NUMBER(12,3),
  LAT4                     NUMBER(12,3),
  WORKING_TITLE            VARCHAR2(100 BYTE),
  FINAL_TITLE              VARCHAR2(100 BYTE),
  TIME_PERIOD              VARCHAR2(50 BYTE),
  BRANCH                   VARCHAR2(20 BYTE),
  VARIANT                  VARCHAR2(20 BYTE),
  EDITION                  VARCHAR2(20 BYTE),
  CLASSIFICATION           VARCHAR2(20 BYTE),
  RELEASE_CONDITIONS       VARCHAR2(100 BYTE),
  SOFTCOPY                 VARCHAR2(3 BYTE),
  FORMAT                   VARCHAR2(20 BYTE),
  ENCRYPTION               VARCHAR2(3 BYTE),
  HARDCOPY                 VARCHAR2(3 BYTE),
  MEDS_JOB_NUMBER          NUMBER(10),
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  AGENCY                   VARCHAR2(20 BYTE),
  COMMENTS                 VARCHAR2(250 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.PRODUCTS_REGION_OBSERVATION CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.PRODUCTS_REGION_OBSERVATION
(
  LOCATION                 MDSYS.SDO_GEOMETRY,
  TYPE                     VARCHAR2(20 BYTE),
  STATUS_DATE              DATE,
  UKHO_ID                  VARCHAR2(20 BYTE),
  STATUS                   VARCHAR2(20 BYTE),
  ORIGIN                   VARCHAR2(20 BYTE),
  MEDS_JOB_NUMBER          NUMBER(10),
  MEDS_OBSERVATION_NUMBER  NUMBER(10)
)
COLUMN LOCATION NOT SUBSTITUTABLE AT ALL LEVELS
VARRAY "LOCATION"."SDO_ELEM_INFO" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
VARRAY "LOCATION"."SDO_ORDINATES" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.PROFILE_DATA_SV CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.PROFILE_DATA_SV
(
  DEPTH                    NUMBER(10,3),
  TEMPERATURE              NUMBER(10,3),
  SALINITY                 NUMBER(10,3),
  SV_RECORDED              NUMBER(10,3),
  MEDS_JOB_NUMBER          NUMBER(10),
  MEDS_OBSERVATION_NUMBER  NUMBER(8),
  SV_QUALITY               VARCHAR2(1 BYTE),
  D_QUALITY                VARCHAR2(1 BYTE),
  T_QUALITY                VARCHAR2(1 BYTE),
  S_QUALITY                VARCHAR2(1 BYTE),
  SV_CODE                  VARCHAR2(1 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          750M
            NEXT             750M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.PROFILE_DATA_TONLY CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.PROFILE_DATA_TONLY
(
  DEPTH                    NUMBER(10,3),
  TEMPERATURE              NUMBER(10,3),
  MEDS_JOB_NUMBER          NUMBER(10),
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  T_QUALITY                VARCHAR2(1 BYTE),
  D_QUALITY                VARCHAR2(1 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          750M
            NEXT             750M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.PROFILE_DATA_TS CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.PROFILE_DATA_TS
(
  DEPTH                    NUMBER(10,3),
  TEMPERATURE              NUMBER(10,3),
  SALINITY                 NUMBER(10,3),
  SV_CALCULATED            NUMBER(10,3),
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  MEDS_JOB_NUMBER          NUMBER(10),
  DEPTH_INDICATOR          VARCHAR2(1 BYTE),
  T_QUALITY                VARCHAR2(1 BYTE),
  SV_QUALITY               VARCHAR2(1 BYTE),
  S_QUALITY                VARCHAR2(1 BYTE),
  D_QUALITY                VARCHAR2(1 BYTE),
  SV_CODE                  VARCHAR2(1 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          750M
            NEXT             750M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


ALTER TABLE MEDSADMIN.PROFILE_HEADER_SV
 DROP PRIMARY KEY CASCADE;

DROP TABLE MEDSADMIN.PROFILE_HEADER_SV CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.PROFILE_HEADER_SV
(
  ADDITIONAL_POSN_REF      VARCHAR2(12 BYTE),
  LAND_CHECK               VARCHAR2(1 BYTE),
  HOOD_CRUISE_ID           VARCHAR2(8 BYTE),
  MEDS_OBSERVATION_NUMBER  NUMBER(8)            NOT NULL,
  MEDS_JOB_NUMBER          NUMBER(10)           NOT NULL,
  SV_CORR                  VARCHAR2(3 BYTE),
  T_CORR                   VARCHAR2(3 BYTE),
  S_CORR                   VARCHAR2(4 BYTE),
  D_CORR                   VARCHAR2(3 BYTE),
  HOOD_STATION_NUMBER      VARCHAR2(6 BYTE),
  WATER_COLOUR             VARCHAR2(2 BYTE),
  WATER_TRANS              VARCHAR2(2 BYTE),
  ATMOSPHERIC_PRESSURE     VARCHAR2(5 BYTE),
  CLOUD                    VARCHAR2(1 BYTE),
  DRY_AIR_TEMP             VARCHAR2(4 BYTE),
  SEA_STATE                VARCHAR2(1 BYTE),
  WAVE_HEIGHT              VARCHAR2(2 BYTE),
  WIND_SPEED               VARCHAR2(2 BYTE),
  WAVE_PERIOD              VARCHAR2(2 BYTE),
  WEATHER                  VARCHAR2(1 BYTE),
  WET_AIR_TEMP             VARCHAR2(4 BYTE),
  WIND_DIR                 VARCHAR2(2 BYTE),
  S_SCALE_CODE             VARCHAR2(1 BYTE),
  POSN_DETERMINATION       VARCHAR2(1 BYTE),
  POSN_ACCURACY_CODE       VARCHAR2(1 BYTE),
  DATA_METHOD              VARCHAR2(1 BYTE),
  DATA_MODE                VARCHAR2(1 BYTE),
  UNITS                    VARCHAR2(1 BYTE),
  DATA_TYPE                VARCHAR2(1 BYTE),
  DATA_IDENTIFIER          VARCHAR2(1 BYTE),
  FILE_FILLER              VARCHAR2(4 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          1M
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


ALTER TABLE MEDSADMIN.PROFILE_HEADER_TONLY
 DROP PRIMARY KEY CASCADE;

DROP TABLE MEDSADMIN.PROFILE_HEADER_TONLY CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.PROFILE_HEADER_TONLY
(
  ADDITIONAL_POSN_REF      VARCHAR2(12 BYTE),
  LAND_CHECK               VARCHAR2(1 BYTE),
  HOOD_CRUISE_ID           VARCHAR2(8 BYTE),
  MEDS_OBSERVATION_NUMBER  NUMBER(8)            NOT NULL,
  MEDS_JOB_NUMBER          NUMBER(10)           NOT NULL,
  WIND_SPEED               VARCHAR2(2 BYTE),
  WIND_DIR                 VARCHAR2(2 BYTE),
  WET_AIR_TEMP             VARCHAR2(4 BYTE),
  DRY_AIR_TEMP             VARCHAR2(4 BYTE),
  WAVE_HEIGHT              VARCHAR2(2 BYTE),
  WAVE_PERIOD              VARCHAR2(2 BYTE),
  BT_SST_REF               VARCHAR2(4 BYTE),
  D_CORR                   VARCHAR2(3 BYTE),
  T_CORR                   VARCHAR2(3 BYTE),
  ATMOSPHERIC_PRESSURE     VARCHAR2(5 BYTE),
  BT_SST_INSTRUMENT        VARCHAR2(1 BYTE),
  HOOD_STATION_NUMBER      VARCHAR2(6 BYTE),
  MBT_SURFACE_T_CORR       VARCHAR2(3 BYTE),
  WATER_TRANS              VARCHAR2(2 BYTE),
  WATER_COLOUR             VARCHAR2(2 BYTE),
  MBT_TYPE_QUALITY         VARCHAR2(1 BYTE),
  MBT_GRADE_QUALITY        VARCHAR2(1 BYTE),
  CLOUD                    VARCHAR2(1 BYTE),
  SEA_STATE                VARCHAR2(1 BYTE),
  WEATHER                  VARCHAR2(1 BYTE),
  S_SCALE_CODE             VARCHAR2(1 BYTE),
  POSN_DETERMINATION       VARCHAR2(1 BYTE),
  POSN_ACCURACY_CODE       VARCHAR2(1 BYTE),
  DATA_METHOD              VARCHAR2(1 BYTE),
  DATA_MODE                VARCHAR2(1 BYTE),
  UNITS                    VARCHAR2(1 BYTE),
  DATA_TYPE                VARCHAR2(1 BYTE),
  DATA_IDENTIFIER          VARCHAR2(1 BYTE),
  FILE_FILLER              VARCHAR2(4 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          71040K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


ALTER TABLE MEDSADMIN.PROFILE_HEADER_TS
 DROP PRIMARY KEY CASCADE;

DROP TABLE MEDSADMIN.PROFILE_HEADER_TS CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.PROFILE_HEADER_TS
(
  ADDITIONAL_POSN_REF      VARCHAR2(12 BYTE),
  LAND_CHECK               VARCHAR2(1 BYTE),
  HOOD_CRUISE_ID           VARCHAR2(8 BYTE),
  MEDS_OBSERVATION_NUMBER  NUMBER(8)            NOT NULL,
  MEDS_JOB_NUMBER          NUMBER(10)           NOT NULL,
  WEATHER                  VARCHAR2(1 BYTE),
  WIND_DIR                 VARCHAR2(2 BYTE),
  WIND_SPEED               VARCHAR2(2 BYTE),
  T_CORR                   VARCHAR2(3 BYTE),
  S_CORR                   VARCHAR2(4 BYTE),
  DRY_AIR_TEMP             VARCHAR2(4 BYTE),
  D_CORR                   VARCHAR2(3 BYTE),
  HOOD_STATION_NUMBER      VARCHAR2(6 BYTE),
  WET_AIR_TEMP             VARCHAR2(4 BYTE),
  SEA_STATE                VARCHAR2(1 BYTE),
  CLOUD                    VARCHAR2(1 BYTE),
  WATER_COLOUR             VARCHAR2(2 BYTE),
  WATER_TRANS              VARCHAR2(2 BYTE),
  WAVE_PERIOD              VARCHAR2(2 BYTE),
  SV_CORR                  VARCHAR2(3 BYTE),
  ATMOSPHERIC_PRESSURE     VARCHAR2(5 BYTE),
  WAVE_HEIGHT              VARCHAR2(2 BYTE),
  S_SCALE_CODE             VARCHAR2(1 BYTE),
  POSN_DETERMINATION       VARCHAR2(1 BYTE),
  POSN_ACCURACY_CODE       VARCHAR2(1 BYTE),
  DATA_METHOD              VARCHAR2(1 BYTE),
  DATA_MODE                VARCHAR2(1 BYTE),
  UNITS                    VARCHAR2(1 BYTE),
  DATA_TYPE                VARCHAR2(1 BYTE),
  DATA_IDENTIFIER          VARCHAR2(1 BYTE),
  FILE_FILLER              VARCHAR2(4 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          28800K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


ALTER TABLE MEDSADMIN.PROFILE_INDEX_SV
 DROP PRIMARY KEY CASCADE;

DROP TABLE MEDSADMIN.PROFILE_INDEX_SV CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.PROFILE_INDEX_SV
(
  COMMENTS                 VARCHAR2(640 BYTE),
  DATE_TIME                DATE,
  LOCATION                 MDSYS.SDO_GEOMETRY,
  MEDS_JOB_NUMBER          NUMBER(10),
  MEDS_CRUISE_NUMBER       NUMBER(8),
  INSTRUMENT_CODE          NUMBER(3),
  MEDS_OBSERVATION_NUMBER  NUMBER(8),
  OBSERVED_DEPTH           NUMBER(12,4),
  MINIMUM_DEPTH_LEVEL      NUMBER(12,4),
  MAXIMUM_DEPTH_LEVEL      NUMBER(12,4),
  NUMBER_OF_DEPTH_LEVELS   NUMBER(5),
  MARSDEN_SQUARE           NUMBER(8),
  QUADRANT                 NUMBER(2),
  DEGREE_SQURE             NUMBER(5),
  DUPLICATE_FLAG           NUMBER(1),
  YEAR                     NUMBER(4),
  NO_OF_COMMENTS           NUMBER(2),
  HOOD_ARCHIVE_YEAR        NUMBER(2),
  STRING_LOCATION          VARCHAR2(15 BYTE),
  LATITUDE                 NUMBER(12,4),
  LONGITUDE                NUMBER(12,4),
  MEDS_SHIP_NUMBER         NUMBER(10),
  MONTH                    NUMBER(2)
)
COLUMN LOCATION NOT SUBSTITUTABLE AT ALL LEVELS
VARRAY "LOCATION"."SDO_ELEM_INFO" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
VARRAY "LOCATION"."SDO_ORDINATES" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          8M
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


ALTER TABLE MEDSADMIN.PROFILE_INDEX_TONLY
 DROP PRIMARY KEY CASCADE;

DROP TABLE MEDSADMIN.PROFILE_INDEX_TONLY CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.PROFILE_INDEX_TONLY
(
  COMMENTS                 VARCHAR2(640 BYTE),
  DATE_TIME                DATE,
  LOCATION                 MDSYS.SDO_GEOMETRY,
  MEDS_JOB_NUMBER          NUMBER(10),
  MEDS_CRUISE_NUMBER       NUMBER(8),
  INSTRUMENT_CODE          NUMBER(3),
  MEDS_OBSERVATION_NUMBER  NUMBER(8),
  OBSERVED_DEPTH           NUMBER(12,4),
  MINIMUM_DEPTH_LEVEL      NUMBER(12,4),
  MAXIMUM_DEPTH_LEVEL      NUMBER(12,4),
  NUMBER_OF_DEPTH_LEVELS   NUMBER(5),
  MARSDEN_SQUARE           NUMBER(8),
  QUADRANT                 NUMBER(2),
  DEGREE_SQURE             NUMBER(5),
  DUPLICATE_FLAG           NUMBER(1),
  YEAR                     NUMBER(4),
  NO_OF_COMMENTS           NUMBER(2),
  HOOD_ARCHIVE_YEAR        NUMBER(2),
  STRING_LOCATION          VARCHAR2(15 BYTE),
  LATITUDE                 NUMBER(12,4),
  LONGITUDE                NUMBER(12,4),
  MEDS_SHIP_NUMBER         NUMBER(10),
  MONTH                    NUMBER(2)
)
COLUMN LOCATION NOT SUBSTITUTABLE AT ALL LEVELS
VARRAY "LOCATION"."SDO_ELEM_INFO" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
VARRAY "LOCATION"."SDO_ORDINATES" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          61056K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


ALTER TABLE MEDSADMIN.PROFILE_INDEX_TS
 DROP PRIMARY KEY CASCADE;

DROP TABLE MEDSADMIN.PROFILE_INDEX_TS CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.PROFILE_INDEX_TS
(
  COMMENTS                 VARCHAR2(640 BYTE),
  DATE_TIME                DATE,
  LOCATION                 MDSYS.SDO_GEOMETRY,
  MEDS_JOB_NUMBER          NUMBER(10),
  MEDS_CRUISE_NUMBER       NUMBER(8),
  INSTRUMENT_CODE          NUMBER(3),
  MEDS_OBSERVATION_NUMBER  NUMBER(8),
  OBSERVED_DEPTH           NUMBER(12,4),
  MINIMUM_DEPTH_LEVEL      NUMBER(12,4),
  MAXIMUM_DEPTH_LEVEL      NUMBER(12,4),
  NUMBER_OF_DEPTH_LEVELS   NUMBER(5),
  MARSDEN_SQUARE           NUMBER(8),
  QUADRANT                 NUMBER(2),
  DEGREE_SQURE             NUMBER(5),
  DUPLICATE_FLAG           NUMBER(1),
  YEAR                     NUMBER(4),
  NO_OF_COMMENTS           NUMBER(2),
  HOOD_ARCHIVE_YEAR        NUMBER(2),
  STRING_LOCATION          VARCHAR2(15 BYTE),
  LATITUDE                 NUMBER(12,4),
  LONGITUDE                NUMBER(12,4),
  MEDS_SHIP_NUMBER         NUMBER(10),
  MONTH                    NUMBER(2)
)
COLUMN LOCATION NOT SUBSTITUTABLE AT ALL LEVELS
VARRAY "LOCATION"."SDO_ELEM_INFO" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
VARRAY "LOCATION"."SDO_ORDINATES" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          27M
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.PROFILE_WATER_COLOUR_LOOKUP CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.PROFILE_WATER_COLOUR_LOOKUP
(
  PROFILE_ORIGINATOR          VARCHAR2(50 BYTE) DEFAULT NULL,
  PROFILE_FORE_ULE_SCALE      NUMBER(5)         DEFAULT NULL,
  PROFILE_COLOUR_H631A_SCALE  NUMBER(5)         DEFAULT NULL,
  PROFILE_COLOUR_H631A_NAME   VARCHAR2(50 BYTE) DEFAULT NULL
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.REPEAT_TABLES_LOOKUP CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.REPEAT_TABLES_LOOKUP
(
  DATA_TYPE_INDEX     NUMBER(8),
  REPEAT_TABLE_INDEX  NUMBER(8),
  INSERT_UPDATE       NUMBER(1),
  TABLE_NAME          VARCHAR2(50 BYTE),
  FILE_EXTENSION      VARCHAR2(20 BYTE),
  OFFSET              NUMBER(8),
  COUNT               NUMBER(8),
  REPEAT_INLINE       NUMBER(1),
  UPDATE_METHOD       NUMBER(1)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.REPRES_AMBIENTNOISE_D1 CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.REPRES_AMBIENTNOISE_D1
(
  GRID_INDEX              NUMBER(8),
  TIME_OF_YEAR            VARCHAR2(50 BYTE),
  FREQ_HZ                 NUMBER(8),
  MEAN                    NUMBER(10,3),
  NUMBER_OF_OBSERVATIONS  NUMBER(5),
  STANDARD_DEVIATION      NUMBER(9,3),
  MAXIMUM                 NUMBER(9,3),
  MINIMUM                 NUMBER(9,3),
  LATITUDE                NUMBER(12,3),
  LONGITUDE               NUMBER(12,3)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          4M
            NEXT             4M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.REPRES_IGPADS_L1 CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.REPRES_IGPADS_L1
(
  GRID_INDEX                  NUMBER(8),
  HZ_SHIPPING_NOISE           NUMBER(9,3),
  LOW_FREQUENCY_BOTTOM_LOSS   NUMBER(1),
  HIGH_FREQUENCY_BOTTOM_LOSS  NUMBER(1),
  LATITUDE                    NUMBER(12,3),
  LONGITUDE                   NUMBER(12,3)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          5M
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.REPRES_IGPADS_L2 CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.REPRES_IGPADS_L2
(
  GRID_INDEX                  NUMBER(8),
  HZ_SHIPPING_NOISE           NUMBER(9,3),
  LOW_FREQUENCY_BOTTOM_LOSS   NUMBER(1),
  HIGH_FREQUENCY_BOTTOM_LOSS  NUMBER(1),
  LATITUDE                    NUMBER(12,3),
  LONGITUDE                   NUMBER(12,3)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          5M
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.REPRES_MIXEDLAYER_D1 CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.REPRES_MIXEDLAYER_D1
(
  GRID_INDEX               NUMBER(8),
  MONTH_ID                 NUMBER(8),
  MEAN_MLD                 NUMBER(10,3),
  STANDARD_DEVIATION       NUMBER(10,3),
  MAXIMUM_MLD              NUMBER(10,3),
  MINIMUM_MLD              NUMBER(10,3),
  COEFFICIENT_VARIABILITY  NUMBER(10,3),
  NO_MLD                   NUMBER(10,3),
  NUMBER_OF_OBSERVATIONS   NUMBER(6),
  MODE_MLD                 NUMBER(10,3),
  LATITUDE                 NUMBER(12,3),
  LONGITUDE                NUMBER(12,3)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          4M
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.REPRES_MIXEDLAYER_L1 CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.REPRES_MIXEDLAYER_L1
(
  GRID_INDEX               NUMBER(8),
  MONTH_ID                 NUMBER(8),
  MEAN_MLD                 NUMBER(10,3),
  STANDARD_DEVIATION       NUMBER(10,3),
  MAXIMUM_MLD              NUMBER(10,3),
  MINIMUM_MLD              NUMBER(10,3),
  COEFFICIENT_VARIABILITY  NUMBER(10,3),
  NO_MLD                   NUMBER(10,3),
  NUMBER_OF_OBSERVATIONS   NUMBER(6),
  MODE_MLD                 NUMBER(10,3),
  LATITUDE                 NUMBER(12,3),
  LONGITUDE                NUMBER(12,3)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          4M
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.REPRES_MIXEDLAYER_L2 CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.REPRES_MIXEDLAYER_L2
(
  GRID_INDEX               NUMBER(8),
  MONTH_ID                 NUMBER(8),
  MEAN_MLD                 NUMBER(10,3),
  STANDARD_DEVIATION       NUMBER(10,3),
  MAXIMUM_MLD              NUMBER(10,3),
  MINIMUM_MLD              NUMBER(10,3),
  COEFFICIENT_VARIABILITY  NUMBER(10,3),
  NO_MLD                   NUMBER(10,3),
  NUMBER_OF_OBSERVATIONS   NUMBER(6),
  MODE_MLD                 NUMBER(10,3),
  LATITUDE                 NUMBER(12,3),
  LONGITUDE                NUMBER(12,3)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          4M
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.REPRES_PROFILE_L1_APR CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.REPRES_PROFILE_L1_APR
(
  GRID_INDEX      NUMBER(8),
  DEPTH           NUMBER(10,3),
  TEMPERATURE     NUMBER(10,3),
  SALINITY        NUMBER(10,3),
  SOUND_SPEED     NUMBER(10,3),
  SIGMA_T         NUMBER(10,3),
  LH_SALINITY     NUMBER(10,3),
  RH_SALINITY     NUMBER(10,3),
  LH_TEMPERATURE  NUMBER(10,3),
  RH_TEMPERATURE  NUMBER(10,3),
  RH_SIGMA_T      NUMBER(10,3),
  LH_SIGMA_T      NUMBER(10,3),
  RH_SOUND_SPEED  NUMBER(10,3),
  LH_SOUND_SPEED  NUMBER(10,3),
  LATITUDE        NUMBER(12,3),
  LONGITUDE       NUMBER(12,3),
  DATATYPE        VARCHAR2(20 BYTE)             DEFAULT 'GENERIC',
  TEMP_STDEV      NUMBER(10,3),
  SALINITY_STDEV  NUMBER(10,3)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          60M
            NEXT             5M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.REPRES_PROFILE_L1_AUG CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.REPRES_PROFILE_L1_AUG
(
  GRID_INDEX      NUMBER(8),
  DEPTH           NUMBER(10,3),
  TEMPERATURE     NUMBER(10,3),
  SALINITY        NUMBER(10,3),
  SOUND_SPEED     NUMBER(10,3),
  SIGMA_T         NUMBER(10,3),
  LH_SALINITY     NUMBER(10,3),
  RH_SALINITY     NUMBER(10,3),
  LH_TEMPERATURE  NUMBER(10,3),
  RH_TEMPERATURE  NUMBER(10,3),
  RH_SIGMA_T      NUMBER(10,3),
  LH_SIGMA_T      NUMBER(10,3),
  RH_SOUND_SPEED  NUMBER(10,3),
  LH_SOUND_SPEED  NUMBER(10,3),
  LATITUDE        NUMBER(12,3),
  LONGITUDE       NUMBER(12,3),
  DATATYPE        VARCHAR2(20 BYTE)             DEFAULT 'GENERIC',
  TEMP_STDEV      NUMBER(10,3),
  SALINITY_STDEV  NUMBER(10,3)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          60M
            NEXT             5M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.REPRES_PROFILE_L1_DEC CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.REPRES_PROFILE_L1_DEC
(
  GRID_INDEX      NUMBER(8),
  DEPTH           NUMBER(10,3),
  TEMPERATURE     NUMBER(10,3),
  SALINITY        NUMBER(10,3),
  SOUND_SPEED     NUMBER(10,3),
  SIGMA_T         NUMBER(10,3),
  LH_SALINITY     NUMBER(10,3),
  RH_SALINITY     NUMBER(10,3),
  LH_TEMPERATURE  NUMBER(10,3),
  RH_TEMPERATURE  NUMBER(10,3),
  RH_SIGMA_T      NUMBER(10,3),
  LH_SIGMA_T      NUMBER(10,3),
  RH_SOUND_SPEED  NUMBER(10,3),
  LH_SOUND_SPEED  NUMBER(10,3),
  LATITUDE        NUMBER(12,3),
  LONGITUDE       NUMBER(12,3),
  DATATYPE        VARCHAR2(20 BYTE)             DEFAULT 'GENERIC',
  TEMP_STDEV      NUMBER(10,3),
  SALINITY_STDEV  NUMBER(10,3)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          60M
            NEXT             5M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.REPRES_PROFILE_L1_FEB CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.REPRES_PROFILE_L1_FEB
(
  GRID_INDEX      NUMBER(8),
  DEPTH           NUMBER(10,3),
  TEMPERATURE     NUMBER(10,3),
  SALINITY        NUMBER(10,3),
  SOUND_SPEED     NUMBER(10,3),
  SIGMA_T         NUMBER(10,3),
  LH_SALINITY     NUMBER(10,3),
  RH_SALINITY     NUMBER(10,3),
  LH_TEMPERATURE  NUMBER(10,3),
  RH_TEMPERATURE  NUMBER(10,3),
  RH_SIGMA_T      NUMBER(10,3),
  LH_SIGMA_T      NUMBER(10,3),
  RH_SOUND_SPEED  NUMBER(10,3),
  LH_SOUND_SPEED  NUMBER(10,3),
  LATITUDE        NUMBER(12,3),
  LONGITUDE       NUMBER(12,3),
  DATATYPE        VARCHAR2(20 BYTE)             DEFAULT 'GENERIC',
  TEMP_STDEV      NUMBER(10,3),
  SALINITY_STDEV  NUMBER(10,3)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          60M
            NEXT             5M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.REPRES_PROFILE_L1_JAN CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.REPRES_PROFILE_L1_JAN
(
  GRID_INDEX      NUMBER(8),
  DEPTH           NUMBER(10,3),
  TEMPERATURE     NUMBER(10,3),
  SALINITY        NUMBER(10,3),
  SOUND_SPEED     NUMBER(10,3),
  SIGMA_T         NUMBER(10,3),
  LH_SALINITY     NUMBER(10,3),
  RH_SALINITY     NUMBER(10,3),
  LH_TEMPERATURE  NUMBER(10,3),
  RH_TEMPERATURE  NUMBER(10,3),
  RH_SIGMA_T      NUMBER(10,3),
  LH_SIGMA_T      NUMBER(10,3),
  RH_SOUND_SPEED  NUMBER(10,3),
  LH_SOUND_SPEED  NUMBER(10,3),
  LATITUDE        NUMBER(12,3),
  LONGITUDE       NUMBER(12,3),
  DATATYPE        VARCHAR2(20 BYTE)             DEFAULT 'GENERIC',
  TEMP_STDEV      NUMBER(10,3),
  SALINITY_STDEV  NUMBER(10,3)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          60M
            NEXT             5M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.REPRES_PROFILE_L1_JUL CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.REPRES_PROFILE_L1_JUL
(
  GRID_INDEX      NUMBER(8),
  DEPTH           NUMBER(10,3),
  TEMPERATURE     NUMBER(10,3),
  SALINITY        NUMBER(10,3),
  SOUND_SPEED     NUMBER(10,3),
  SIGMA_T         NUMBER(10,3),
  LH_SALINITY     NUMBER(10,3),
  RH_SALINITY     NUMBER(10,3),
  LH_TEMPERATURE  NUMBER(10,3),
  RH_TEMPERATURE  NUMBER(10,3),
  RH_SIGMA_T      NUMBER(10,3),
  LH_SIGMA_T      NUMBER(10,3),
  RH_SOUND_SPEED  NUMBER(10,3),
  LH_SOUND_SPEED  NUMBER(10,3),
  LATITUDE        NUMBER(12,3),
  LONGITUDE       NUMBER(12,3),
  DATATYPE        VARCHAR2(20 BYTE)             DEFAULT 'GENERIC',
  TEMP_STDEV      NUMBER(10,3),
  SALINITY_STDEV  NUMBER(10,3)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          60M
            NEXT             5M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.REPRES_PROFILE_L1_JUN CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.REPRES_PROFILE_L1_JUN
(
  GRID_INDEX      NUMBER(8),
  DEPTH           NUMBER(10,3),
  TEMPERATURE     NUMBER(10,3),
  SALINITY        NUMBER(10,3),
  SOUND_SPEED     NUMBER(10,3),
  SIGMA_T         NUMBER(10,3),
  LH_SALINITY     NUMBER(10,3),
  RH_SALINITY     NUMBER(10,3),
  LH_TEMPERATURE  NUMBER(10,3),
  RH_TEMPERATURE  NUMBER(10,3),
  RH_SIGMA_T      NUMBER(10,3),
  LH_SIGMA_T      NUMBER(10,3),
  RH_SOUND_SPEED  NUMBER(10,3),
  LH_SOUND_SPEED  NUMBER(10,3),
  LATITUDE        NUMBER(12,3),
  LONGITUDE       NUMBER(12,3),
  DATATYPE        VARCHAR2(20 BYTE)             DEFAULT 'GENERIC',
  TEMP_STDEV      NUMBER(10,3),
  SALINITY_STDEV  NUMBER(10,3)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          60M
            NEXT             5M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.REPRES_PROFILE_L1_MAR CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.REPRES_PROFILE_L1_MAR
(
  GRID_INDEX      NUMBER(8),
  DEPTH           NUMBER(10,3),
  TEMPERATURE     NUMBER(10,3),
  SALINITY        NUMBER(10,3),
  SOUND_SPEED     NUMBER(10,3),
  SIGMA_T         NUMBER(10,3),
  LH_SALINITY     NUMBER(10,3),
  RH_SALINITY     NUMBER(10,3),
  LH_TEMPERATURE  NUMBER(10,3),
  RH_TEMPERATURE  NUMBER(10,3),
  RH_SIGMA_T      NUMBER(10,3),
  LH_SIGMA_T      NUMBER(10,3),
  RH_SOUND_SPEED  NUMBER(10,3),
  LH_SOUND_SPEED  NUMBER(10,3),
  LATITUDE        NUMBER(12,3),
  LONGITUDE       NUMBER(12,3),
  DATATYPE        VARCHAR2(20 BYTE)             DEFAULT 'GENERIC',
  TEMP_STDEV      NUMBER(10,3),
  SALINITY_STDEV  NUMBER(10,3)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          60M
            NEXT             5M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.REPRES_PROFILE_L1_MAY CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.REPRES_PROFILE_L1_MAY
(
  GRID_INDEX      NUMBER(8),
  DEPTH           NUMBER(10,3),
  TEMPERATURE     NUMBER(10,3),
  SALINITY        NUMBER(10,3),
  SOUND_SPEED     NUMBER(10,3),
  SIGMA_T         NUMBER(10,3),
  LH_SALINITY     NUMBER(10,3),
  RH_SALINITY     NUMBER(10,3),
  LH_TEMPERATURE  NUMBER(10,3),
  RH_TEMPERATURE  NUMBER(10,3),
  RH_SIGMA_T      NUMBER(10,3),
  LH_SIGMA_T      NUMBER(10,3),
  RH_SOUND_SPEED  NUMBER(10,3),
  LH_SOUND_SPEED  NUMBER(10,3),
  LATITUDE        NUMBER(12,3),
  LONGITUDE       NUMBER(12,3),
  DATATYPE        VARCHAR2(20 BYTE)             DEFAULT 'GENERIC',
  TEMP_STDEV      NUMBER(10,3),
  SALINITY_STDEV  NUMBER(10,3)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          60M
            NEXT             5M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.REPRES_PROFILE_L1_NOV CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.REPRES_PROFILE_L1_NOV
(
  GRID_INDEX      NUMBER(8),
  DEPTH           NUMBER(10,3),
  TEMPERATURE     NUMBER(10,3),
  SALINITY        NUMBER(10,3),
  SOUND_SPEED     NUMBER(10,3),
  SIGMA_T         NUMBER(10,3),
  LH_SALINITY     NUMBER(10,3),
  RH_SALINITY     NUMBER(10,3),
  LH_TEMPERATURE  NUMBER(10,3),
  RH_TEMPERATURE  NUMBER(10,3),
  RH_SIGMA_T      NUMBER(10,3),
  LH_SIGMA_T      NUMBER(10,3),
  RH_SOUND_SPEED  NUMBER(10,3),
  LH_SOUND_SPEED  NUMBER(10,3),
  LATITUDE        NUMBER(12,3),
  LONGITUDE       NUMBER(12,3),
  DATATYPE        VARCHAR2(20 BYTE)             DEFAULT 'GENERIC',
  TEMP_STDEV      NUMBER(10,3),
  SALINITY_STDEV  NUMBER(10,3)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          60M
            NEXT             5M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.REPRES_PROFILE_L1_OCT CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.REPRES_PROFILE_L1_OCT
(
  GRID_INDEX      NUMBER(8),
  DEPTH           NUMBER(10,3),
  TEMPERATURE     NUMBER(10,3),
  SALINITY        NUMBER(10,3),
  SOUND_SPEED     NUMBER(10,3),
  SIGMA_T         NUMBER(10,3),
  LH_SALINITY     NUMBER(10,3),
  RH_SALINITY     NUMBER(10,3),
  LH_TEMPERATURE  NUMBER(10,3),
  RH_TEMPERATURE  NUMBER(10,3),
  RH_SIGMA_T      NUMBER(10,3),
  LH_SIGMA_T      NUMBER(10,3),
  RH_SOUND_SPEED  NUMBER(10,3),
  LH_SOUND_SPEED  NUMBER(10,3),
  LATITUDE        NUMBER(12,3),
  LONGITUDE       NUMBER(12,3),
  DATATYPE        VARCHAR2(20 BYTE)             DEFAULT 'GENERIC',
  TEMP_STDEV      NUMBER(10,3),
  SALINITY_STDEV  NUMBER(10,3)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          60M
            NEXT             5M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.REPRES_PROFILE_L1_SEP CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.REPRES_PROFILE_L1_SEP
(
  GRID_INDEX      NUMBER(8),
  DEPTH           NUMBER(10,3),
  TEMPERATURE     NUMBER(10,3),
  SALINITY        NUMBER(10,3),
  SOUND_SPEED     NUMBER(10,3),
  SIGMA_T         NUMBER(10,3),
  LH_SALINITY     NUMBER(10,3),
  RH_SALINITY     NUMBER(10,3),
  LH_TEMPERATURE  NUMBER(10,3),
  RH_TEMPERATURE  NUMBER(10,3),
  RH_SIGMA_T      NUMBER(10,3),
  LH_SIGMA_T      NUMBER(10,3),
  RH_SOUND_SPEED  NUMBER(10,3),
  LH_SOUND_SPEED  NUMBER(10,3),
  LATITUDE        NUMBER(12,3),
  LONGITUDE       NUMBER(12,3),
  DATATYPE        VARCHAR2(20 BYTE)             DEFAULT 'GENERIC',
  TEMP_STDEV      NUMBER(10,3),
  SALINITY_STDEV  NUMBER(10,3)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          60M
            NEXT             5M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.REPRES_PROFILE_L2_APR CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.REPRES_PROFILE_L2_APR
(
  GRID_INDEX      NUMBER(8),
  DEPTH           NUMBER(10,3),
  TEMPERATURE     NUMBER(10,3),
  SALINITY        NUMBER(10,3),
  SOUND_SPEED     NUMBER(10,3),
  SIGMA_T         NUMBER(10,3),
  LH_SALINITY     NUMBER(10,3),
  RH_SALINITY     NUMBER(10,3),
  LH_TEMPERATURE  NUMBER(10,3),
  RH_TEMPERATURE  NUMBER(10,3),
  RH_SIGMA_T      NUMBER(10,3),
  LH_SIGMA_T      NUMBER(10,3),
  RH_SOUND_SPEED  NUMBER(10,3),
  LH_SOUND_SPEED  NUMBER(10,3),
  LATITUDE        NUMBER(12,3),
  LONGITUDE       NUMBER(12,3),
  DATATYPE        VARCHAR2(20 BYTE)             DEFAULT 'GENERIC',
  TEMP_STDEV      NUMBER(10,3),
  SALINITY_STDEV  NUMBER(10,3)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          50M
            NEXT             5M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.REPRES_PROFILE_L2_AUG CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.REPRES_PROFILE_L2_AUG
(
  GRID_INDEX      NUMBER(8),
  DEPTH           NUMBER(10,3),
  TEMPERATURE     NUMBER(10,3),
  SALINITY        NUMBER(10,3),
  SOUND_SPEED     NUMBER(10,3),
  SIGMA_T         NUMBER(10,3),
  LH_SALINITY     NUMBER(10,3),
  RH_SALINITY     NUMBER(10,3),
  LH_TEMPERATURE  NUMBER(10,3),
  RH_TEMPERATURE  NUMBER(10,3),
  RH_SIGMA_T      NUMBER(10,3),
  LH_SIGMA_T      NUMBER(10,3),
  RH_SOUND_SPEED  NUMBER(10,3),
  LH_SOUND_SPEED  NUMBER(10,3),
  LATITUDE        NUMBER(12,3),
  LONGITUDE       NUMBER(12,3),
  DATATYPE        VARCHAR2(20 BYTE)             DEFAULT 'GENERIC',
  TEMP_STDEV      NUMBER(10,3),
  SALINITY_STDEV  NUMBER(10,3)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          50M
            NEXT             5M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.REPRES_PROFILE_L2_DEC CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.REPRES_PROFILE_L2_DEC
(
  GRID_INDEX      NUMBER(8),
  DEPTH           NUMBER(10,3),
  TEMPERATURE     NUMBER(10,3),
  SALINITY        NUMBER(10,3),
  SOUND_SPEED     NUMBER(10,3),
  SIGMA_T         NUMBER(10,3),
  LH_SALINITY     NUMBER(10,3),
  RH_SALINITY     NUMBER(10,3),
  LH_TEMPERATURE  NUMBER(10,3),
  RH_TEMPERATURE  NUMBER(10,3),
  RH_SIGMA_T      NUMBER(10,3),
  LH_SIGMA_T      NUMBER(10,3),
  RH_SOUND_SPEED  NUMBER(10,3),
  LH_SOUND_SPEED  NUMBER(10,3),
  LATITUDE        NUMBER(12,3),
  LONGITUDE       NUMBER(12,3),
  DATATYPE        VARCHAR2(20 BYTE)             DEFAULT 'GENERIC',
  TEMP_STDEV      NUMBER(10,3),
  SALINITY_STDEV  NUMBER(10,3)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          45M
            NEXT             5M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.REPRES_PROFILE_L2_FEB CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.REPRES_PROFILE_L2_FEB
(
  GRID_INDEX      NUMBER(8),
  DEPTH           NUMBER(10,3),
  TEMPERATURE     NUMBER(10,3),
  SALINITY        NUMBER(10,3),
  SOUND_SPEED     NUMBER(10,3),
  SIGMA_T         NUMBER(10,3),
  LH_SALINITY     NUMBER(10,3),
  RH_SALINITY     NUMBER(10,3),
  LH_TEMPERATURE  NUMBER(10,3),
  RH_TEMPERATURE  NUMBER(10,3),
  RH_SIGMA_T      NUMBER(10,3),
  LH_SIGMA_T      NUMBER(10,3),
  RH_SOUND_SPEED  NUMBER(10,3),
  LH_SOUND_SPEED  NUMBER(10,3),
  LATITUDE        NUMBER(12,3),
  LONGITUDE       NUMBER(12,3),
  DATATYPE        VARCHAR2(20 BYTE)             DEFAULT 'GENERIC',
  TEMP_STDEV      NUMBER(10,3),
  SALINITY_STDEV  NUMBER(10,3)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          50M
            NEXT             5M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.REPRES_PROFILE_L2_JAN CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.REPRES_PROFILE_L2_JAN
(
  GRID_INDEX      NUMBER(8),
  DEPTH           NUMBER(10,3),
  TEMPERATURE     NUMBER(10,3),
  SALINITY        NUMBER(10,3),
  SOUND_SPEED     NUMBER(10,3),
  SIGMA_T         NUMBER(10,3),
  LH_SALINITY     NUMBER(10,3),
  RH_SALINITY     NUMBER(10,3),
  LH_TEMPERATURE  NUMBER(10,3),
  RH_TEMPERATURE  NUMBER(10,3),
  RH_SIGMA_T      NUMBER(10,3),
  LH_SIGMA_T      NUMBER(10,3),
  RH_SOUND_SPEED  NUMBER(10,3),
  LH_SOUND_SPEED  NUMBER(10,3),
  LATITUDE        NUMBER(12,3),
  LONGITUDE       NUMBER(12,3),
  DATATYPE        VARCHAR2(20 BYTE)             DEFAULT 'GENERIC',
  TEMP_STDEV      NUMBER(10,3),
  SALINITY_STDEV  NUMBER(10,3)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          50M
            NEXT             5M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.REPRES_PROFILE_L2_JUL CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.REPRES_PROFILE_L2_JUL
(
  GRID_INDEX      NUMBER(8),
  DEPTH           NUMBER(10,3),
  TEMPERATURE     NUMBER(10,3),
  SALINITY        NUMBER(10,3),
  SOUND_SPEED     NUMBER(10,3),
  SIGMA_T         NUMBER(10,3),
  LH_SALINITY     NUMBER(10,3),
  RH_SALINITY     NUMBER(10,3),
  LH_TEMPERATURE  NUMBER(10,3),
  RH_TEMPERATURE  NUMBER(10,3),
  RH_SIGMA_T      NUMBER(10,3),
  LH_SIGMA_T      NUMBER(10,3),
  RH_SOUND_SPEED  NUMBER(10,3),
  LH_SOUND_SPEED  NUMBER(10,3),
  LATITUDE        NUMBER(12,3),
  LONGITUDE       NUMBER(12,3),
  DATATYPE        VARCHAR2(20 BYTE)             DEFAULT 'GENERIC',
  TEMP_STDEV      NUMBER(10,3),
  SALINITY_STDEV  NUMBER(10,3)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          50M
            NEXT             5M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.REPRES_PROFILE_L2_JUN CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.REPRES_PROFILE_L2_JUN
(
  GRID_INDEX      NUMBER(8),
  DEPTH           NUMBER(10,3),
  TEMPERATURE     NUMBER(10,3),
  SALINITY        NUMBER(10,3),
  SOUND_SPEED     NUMBER(10,3),
  SIGMA_T         NUMBER(10,3),
  LH_SALINITY     NUMBER(10,3),
  RH_SALINITY     NUMBER(10,3),
  LH_TEMPERATURE  NUMBER(10,3),
  RH_TEMPERATURE  NUMBER(10,3),
  RH_SIGMA_T      NUMBER(10,3),
  LH_SIGMA_T      NUMBER(10,3),
  RH_SOUND_SPEED  NUMBER(10,3),
  LH_SOUND_SPEED  NUMBER(10,3),
  LATITUDE        NUMBER(12,3),
  LONGITUDE       NUMBER(12,3),
  DATATYPE        VARCHAR2(20 BYTE)             DEFAULT 'GENERIC',
  TEMP_STDEV      NUMBER(10,3),
  SALINITY_STDEV  NUMBER(10,3)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          50M
            NEXT             5M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.REPRES_PROFILE_L2_MAR CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.REPRES_PROFILE_L2_MAR
(
  GRID_INDEX      NUMBER(8),
  DEPTH           NUMBER(10,3),
  TEMPERATURE     NUMBER(10,3),
  SALINITY        NUMBER(10,3),
  SOUND_SPEED     NUMBER(10,3),
  SIGMA_T         NUMBER(10,3),
  LH_SALINITY     NUMBER(10,3),
  RH_SALINITY     NUMBER(10,3),
  LH_TEMPERATURE  NUMBER(10,3),
  RH_TEMPERATURE  NUMBER(10,3),
  RH_SIGMA_T      NUMBER(10,3),
  LH_SIGMA_T      NUMBER(10,3),
  RH_SOUND_SPEED  NUMBER(10,3),
  LH_SOUND_SPEED  NUMBER(10,3),
  LATITUDE        NUMBER(12,3),
  LONGITUDE       NUMBER(12,3),
  DATATYPE        VARCHAR2(20 BYTE)             DEFAULT 'GENERIC',
  TEMP_STDEV      NUMBER(10,3),
  SALINITY_STDEV  NUMBER(10,3)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          50M
            NEXT             5M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.REPRES_PROFILE_L2_MAY CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.REPRES_PROFILE_L2_MAY
(
  GRID_INDEX      NUMBER(8),
  DEPTH           NUMBER(10,3),
  TEMPERATURE     NUMBER(10,3),
  SALINITY        NUMBER(10,3),
  SOUND_SPEED     NUMBER(10,3),
  SIGMA_T         NUMBER(10,3),
  LH_SALINITY     NUMBER(10,3),
  RH_SALINITY     NUMBER(10,3),
  LH_TEMPERATURE  NUMBER(10,3),
  RH_TEMPERATURE  NUMBER(10,3),
  RH_SIGMA_T      NUMBER(10,3),
  LH_SIGMA_T      NUMBER(10,3),
  RH_SOUND_SPEED  NUMBER(10,3),
  LH_SOUND_SPEED  NUMBER(10,3),
  LATITUDE        NUMBER(12,3),
  LONGITUDE       NUMBER(12,3),
  DATATYPE        VARCHAR2(20 BYTE)             DEFAULT 'GENERIC',
  TEMP_STDEV      NUMBER(10,3),
  SALINITY_STDEV  NUMBER(10,3)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          45M
            NEXT             5M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.REPRES_PROFILE_L2_NOV CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.REPRES_PROFILE_L2_NOV
(
  GRID_INDEX      NUMBER(8),
  DEPTH           NUMBER(10,3),
  TEMPERATURE     NUMBER(10,3),
  SALINITY        NUMBER(10,3),
  SOUND_SPEED     NUMBER(10,3),
  SIGMA_T         NUMBER(10,3),
  LH_SALINITY     NUMBER(10,3),
  RH_SALINITY     NUMBER(10,3),
  LH_TEMPERATURE  NUMBER(10,3),
  RH_TEMPERATURE  NUMBER(10,3),
  RH_SIGMA_T      NUMBER(10,3),
  LH_SIGMA_T      NUMBER(10,3),
  RH_SOUND_SPEED  NUMBER(10,3),
  LH_SOUND_SPEED  NUMBER(10,3),
  LATITUDE        NUMBER(12,3),
  LONGITUDE       NUMBER(12,3),
  DATATYPE        VARCHAR2(20 BYTE)             DEFAULT 'GENERIC',
  TEMP_STDEV      NUMBER(10,3),
  SALINITY_STDEV  NUMBER(10,3)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          50M
            NEXT             5M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.REPRES_PROFILE_L2_OCT CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.REPRES_PROFILE_L2_OCT
(
  GRID_INDEX      NUMBER(8),
  DEPTH           NUMBER(10,3),
  TEMPERATURE     NUMBER(10,3),
  SALINITY        NUMBER(10,3),
  SOUND_SPEED     NUMBER(10,3),
  SIGMA_T         NUMBER(10,3),
  LH_SALINITY     NUMBER(10,3),
  RH_SALINITY     NUMBER(10,3),
  LH_TEMPERATURE  NUMBER(10,3),
  RH_TEMPERATURE  NUMBER(10,3),
  RH_SIGMA_T      NUMBER(10,3),
  LH_SIGMA_T      NUMBER(10,3),
  RH_SOUND_SPEED  NUMBER(10,3),
  LH_SOUND_SPEED  NUMBER(10,3),
  LATITUDE        NUMBER(12,3),
  LONGITUDE       NUMBER(12,3),
  DATATYPE        VARCHAR2(20 BYTE)             DEFAULT 'GENERIC',
  TEMP_STDEV      NUMBER(10,3),
  SALINITY_STDEV  NUMBER(10,3)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          50M
            NEXT             5M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.REPRES_PROFILE_L2_SEP CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.REPRES_PROFILE_L2_SEP
(
  GRID_INDEX      NUMBER(8),
  DEPTH           NUMBER(10,3),
  TEMPERATURE     NUMBER(10,3),
  SALINITY        NUMBER(10,3),
  SOUND_SPEED     NUMBER(10,3),
  SIGMA_T         NUMBER(10,3),
  LH_SALINITY     NUMBER(10,3),
  RH_SALINITY     NUMBER(10,3),
  LH_TEMPERATURE  NUMBER(10,3),
  RH_TEMPERATURE  NUMBER(10,3),
  RH_SIGMA_T      NUMBER(10,3),
  LH_SIGMA_T      NUMBER(10,3),
  RH_SOUND_SPEED  NUMBER(10,3),
  LH_SOUND_SPEED  NUMBER(10,3),
  LATITUDE        NUMBER(12,3),
  LONGITUDE       NUMBER(12,3),
  DATATYPE        VARCHAR2(20 BYTE)             DEFAULT 'GENERIC',
  TEMP_STDEV      NUMBER(10,3),
  SALINITY_STDEV  NUMBER(10,3)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          50M
            NEXT             5M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.REPRES_PROFILE_L4_APR CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.REPRES_PROFILE_L4_APR
(
  GRID_INDEX      NUMBER(8),
  DEPTH           NUMBER(10,3),
  TEMPERATURE     NUMBER(10,3),
  SALINITY        NUMBER(10,3),
  SOUND_SPEED     NUMBER(10,3),
  SIGMA_T         NUMBER(10,3),
  LH_SALINITY     NUMBER(10,3),
  RH_SALINITY     NUMBER(10,3),
  LH_TEMPERATURE  NUMBER(10,3),
  RH_TEMPERATURE  NUMBER(10,3),
  RH_SIGMA_T      NUMBER(10,3),
  LH_SIGMA_T      NUMBER(10,3),
  RH_SOUND_SPEED  NUMBER(10,3),
  LH_SOUND_SPEED  NUMBER(10,3),
  LATITUDE        NUMBER(12,3),
  LONGITUDE       NUMBER(12,3),
  DATATYPE        VARCHAR2(20 BYTE)             DEFAULT 'GENERIC',
  TEMP_STDEV      NUMBER(10,3),
  SALINITY_STDEV  NUMBER(10,3)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          4M
            NEXT             10M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.REPRES_PROFILE_L4_AUG CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.REPRES_PROFILE_L4_AUG
(
  GRID_INDEX      NUMBER(8),
  DEPTH           NUMBER(10,3),
  TEMPERATURE     NUMBER(10,3),
  SALINITY        NUMBER(10,3),
  SOUND_SPEED     NUMBER(10,3),
  SIGMA_T         NUMBER(10,3),
  LH_SALINITY     NUMBER(10,3),
  RH_SALINITY     NUMBER(10,3),
  LH_TEMPERATURE  NUMBER(10,3),
  RH_TEMPERATURE  NUMBER(10,3),
  RH_SIGMA_T      NUMBER(10,3),
  LH_SIGMA_T      NUMBER(10,3),
  RH_SOUND_SPEED  NUMBER(10,3),
  LH_SOUND_SPEED  NUMBER(10,3),
  LATITUDE        NUMBER(12,3),
  LONGITUDE       NUMBER(12,3),
  DATATYPE        VARCHAR2(20 BYTE)             DEFAULT 'GENERIC',
  TEMP_STDEV      NUMBER(10,3),
  SALINITY_STDEV  NUMBER(10,3)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          4M
            NEXT             10M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.REPRES_PROFILE_L4_DEC CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.REPRES_PROFILE_L4_DEC
(
  GRID_INDEX      NUMBER(8),
  DEPTH           NUMBER(10,3),
  TEMPERATURE     NUMBER(10,3),
  SALINITY        NUMBER(10,3),
  SOUND_SPEED     NUMBER(10,3),
  SIGMA_T         NUMBER(10,3),
  LH_SALINITY     NUMBER(10,3),
  RH_SALINITY     NUMBER(10,3),
  LH_TEMPERATURE  NUMBER(10,3),
  RH_TEMPERATURE  NUMBER(10,3),
  RH_SIGMA_T      NUMBER(10,3),
  LH_SIGMA_T      NUMBER(10,3),
  RH_SOUND_SPEED  NUMBER(10,3),
  LH_SOUND_SPEED  NUMBER(10,3),
  LATITUDE        NUMBER(12,3),
  LONGITUDE       NUMBER(12,3),
  DATATYPE        VARCHAR2(20 BYTE)             DEFAULT 'GENERIC',
  TEMP_STDEV      NUMBER(10,3),
  SALINITY_STDEV  NUMBER(10,3)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          4M
            NEXT             10M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.REPRES_PROFILE_L4_FEB CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.REPRES_PROFILE_L4_FEB
(
  GRID_INDEX      NUMBER(8),
  DEPTH           NUMBER(10,3),
  TEMPERATURE     NUMBER(10,3),
  SALINITY        NUMBER(10,3),
  SOUND_SPEED     NUMBER(10,3),
  SIGMA_T         NUMBER(10,3),
  LH_SALINITY     NUMBER(10,3),
  RH_SALINITY     NUMBER(10,3),
  LH_TEMPERATURE  NUMBER(10,3),
  RH_TEMPERATURE  NUMBER(10,3),
  RH_SIGMA_T      NUMBER(10,3),
  LH_SIGMA_T      NUMBER(10,3),
  RH_SOUND_SPEED  NUMBER(10,3),
  LH_SOUND_SPEED  NUMBER(10,3),
  LATITUDE        NUMBER(12,3),
  LONGITUDE       NUMBER(12,3),
  DATATYPE        VARCHAR2(20 BYTE)             DEFAULT 'GENERIC',
  TEMP_STDEV      NUMBER(10,3),
  SALINITY_STDEV  NUMBER(10,3)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          4M
            NEXT             10M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.REPRES_PROFILE_L4_JAN CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.REPRES_PROFILE_L4_JAN
(
  GRID_INDEX      NUMBER(8),
  DEPTH           NUMBER(10,3),
  TEMPERATURE     NUMBER(10,3),
  SALINITY        NUMBER(10,3),
  SOUND_SPEED     NUMBER(10,3),
  SIGMA_T         NUMBER(10,3),
  LH_SALINITY     NUMBER(10,3),
  RH_SALINITY     NUMBER(10,3),
  LH_TEMPERATURE  NUMBER(10,3),
  RH_TEMPERATURE  NUMBER(10,3),
  RH_SIGMA_T      NUMBER(10,3),
  LH_SIGMA_T      NUMBER(10,3),
  RH_SOUND_SPEED  NUMBER(10,3),
  LH_SOUND_SPEED  NUMBER(10,3),
  LATITUDE        NUMBER(12,3),
  LONGITUDE       NUMBER(12,3),
  DATATYPE        VARCHAR2(20 BYTE)             DEFAULT 'GENERIC',
  TEMP_STDEV      NUMBER(10,3),
  SALINITY_STDEV  NUMBER(10,3)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          4M
            NEXT             10M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.REPRES_PROFILE_L4_JUL CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.REPRES_PROFILE_L4_JUL
(
  GRID_INDEX      NUMBER(8),
  DEPTH           NUMBER(10,3),
  TEMPERATURE     NUMBER(10,3),
  SALINITY        NUMBER(10,3),
  SOUND_SPEED     NUMBER(10,3),
  SIGMA_T         NUMBER(10,3),
  LH_SALINITY     NUMBER(10,3),
  RH_SALINITY     NUMBER(10,3),
  LH_TEMPERATURE  NUMBER(10,3),
  RH_TEMPERATURE  NUMBER(10,3),
  RH_SIGMA_T      NUMBER(10,3),
  LH_SIGMA_T      NUMBER(10,3),
  RH_SOUND_SPEED  NUMBER(10,3),
  LH_SOUND_SPEED  NUMBER(10,3),
  LATITUDE        NUMBER(12,3),
  LONGITUDE       NUMBER(12,3),
  DATATYPE        VARCHAR2(20 BYTE)             DEFAULT 'GENERIC',
  TEMP_STDEV      NUMBER(10,3),
  SALINITY_STDEV  NUMBER(10,3)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          4M
            NEXT             10M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.REPRES_PROFILE_L4_JUN CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.REPRES_PROFILE_L4_JUN
(
  GRID_INDEX      NUMBER(8),
  DEPTH           NUMBER(10,3),
  TEMPERATURE     NUMBER(10,3),
  SALINITY        NUMBER(10,3),
  SOUND_SPEED     NUMBER(10,3),
  SIGMA_T         NUMBER(10,3),
  LH_SALINITY     NUMBER(10,3),
  RH_SALINITY     NUMBER(10,3),
  LH_TEMPERATURE  NUMBER(10,3),
  RH_TEMPERATURE  NUMBER(10,3),
  RH_SIGMA_T      NUMBER(10,3),
  LH_SIGMA_T      NUMBER(10,3),
  RH_SOUND_SPEED  NUMBER(10,3),
  LH_SOUND_SPEED  NUMBER(10,3),
  LATITUDE        NUMBER(12,3),
  LONGITUDE       NUMBER(12,3),
  DATATYPE        VARCHAR2(20 BYTE)             DEFAULT 'GENERIC',
  TEMP_STDEV      NUMBER(10,3),
  SALINITY_STDEV  NUMBER(10,3)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          4M
            NEXT             10M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.REPRES_PROFILE_L4_MAR CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.REPRES_PROFILE_L4_MAR
(
  GRID_INDEX      NUMBER(8),
  DEPTH           NUMBER(10,3),
  TEMPERATURE     NUMBER(10,3),
  SALINITY        NUMBER(10,3),
  SOUND_SPEED     NUMBER(10,3),
  SIGMA_T         NUMBER(10,3),
  LH_SALINITY     NUMBER(10,3),
  RH_SALINITY     NUMBER(10,3),
  LH_TEMPERATURE  NUMBER(10,3),
  RH_TEMPERATURE  NUMBER(10,3),
  RH_SIGMA_T      NUMBER(10,3),
  LH_SIGMA_T      NUMBER(10,3),
  RH_SOUND_SPEED  NUMBER(10,3),
  LH_SOUND_SPEED  NUMBER(10,3),
  LATITUDE        NUMBER(12,3),
  LONGITUDE       NUMBER(12,3),
  DATATYPE        VARCHAR2(20 BYTE)             DEFAULT 'GENERIC',
  TEMP_STDEV      NUMBER(10,3),
  SALINITY_STDEV  NUMBER(10,3)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          4M
            NEXT             10M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.REPRES_PROFILE_L4_MAY CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.REPRES_PROFILE_L4_MAY
(
  GRID_INDEX      NUMBER(8),
  DEPTH           NUMBER(10,3),
  TEMPERATURE     NUMBER(10,3),
  SALINITY        NUMBER(10,3),
  SOUND_SPEED     NUMBER(10,3),
  SIGMA_T         NUMBER(10,3),
  LH_SALINITY     NUMBER(10,3),
  RH_SALINITY     NUMBER(10,3),
  LH_TEMPERATURE  NUMBER(10,3),
  RH_TEMPERATURE  NUMBER(10,3),
  RH_SIGMA_T      NUMBER(10,3),
  LH_SIGMA_T      NUMBER(10,3),
  RH_SOUND_SPEED  NUMBER(10,3),
  LH_SOUND_SPEED  NUMBER(10,3),
  LATITUDE        NUMBER(12,3),
  LONGITUDE       NUMBER(12,3),
  DATATYPE        VARCHAR2(20 BYTE)             DEFAULT 'GENERIC',
  TEMP_STDEV      NUMBER(10,3),
  SALINITY_STDEV  NUMBER(10,3)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          4M
            NEXT             10M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.REPRES_PROFILE_L4_NOV CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.REPRES_PROFILE_L4_NOV
(
  GRID_INDEX      NUMBER(8),
  DEPTH           NUMBER(10,3),
  TEMPERATURE     NUMBER(10,3),
  SALINITY        NUMBER(10,3),
  SOUND_SPEED     NUMBER(10,3),
  SIGMA_T         NUMBER(10,3),
  LH_SALINITY     NUMBER(10,3),
  RH_SALINITY     NUMBER(10,3),
  LH_TEMPERATURE  NUMBER(10,3),
  RH_TEMPERATURE  NUMBER(10,3),
  RH_SIGMA_T      NUMBER(10,3),
  LH_SIGMA_T      NUMBER(10,3),
  RH_SOUND_SPEED  NUMBER(10,3),
  LH_SOUND_SPEED  NUMBER(10,3),
  LATITUDE        NUMBER(12,3),
  LONGITUDE       NUMBER(12,3),
  DATATYPE        VARCHAR2(20 BYTE)             DEFAULT 'GENERIC',
  TEMP_STDEV      NUMBER(10,3),
  SALINITY_STDEV  NUMBER(10,3)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          4M
            NEXT             10M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.REPRES_PROFILE_L4_OCT CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.REPRES_PROFILE_L4_OCT
(
  GRID_INDEX      NUMBER(8),
  DEPTH           NUMBER(10,3),
  TEMPERATURE     NUMBER(10,3),
  SALINITY        NUMBER(10,3),
  SOUND_SPEED     NUMBER(10,3),
  SIGMA_T         NUMBER(10,3),
  LH_SALINITY     NUMBER(10,3),
  RH_SALINITY     NUMBER(10,3),
  LH_TEMPERATURE  NUMBER(10,3),
  RH_TEMPERATURE  NUMBER(10,3),
  RH_SIGMA_T      NUMBER(10,3),
  LH_SIGMA_T      NUMBER(10,3),
  RH_SOUND_SPEED  NUMBER(10,3),
  LH_SOUND_SPEED  NUMBER(10,3),
  LATITUDE        NUMBER(12,3),
  LONGITUDE       NUMBER(12,3),
  DATATYPE        VARCHAR2(20 BYTE)             DEFAULT 'GENERIC',
  TEMP_STDEV      NUMBER(10,3),
  SALINITY_STDEV  NUMBER(10,3)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          4M
            NEXT             10M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.REPRES_PROFILE_L4_SEP CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.REPRES_PROFILE_L4_SEP
(
  GRID_INDEX      NUMBER(8),
  DEPTH           NUMBER(10,3),
  TEMPERATURE     NUMBER(10,3),
  SALINITY        NUMBER(10,3),
  SOUND_SPEED     NUMBER(10,3),
  SIGMA_T         NUMBER(10,3),
  LH_SALINITY     NUMBER(10,3),
  RH_SALINITY     NUMBER(10,3),
  LH_TEMPERATURE  NUMBER(10,3),
  RH_TEMPERATURE  NUMBER(10,3),
  RH_SIGMA_T      NUMBER(10,3),
  LH_SIGMA_T      NUMBER(10,3),
  RH_SOUND_SPEED  NUMBER(10,3),
  LH_SOUND_SPEED  NUMBER(10,3),
  LATITUDE        NUMBER(12,3),
  LONGITUDE       NUMBER(12,3),
  DATATYPE        VARCHAR2(20 BYTE)             DEFAULT 'GENERIC',
  TEMP_STDEV      NUMBER(10,3),
  SALINITY_STDEV  NUMBER(10,3)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          4M
            NEXT             10M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.REPRES_SEASURFACE_L1 CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.REPRES_SEASURFACE_L1
(
  GRID_INDEX               NUMBER(8),
  MONTH_ID                 NUMBER(8),
  WAVE_HEIGHT              NUMBER(10,3),
  WAVE_STANDARD_DEVIATION  NUMBER(10,3),
  LATITUDE                 NUMBER(12,3),
  LONGITUDE                NUMBER(12,3)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          15104K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.REPRES_SHIPHITS_D1 CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.REPRES_SHIPHITS_D1
(
  GRID_INDEX    NUMBER(8),
  MONTH_ID      NUMBER(8),
  SHIP_DENSITY  NUMBER(10,3),
  LATITUDE      NUMBER(12,3),
  LONGITUDE     NUMBER(12,3)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          20M
            NEXT             2M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.REPRES_SPECIES_L1 CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.REPRES_SPECIES_L1
(
  GRID_INDEX    NUMBER(8),
  TIME_OF_YR    VARCHAR2(50 BYTE),
  SPECIES_TYPE  VARCHAR2(20 BYTE),
  SPECIES_NAME  VARCHAR2(30 BYTE),
  DEPTH_RANGE   VARCHAR2(30 BYTE),
  ABUNDANCE     NUMBER(10,3),
  LATITUDE      NUMBER(12,3),
  LONGITUDE     NUMBER(12,3)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          16M
            NEXT             4M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.ROWS_PER_JOB CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.ROWS_PER_JOB
(
  BOOKING_JOB  INTEGER,
  TABLE_TYPE   CHAR(64 BYTE),
  N_ROWS       INTEGER
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.SEASOAR_PROFILE_DATA CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.SEASOAR_PROFILE_DATA
(
  MEDS_JOB_NUMBER          NUMBER(10),
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  DEPTH                    NUMBER(12,4),
  TEMPERATURE              NUMBER(12,4),
  SALINITY                 NUMBER(12,4),
  SOUND_SPEED              NUMBER(12,4),
  DENSITY                  NUMBER(12,4),
  TURBIDITY                NUMBER(20,10),
  CHLOROPHYLL              NUMBER(20,10),
  HYDROCARBONS             NUMBER(20,10),
  GELBSTOFFE               NUMBER(20,10),
  ATTENUATION              NUMBER(20,10),
  BIOLUMINESCENCE          NUMBER(20,4),
  PROFILE_ID               NUMBER(10)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.SEASOAR_PROFILE_OBSERVATION CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.SEASOAR_PROFILE_OBSERVATION
(
  LOCATION                 MDSYS.SDO_GEOMETRY,
  MEDS_JOB_NUMBER          NUMBER(10),
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  LONGITUDE                NUMBER(12,4),
  LATITUDE                 NUMBER(12,4),
  DATE_RECORDED            DATE,
  PROFILE_ID               NUMBER(10)
)
COLUMN LOCATION NOT SUBSTITUTABLE AT ALL LEVELS
VARRAY "LOCATION"."SDO_ELEM_INFO" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
VARRAY "LOCATION"."SDO_ORDINATES" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.SEASOAR_TOW_DATA CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.SEASOAR_TOW_DATA
(
  MEDS_JOB_NUMBER          NUMBER(10),
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  DEPTH                    NUMBER(12,4),
  PRESSURE                 NUMBER(12,4),
  TEMPERATURE              NUMBER(12,4),
  SALINITY                 NUMBER(12,4),
  SOUND_SPEED              NUMBER(12,4),
  DENSITY                  NUMBER(12,4),
  TURBIDITY                NUMBER(20,10),
  CHLOROPHYLL              NUMBER(20,10),
  HYDROCARBONS             NUMBER(20,10),
  GELBSTOFFE               NUMBER(20,10),
  ATTENUATION              NUMBER(20,10),
  BIOLUMINESCENCE          NUMBER(20,4),
  LATITUDE                 NUMBER(12,4),
  LONGITUDE                NUMBER(12,4),
  DATE_RECORDED            DATE
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.SEASOAR_TOW_OBSERVATION CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.SEASOAR_TOW_OBSERVATION
(
  LOCATION                 MDSYS.SDO_GEOMETRY,
  MEDS_JOB_NUMBER          NUMBER(10),
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  LONGITUDE                NUMBER(12,4),
  LATITUDE                 NUMBER(12,4),
  DATE_RECORDED            DATE
)
COLUMN LOCATION NOT SUBSTITUTABLE AT ALL LEVELS
VARRAY "LOCATION"."SDO_ELEM_INFO" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
VARRAY "LOCATION"."SDO_ORDINATES" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.SECCHI_DISK_DATA CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.SECCHI_DISK_DATA
(
  RECORD_NUMBER            NUMBER(6),
  WATER_COLOUR             VARCHAR2(20 BYTE),
  SUN_ANGLE                VARCHAR2(10 BYTE),
  REFERENCE                VARCHAR2(100 BYTE),
  GENERAL_AREA             VARCHAR2(100 BYTE),
  STN_IDENTIFIER           VARCHAR2(50 BYTE),
  PHOTIC_DEPTH             NUMBER(12,4),
  HORIZONTAL_VISABILITY    NUMBER(12,4),
  WEATHER                  NUMBER(5),
  CLOUD                    NUMBER(5),
  SHIP                     VARCHAR2(100 BYTE),
  CRUISE_IDENTIFIER        VARCHAR2(100 BYTE),
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  MEDS_JOB_NUMBER          NUMBER(10),
  ARCHIVED                 VARCHAR2(20 BYTE),
  DIFFUSE_ATTN_COE         VARCHAR2(20 BYTE),
  MONTH                    VARCHAR2(10 BYTE),
  GMT                      VARCHAR2(20 BYTE),
  SEA_STATE                VARCHAR2(10 BYTE),
  SECCHI_DEPTH             NUMBER(12,4),
  WATER_COLOUR_H631A       NUMBER(5)            DEFAULT NULL,
  WIND_DIRECTION           NUMBER(5),
  WIND_SPEED               NUMBER(5),
  SWELL_DIRECTION          NUMBER(5),
  SWELL_PERIOD             NUMBER(5),
  ATMOS_PRESSURE           NUMBER(5,1),
  DRYAIR_TEMPERATURE       NUMBER(5,1),
  WETAIR_TEMPERATURE       NUMBER(5,1)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;

COMMENT ON TABLE MEDSADMIN.SECCHI_DISK_DATA IS 'DIFFUSE_ATTN_COE = 1.7/SECCHI_DEPTH 
PHOTIC_DEPTH = 3*SECCHI_DEPTH 
HORIZONTAL_VISABILITY = 0.7*SECCHI_DEPTH';



DROP TABLE MEDSADMIN.SECCHI_DISK_OBSERVATION CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.SECCHI_DISK_OBSERVATION
(
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  MEDS_JOB_NUMBER          NUMBER(10),
  LOCATION                 MDSYS.SDO_GEOMETRY,
  DATE_RECORDED            DATE,
  LATITUDE                 NUMBER(12,8),
  LONGITUDE                NUMBER(12,8)
)
COLUMN LOCATION NOT SUBSTITUTABLE AT ALL LEVELS
VARRAY "LOCATION"."SDO_ELEM_INFO" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
VARRAY "LOCATION"."SDO_ORDINATES" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.SECCHI_WATER_COLOUR_LOOKUP CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.SECCHI_WATER_COLOUR_LOOKUP
(
  SECCHI_COLOUR_NAME         VARCHAR2(20 BYTE)  DEFAULT NULL,
  SECCHI_COLOUR_H631A_SCALE  NUMBER(5)          DEFAULT NULL
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.SHIPPING_DATA CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.SHIPPING_DATA
(
  FLAG                     VARCHAR2(6 BYTE),
  SHIP_NAME                VARCHAR2(100 BYTE),
  IRCS                     VARCHAR2(10 BYTE),
  IMO                      VARCHAR2(20 BYTE),
  MMSI                     VARCHAR2(20 BYTE),
  COURSE                   NUMBER(8,3),
  SPEED                    NUMBER(8,3),
  DESTINATION              VARCHAR2(50 BYTE),
  ETA                      DATE,
  COI                      VARCHAR2(20 BYTE),
  LENGTH                   NUMBER(6),
  REMARKS                  VARCHAR2(100 BYTE),
  MEDS_JOB_NUMBER          NUMBER(10),
  MEDS_OBSERVATION_NUMBER  NUMBER(10)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.SHIPPING_OBSERVATION CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.SHIPPING_OBSERVATION
(
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  MEDS_JOB_NUMBER          NUMBER(10),
  LOCATION                 MDSYS.SDO_GEOMETRY,
  DATE_RECORDED            DATE,
  LATITUDE                 NUMBER(12,8),
  LONGITUDE                NUMBER(12,8)
)
COLUMN LOCATION NOT SUBSTITUTABLE AT ALL LEVELS
VARRAY "LOCATION"."SDO_ELEM_INFO" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
VARRAY "LOCATION"."SDO_ORDINATES" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.SHIP_CODES_LOOKUP CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.SHIP_CODES_LOOKUP
(
  SHIP_NAME     VARCHAR2(32 BYTE),
  YEAR          NUMBER,
  SHIP_CODE     VARCHAR2(4 BYTE),
  COUNTRY_CODE  VARCHAR2(4 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.SHIP_DETAILS CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.SHIP_DETAILS
(
  COUNTRY_CODE         VARCHAR2(2 BYTE),
  ICES_SHIP_CODE       VARCHAR2(2 BYTE),
  MIAS_INSTITUTE_CODE  VARCHAR2(3 BYTE),
  MIAS_INSTITUTE_FLAG  NUMBER(2),
  ICES_SHIP_FLAG       NUMBER(2),
  VESSEL_NAME          VARCHAR2(50 BYTE),
  MEDS_SHIP_NUMBER     NUMBER(10),
  MEDS_CRUISE_NUMBER   NUMBER(10)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          1M
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.SPATIAL_DUFF CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.SPATIAL_DUFF
(
  LOCATION                 MDSYS.SDO_GEOMETRY,
  MEDS_JOB_NUMBER          NUMBER(10),
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  MID_LATITUDE             NUMBER(12,6),
  MID_LONGITUDE            NUMBER(12,6),
  PROFILE_ID               NUMBER(10),
  PROFILE_DIR              NUMBER(2),
  DISTANCE_TRAVELED        NUMBER(12,4)
)
COLUMN LOCATION NOT SUBSTITUTABLE AT ALL LEVELS
VARRAY "LOCATION"."SDO_ORDINATES" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
VARRAY "LOCATION"."SDO_ELEM_INFO" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.STANDARD_LOOKUP CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.STANDARD_LOOKUP
(
  DESCRIPTION  VARCHAR2(50 BYTE),
  TABLE_NAME   VARCHAR2(50 BYTE),
  COLUMN_NAME  VARCHAR2(50 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.STATS_PERIOD CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.STATS_PERIOD
(
  PERIOD_START  DATE                            NOT NULL,
  PERIOD_END    DATE                            NOT NULL
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.SUMMARY_2019_US CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.SUMMARY_2019_US
(
  SUPPLIER       VARCHAR2(64 BYTE),
  DESCRIPTION    VARCHAR2(200 BYTE),
  CRUISE_NAME    VARCHAR2(50 BYTE),
  OBS_COUNT      NUMBER,
  DATA_USE_CODE  VARCHAR2(20 BYTE),
  DATATYPE       CHAR(5 BYTE),
  MEIC_NUMBER    NUMBER
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.SUMMARY_2021_US CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.SUMMARY_2021_US
(
  SUPPLIER       VARCHAR2(64 BYTE),
  DESCRIPTION    VARCHAR2(200 BYTE),
  CRUISE_NAME    VARCHAR2(50 BYTE),
  OBS_COUNT      NUMBER,
  DATA_USE_CODE  VARCHAR2(20 BYTE),
  DATATYPE       CHAR(5 BYTE),
  MEIC_NUMBER    NUMBER
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.SUMMARY_2023 CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.SUMMARY_2023
(
  SUPPLIER       VARCHAR2(64 BYTE),
  DESCRIPTION    VARCHAR2(200 BYTE),
  CRUISE_NAME    VARCHAR2(50 BYTE),
  OBS_COUNT      NUMBER,
  DATA_USE_CODE  VARCHAR2(20 BYTE),
  DATATYPE       CHAR(6 BYTE),
  MEIC_NUMBER    NUMBER
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.SUPPORT_TABLES CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.SUPPORT_TABLES
(
  NAME  VARCHAR2(50 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.TABLE_INDEX_LOOKUP CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.TABLE_INDEX_LOOKUP
(
  TABLE_NAME     VARCHAR2(50 BYTE),
  FIELD_NAME     VARCHAR2(50 BYTE),
  INDEX_TABLE    VARCHAR2(50 BYTE),
  INDEX_FIELD    VARCHAR2(50 BYTE),
  SINGLE_REPEAT  NUMBER(1)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.TAB_COLUMNS CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.TAB_COLUMNS
(
  TABLE_NAME   VARCHAR2(30 BYTE)                NOT NULL,
  COLUMN_NAME  VARCHAR2(30 BYTE)                NOT NULL,
  TAB_NUMBER   NUMBER                           NOT NULL,
  TAB_NAME     VARCHAR2(20 BYTE),
  EDIT_ORDER   NUMBER,
  MANDATORY    NUMBER,
  CONSTRAINT   NUMBER
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.TEMP_JOBS CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.TEMP_JOBS
(
  MEDS_JOB_ID                NUMBER,
  PO_NO                      VARCHAR2(12 BYTE),
  INGRES_NO                  NUMBER,
  DATE_RECD                  DATE,
  SUPPLIER                   VARCHAR2(128 BYTE),
  ACKNOWLEDGE                CHAR(1 BYTE),
  PRIORITY_REGION1           CHAR(1 BYTE),
  PRIORITY_REGION2           CHAR(1 BYTE),
  PRIORITY_REGION3           CHAR(1 BYTE),
  PRIORITY_REGION4           CHAR(1 BYTE),
  PRIORITY_REGION5           CHAR(1 BYTE),
  PRIORITY_REGION6           CHAR(1 BYTE),
  NO_OF_OBS_APPROX           NUMBER,
  COLLECTION_START           DATE,
  COLLECTION_END             DATE,
  QA_PROCESSING_TARGET_DATE  DATE,
  QA_PROCESSING_COMPLETED    DATE,
  HOOD_LOAD_DATE_            DATE,
  OBS_ACCEPTED               NUMBER,
  OBS_REJECTED               NUMBER,
  MORS_OR_OTHER_SV_DATA      CHAR(1 BYTE),
  CTD                        CHAR(1 BYTE),
  XCTD                       CHAR(1 BYTE),
  VOS                        CHAR(1 BYTE),
  ARGO                       CHAR(1 BYTE),
  SEABED_SAMPLES_H575        CHAR(1 BYTE),
  XSV                        CHAR(1 BYTE),
  XBT                        CHAR(1 BYTE),
  OMNI_DIRECTIONAL           CHAR(1 BYTE),
  TOWED_ARRAY                CHAR(1 BYTE),
  DIRECTIONAL                CHAR(1 BYTE),
  SECCHI                     CHAR(1 BYTE),
  BIOLUMIN_H636              CHAR(1 BYTE),
  MARINE_LIFE_H637           CHAR(1 BYTE),
  NEIL_BROWN_BIOLOGY         CHAR(1 BYTE),
  SONAR_2081                 CHAR(1 BYTE),
  AQUASHUTTLE                CHAR(1 BYTE),
  CHLOROPHYLL                CHAR(1 BYTE),
  MISCELLANEOUS              CHAR(1 BYTE),
  EXCHANGE                   CHAR(1 BYTE),
  FRONTS                     CHAR(1 BYTE),
  SEA_ICE                    CHAR(1 BYTE),
  INTERNAL_WAVES             CHAR(1 BYTE),
  COMMENTS                   VARCHAR2(512 BYTE),
  PO_NUMBER                  NUMBER             DEFAULT NULL,
  PO_TASK                    CHAR(1 BYTE)       DEFAULT NULL,
  JOB_TYPE_NUMBER            NUMBER             DEFAULT NULL
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.TIFF_CHARTS CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.TIFF_CHARTS
(
  FILENAME      CHAR(64 BYTE),
  SIZE_DEGREES  NUMBER,
  LIMITS        MDSYS.SDO_GEOMETRY
)
COLUMN LIMITS NOT SUBSTITUTABLE AT ALL LEVELS
VARRAY "LIMITS"."SDO_ELEM_INFO" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
VARRAY "LIMITS"."SDO_ORDINATES" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.TMP_FIELD_CHECK CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.TMP_FIELD_CHECK
(
  TABLE_NAME  VARCHAR2(50 BYTE),
  FIELD_NAME  VARCHAR2(50 BYTE),
  FOUND       INTEGER
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.TSSV_COUNT CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.TSSV_COUNT
(
  TYPE   VARCHAR2(50 BYTE),
  TOTAL  NUMBER
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.TSSV_INSTRUMENT CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.TSSV_INSTRUMENT
(
  INSTRUMENT  VARCHAR2(50 BYTE),
  TOTAL       NUMBER
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.UNIFIED_SECCHI_DATA CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.UNIFIED_SECCHI_DATA
(
  DATA_TYPE                VARCHAR2(8 BYTE),
  RECORD_NUMBER            NUMBER(6),
  WATER_COLOUR             NUMBER(5),
  WATER_COLOUR_NAME        VARCHAR2(20 BYTE),
  SUN_ANGLE                VARCHAR2(10 BYTE),
  REFERENCE                VARCHAR2(100 BYTE),
  GENERAL_AREA             VARCHAR2(100 BYTE),
  STN_IDENTIFIER           VARCHAR2(50 BYTE),
  PHOTIC_DEPTH             NUMBER(12,4),
  HORIZONTAL_VISABILITY    NUMBER(12,4),
  WEATHER                  NUMBER(5),
  CLOUD                    NUMBER(5),
  SHIP                     VARCHAR2(100 BYTE),
  SHIP_CODE                VARCHAR2(2 BYTE),
  COUNTRY_CODE             VARCHAR2(2 BYTE),
  CRUISE_IDENTIFIER        VARCHAR2(100 BYTE),
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  MEDS_JOB_NUMBER          NUMBER(10),
  ARCHIVED                 VARCHAR2(20 BYTE),
  DIFFUSE_ATTN_COE         VARCHAR2(20 BYTE),
  MONTH                    NUMBER(2),
  GMT                      VARCHAR2(20 BYTE),
  SEA_STATE                VARCHAR2(10 BYTE),
  SECCHI_DEPTH             NUMBER(12,4),
  SRC                      VARCHAR2(7 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.UNIFIED_SECCHI_OBSERVATION CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.UNIFIED_SECCHI_OBSERVATION
(
  MEDS_OBSERVATION_NUMBER  NUMBER(10),
  MEDS_JOB_NUMBER          NUMBER(10),
  LOCATION                 MDSYS.SDO_GEOMETRY,
  DATE_RECORDED            DATE,
  LATITUDE                 NUMBER(12,8),
  LONGITUDE                NUMBER(12,8),
  SRC                      VARCHAR2(7 BYTE)
)
COLUMN LOCATION NOT SUBSTITUTABLE AT ALL LEVELS
VARRAY "LOCATION"."SDO_ELEM_INFO" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
VARRAY "LOCATION"."SDO_ORDINATES" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.UNIFIED_WATER_COLOUR_LOOKUP CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.UNIFIED_WATER_COLOUR_LOOKUP
(
  UNIFIED_COLOUR_H631A_NAME   VARCHAR2(20 BYTE) DEFAULT NULL,
  UNIFIED_COLOUR_H631A_SCALE  NUMBER(5)         DEFAULT NULL
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.VAL_RESULTS CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.VAL_RESULTS
(
  SDO_ROWID  ROWID,
  RESULT     VARCHAR2(1000 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.WATER_COLOUR CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.WATER_COLOUR
(
  WATER_COLOUR  NUMBER(5),
  COLOUR_DESC   VARCHAR2(20 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.WVS_3M CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.WVS_3M
(
  OBJECTID          NUMBER(38)                  NOT NULL,
  ID                NUMBER(11),
  FAC_ID            NUMBER(11),
  FACC              VARCHAR2(5 BYTE),
  FACC_DESCR        VARCHAR2(254 BYTE),
  CVH               NUMBER(6),
  CVL               NUMBER(6),
  TILE_ID           NUMBER(6),
  SHAPE             MDSYS.SDO_GEOMETRY,
  SE_ANNO_CAD_DATA  BLOB
)
COLUMN SHAPE NOT SUBSTITUTABLE AT ALL LEVELS
VARRAY "SHAPE"."SDO_ELEM_INFO" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
VARRAY "SHAPE"."SDO_ORDINATES" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
LOB (SE_ANNO_CAD_DATA) STORE AS (
  TABLESPACE USERS
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  NOCACHE
  LOGGING
  INDEX       (
        TABLESPACE USERS
        STORAGE    (
                    INITIAL          64K
                    NEXT             64K
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          128K
                  NEXT             128K
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          9360K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.WVS_3M_BATHY_LINE CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.WVS_3M_BATHY_LINE
(
  OBJECTID          INTEGER                     NOT NULL,
  ID                NUMBER(11),
  EDG_ID            NUMBER(11),
  FACC              VARCHAR2(5 BYTE),
  FACC_DESCR        VARCHAR2(254 BYTE),
  CRV               NUMBER(6),
  TILE_ID           NUMBER(6),
  SHAPE             MDSYS.SDO_GEOMETRY,
  SE_ANNO_CAD_DATA  BLOB
)
COLUMN SHAPE NOT SUBSTITUTABLE AT ALL LEVELS
VARRAY "SHAPE"."SDO_ELEM_INFO" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
VARRAY "SHAPE"."SDO_ORDINATES" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
LOB (SE_ANNO_CAD_DATA) STORE AS (
  TABLESPACE USERS
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  NOCACHE
  LOGGING
  INDEX       (
        TABLESPACE USERS
        STORAGE    (
                    INITIAL          64K
                    NEXT             64K
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          128K
                  NEXT             128K
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   4
MAXTRANS   255
STORAGE    (
            INITIAL          8184K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


DROP TABLE MEDSADMIN.WVS_D_3M_COUNTPOLY CASCADE CONSTRAINTS;

CREATE TABLE MEDSADMIN.WVS_D_3M_COUNTPOLY
(
  OBJECTID          INTEGER                     NOT NULL,
  NAM_DESCRI        VARCHAR2(254 BYTE),
  COUNT             NUMBER(11),
  SHAPE             MDSYS.SDO_GEOMETRY,
  SE_ANNO_CAD_DATA  BLOB
)
COLUMN SHAPE NOT SUBSTITUTABLE AT ALL LEVELS
VARRAY "SHAPE"."SDO_ELEM_INFO" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
VARRAY "SHAPE"."SDO_ORDINATES" STORE AS LOB (
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  CACHE
  LOGGING
  INDEX       (
        STORAGE    (
                    INITIAL          64K
                    NEXT             1M
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          64K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
LOB (SE_ANNO_CAD_DATA) STORE AS (
  TABLESPACE USERS
  ENABLE       STORAGE IN ROW
  CHUNK       8192
  RETENTION
  NOCACHE
  LOGGING
  INDEX       (
        TABLESPACE USERS
        STORAGE    (
                    INITIAL          64K
                    NEXT             64K
                    MINEXTENTS       1
                    MAXEXTENTS       UNLIMITED
                    PCTINCREASE      0
                    BUFFER_POOL      DEFAULT
                   ))
      STORAGE    (
                  INITIAL          128K
                  NEXT             128K
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                 ))
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   4
MAXTRANS   255
STORAGE    (
            INITIAL          280K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;
