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
);


CREATE INDEX MEDSADMIN.IDX_AQUAPROF_DATA_MEDS ON MEDSADMIN.AQUAPACK_PROFILE_DATA
(MEDS_JOB_NUMBER, MEDS_OBSERVATION_NUMBER);


DROP PUBLIC SYNONYM AQUAPACK_PROFILE_DATA;

CREATE OR REPLACE PUBLIC SYNONYM AQUAPACK_PROFILE_DATA FOR MEDSADMIN.AQUAPACK_PROFILE_DATA;
