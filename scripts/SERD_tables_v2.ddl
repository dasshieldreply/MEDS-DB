-- Generated by Oracle SQL Developer Data Modeler 23.1.0.087.0806
--   at:        2024-04-05 12:09:10 BST
--   site:      Oracle Database 12cR2
--   type:      Oracle Database 12cR2



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE medsadmin.serd_code_lookup (
    serd_code_lookup NUMBER NOT NULL,
    column_offset    NUMBER,
    code_value       VARCHAR2(100),
    label            VARCHAR2(1000)
)
NO INMEMORY;

COMMENT ON COLUMN medsadmin.serd_code_lookup.column_offset IS
    'Unique identifier of the code stored, as the position of the related field in the SERD file. ';

COMMENT ON COLUMN medsadmin.serd_code_lookup.code_value IS
    'Code value.';

COMMENT ON COLUMN medsadmin.serd_code_lookup.label IS
    'Code description';

GRANT SELECT ON medsadmin.serd_code_lookup TO cm;

ALTER TABLE medsadmin.serd_code_lookup ADD CONSTRAINT serd_code_lookup_p PRIMARY KEY ( serd_code_lookup );

ALTER TABLE medsadmin.serd_code_lookup ADD CONSTRAINT serd_code_lookup_value_u UNIQUE ( column_offset,
                                                                                        code_value );

CREATE TABLE medsadmin.serd_sea_state_lookup (
    serd_sea_state_lookup NUMBER NOT NULL,
    sea_state_code        NUMBER NOT NULL,
    label                 VARCHAR2(100) NOT NULL,
    height                NUMBER NOT NULL
)
NO INMEMORY;

COMMENT ON COLUMN medsadmin.serd_sea_state_lookup.sea_state_code IS
    'SEA_STATE code.';

COMMENT ON COLUMN medsadmin.serd_sea_state_lookup.label IS
    'Sea state description.';

COMMENT ON COLUMN medsadmin.serd_sea_state_lookup.height IS
    'Sea height in meters.';

CREATE UNIQUE INDEX medsadmin.serd_lov_sea_state_cd_u ON
    medsadmin.serd_sea_state_lookup (
        sea_state_code
    ASC );

CREATE UNIQUE INDEX medsadmin.serd_lov_sea_state_p ON
    medsadmin.serd_sea_state_lookup (
        serd_sea_state_lookup
    ASC );

GRANT SELECT ON medsadmin.serd_sea_state_lookup TO cm;

ALTER TABLE medsadmin.serd_sea_state_lookup ADD CONSTRAINT serd_sea_state_lookup_p PRIMARY KEY ( serd_sea_state_lookup );

ALTER TABLE medsadmin.serd_sea_state_lookup ADD CONSTRAINT serd_sea_state_lookup_code_u UNIQUE ( sea_state_code );

CREATE TABLE medsadmin.serd_stg_comment (
    serd_stg_comment NUMBER NOT NULL,
    serd_stg_header  NUMBER NOT NULL,
    row_sequence     NUMBER NOT NULL,
    text             VARCHAR2(70)
)
NO INMEMORY;

CREATE UNIQUE INDEX medsadmin.serd_stg_comment_p ON
    medsadmin.serd_stg_comment (
        serd_stg_comment
    ASC );

GRANT SELECT ON medsadmin.serd_stg_comment TO cm;

ALTER TABLE medsadmin.serd_stg_comment
    ADD CONSTRAINT serd_stg_comment_p PRIMARY KEY ( serd_stg_comment )
        USING INDEX medsadmin.serd_stg_comment_p;

CREATE TABLE medsadmin.serd_stg_depth_level (
    serd_stg_depth_level        NUMBER NOT NULL,
    serd_stg_header             NUMBER NOT NULL,
    row_sequence                NUMBER NOT NULL,
    depth_index                 CHAR(1 BYTE),
    depth_level                 NUMBER,
    depth_quality_code          NUMBER NOT NULL,
    temperature                 NUMBER,
    temperature_quality_code    NUMBER NOT NULL,
    salinity                    NUMBER,
    salinity_quality_code       NUMBER NOT NULL,
    sound_velocity              NUMBER,
    sound_velocity_quality_code NUMBER NOT NULL,
    sound_velocity_code         NUMBER NOT NULL
)
NO INMEMORY;

ALTER TABLE medsadmin.serd_stg_depth_level
    ADD CHECK ( depth_index IN ( '0', '1' ) );

COMMENT ON COLUMN medsadmin.serd_stg_depth_level.row_sequence IS
    'Depth level sequence row number .';

COMMENT ON COLUMN medsadmin.serd_stg_depth_level.depth_index IS
    'Depth indicator (this field applies to Nansen data only).';

COMMENT ON COLUMN medsadmin.serd_stg_depth_level.depth_level IS
    'Depth level, in metres.';

COMMENT ON COLUMN medsadmin.serd_stg_depth_level.depth_quality_code IS
    'Depth quality code.';

COMMENT ON COLUMN medsadmin.serd_stg_depth_level.temperature IS
    'Temperature, in degrees celsius to hundredths.';

COMMENT ON COLUMN medsadmin.serd_stg_depth_level.temperature_quality_code IS
    'Temperature quality code.';

COMMENT ON COLUMN medsadmin.serd_stg_depth_level.salinity IS
    'Salinity, parts per thousand to thousandths.';

COMMENT ON COLUMN medsadmin.serd_stg_depth_level.salinity_quality_code IS
    'Salinity quality code.';

COMMENT ON COLUMN medsadmin.serd_stg_depth_level.sound_velocity IS
    'Sound velocity, metres per second to tenths.';

COMMENT ON COLUMN medsadmin.serd_stg_depth_level.sound_velocity_quality_code IS
    'Sound velocity quality code.';

COMMENT ON COLUMN medsadmin.serd_stg_depth_level.sound_velocity_code IS
    'Sound velocity code.';

CREATE UNIQUE INDEX medsadmin.serd_stg_depth_level_p ON
    medsadmin.serd_stg_depth_level (
        serd_stg_depth_level
    ASC );

GRANT SELECT ON medsadmin.serd_stg_depth_level TO cm;

ALTER TABLE medsadmin.serd_stg_depth_level ADD CONSTRAINT serd_stg_depth_level_p PRIMARY KEY ( serd_stg_depth_level );

CREATE TABLE medsadmin.serd_stg_header (
    serd_stg_header                        NUMBER NOT NULL,
    meds_job_number                        NUMBER NOT NULL,
    record_type                            NUMBER,
    record_sequence                        NUMBER,
    data_identifier                        CHAR(1 BYTE),
    data_use_code                          CHAR(1 BYTE),
    file_code                              CHAR(2 BYTE),
    marsden_square                         NUMBER,
    degree_square                          NUMBER,
    geo_position                           VARCHAR2(15),
    quadrant_code                          CHAR(1 BYTE),
    position_determination_code            NUMBER NOT NULL,
    position_accuracy_code                 NUMBER NOT NULL,
    position_additional_reference          VARCHAR2(12),
    archive_year                           NUMBER,
    observation_date                       DATE,
    observation_time                       DATE,
    country_code                           CHAR(2 BYTE),
    ship_number                            CHAR(2 BYTE),
    ship_number_type                       NUMBER,
    originator_cruise_number               VARCHAR2(8),
    institute_label                        VARCHAR2(6),
    institute_number                       NUMBER,
    institute_number_type                  NUMBER,
    land_check_indicator                   CHAR(1 BYTE),
    depth_level_number                     NUMBER,
    seabed_depth                           NUMBER,
    min_observation_depth                  NUMBER,
    max_observation_depth                  NUMBER,
    depth_correction                       NUMBER,
    temperature_correction                 NUMBER,
    salinity_correction                    NUMBER,
    sound_velocity_correction              NUMBER,
    observation_unit_code                  NUMBER NOT NULL,
    instrument_code                        NUMBER NOT NULL,
    data_type_code                         NUMBER NOT NULL,
    data_mode_code                         NUMBER NOT NULL,
    data_method_code                       NUMBER NOT NULL,
    wind_direction_code                    NUMBER NOT NULL,
    wind_speed                             NUMBER,
    dry_air_temperature                    NUMBER,
    wet_air_temperature                    NUMBER,
    weather_code                           NUMBER NOT NULL,
    cloud_coverage_code                    NUMBER NOT NULL,
    sea_state_code                         NUMBER NOT NULL,
    wave_period                            NUMBER,
    wave_height                            NUMBER,
    atmospheric_pressure                   NUMBER,
    water_colour_code                      NUMBER NOT NULL,
    "WATER TRANSPARENCY"                   CHAR(2 BYTE),
    salinity_scale_code                    NUMBER NOT NULL,
    bt_sea_surface_instrument_code         CHAR(1 BYTE),
    bt_sea_surface_reference_temperature   NUMBER,
    mbt_sea_surface_temperature_correction NUMBER,
    mbt_type_qualitty_code                 CHAR(1 BYTE),
    mbt_grade_qualitty_code                CHAR(1 BYTE)
)
NO INMEMORY;

COMMENT ON COLUMN medsadmin.serd_stg_header.record_type IS
    'Record type, Main = 2, Continuation = 3.';

COMMENT ON COLUMN medsadmin.serd_stg_header.record_sequence IS
    'Sequential record number, 01-99.';

COMMENT ON COLUMN medsadmin.serd_stg_header.data_identifier IS
    'Data Identifier, used for data management by the HO, usually a space.';

COMMENT ON COLUMN medsadmin.serd_stg_header.data_use_code IS
    'Data Use code (DUC), used for data management by the HO.';

COMMENT ON COLUMN medsadmin.serd_stg_header.file_code IS
    'File code, used for data management by the HO.';

COMMENT ON COLUMN medsadmin.serd_stg_header.marsden_square IS
    'Marsden square, generated from the geographicals.';

COMMENT ON COLUMN medsadmin.serd_stg_header.degree_square IS
    'Degree square, generated from the latitude and longitude degrees.';

COMMENT ON COLUMN medsadmin.serd_stg_header.geo_position IS
    'GEOPOSITIONDESC in degrees and minutes (to tenths), South and West shown as negative values.
';

COMMENT ON COLUMN medsadmin.serd_stg_header.quadrant_code IS
    'Quadrant, ICES code (NE = 0, SE = 2, SW = 3, NW = 1).';

COMMENT ON COLUMN medsadmin.serd_stg_header.position_determination_code IS
    'Position Determination, MIAS code for the fixing device used as the prime navigational aid in determining the position of the station.'
    ;

COMMENT ON COLUMN medsadmin.serd_stg_header.position_accuracy_code IS
    'Position Accuracy code. The estimated drift in station position or the estimated accuracy in the determination of the position of the station, whichever is the greater.'
    ;

COMMENT ON COLUMN medsadmin.serd_stg_header.position_additional_reference IS
    'Additional positional reference.';

COMMENT ON COLUMN medsadmin.serd_stg_header.archive_year IS
    'Archive Year. Field used for data management by HO.';

COMMENT ON COLUMN medsadmin.serd_stg_header.observation_date IS
    'Date observation collected.';

COMMENT ON COLUMN medsadmin.serd_stg_header.observation_time IS
    'Time observation collected (Greenwich Mean Time).';

COMMENT ON COLUMN medsadmin.serd_stg_header.country_code IS
    'Country code (ICES).';

COMMENT ON COLUMN medsadmin.serd_stg_header.ship_number IS
    'Ship number, ICES code is used, where possible, for data processed
at Taunton.';

COMMENT ON COLUMN medsadmin.serd_stg_header.ship_number_type IS
    'Ship number code, if 1 inserted then the Ship number is ICES code.';

COMMENT ON COLUMN medsadmin.serd_stg_header.originator_cruise_number IS
    'Originator''s Cruise number.';

COMMENT ON COLUMN medsadmin.serd_stg_header.institute_label IS
    'Institute description.';

COMMENT ON COLUMN medsadmin.serd_stg_header.institute_number IS
    'Institute number, MIAS code normally used:
001 199 	Government or Government aided Organisation/Laboratories.
200 399 	University/Polytechnic Departments.
400 499 	Commercial Organisations.
599		Unspecified British Institute.
999		Unspecified Foreign Institute.
(016 is the Hydrographic Office, Taunton)';

COMMENT ON COLUMN medsadmin.serd_stg_header.institute_number_type IS
    'Institute number code, if it contains 1 it indicates the MIAS code has been used.';

COMMENT ON COLUMN medsadmin.serd_stg_header.land_check_indicator IS
    'Land check indicator. Field used for data management by H0.';

COMMENT ON COLUMN medsadmin.serd_stg_header.depth_level_number IS
    'Number of depth levels. Indicates how many depth levels are held on the record.';

COMMENT ON COLUMN medsadmin.serd_stg_header.seabed_depth IS
    'Depth to Seabed.';

COMMENT ON COLUMN medsadmin.serd_stg_header.min_observation_depth IS
    'Minimum depth of observation.';

COMMENT ON COLUMN medsadmin.serd_stg_header.max_observation_depth IS
    'Maximum depth of observation.';

COMMENT ON COLUMN medsadmin.serd_stg_header.depth_correction IS
    'Depth correction which have been applied to the observed values [�nn ;  sign, tens, units (of metres)].';

COMMENT ON COLUMN medsadmin.serd_stg_header.temperature_correction IS
    'Temperature correction which have been applied to the observed values [�.nn ;  sign, tenths, hundredths (of degree)].
If the instrument code is 31(MBT) the format of the field is: ?n.n; integer, tenths(of degree).';

COMMENT ON COLUMN medsadmin.serd_stg_header.salinity_correction IS
    'Salinity correction which have been applied to the observed values [�.nnn ;  sign, tenths, hundredths, thousandths (of psu)].';

COMMENT ON COLUMN medsadmin.serd_stg_header.sound_velocity_correction IS
    'Sound velocity correction which have been applied to the observed values [�n.n ;  sign, units, tenths (of m/s)].
';

COMMENT ON COLUMN medsadmin.serd_stg_header.observation_unit_code IS
    'Refers to the units used in the original data.
If Units code = 1 the corrections are given in imperial units, however all other data have been converted to metric units.';

COMMENT ON COLUMN medsadmin.serd_stg_header.data_type_code IS
    'Data type, MIAS code.';

COMMENT ON COLUMN medsadmin.serd_stg_header.data_mode_code IS
    'Data mode.';

COMMENT ON COLUMN medsadmin.serd_stg_header.data_method_code IS
    'Data capture method code.';

COMMENT ON COLUMN medsadmin.serd_stg_header.wind_direction_code IS
    'Wind direction, WMO code 0877, true direction, in tenths of degrees from which the wind is blowing';

COMMENT ON COLUMN medsadmin.serd_stg_header.wind_speed IS
    'Wind speed in knots.';

COMMENT ON COLUMN medsadmin.serd_stg_header.dry_air_temperature IS
    'Dry air temperature.';

COMMENT ON COLUMN medsadmin.serd_stg_header.wet_air_temperature IS
    'Wet  air temperature.';

COMMENT ON COLUMN medsadmin.serd_stg_header.weather_code IS
    'Weather code.';

COMMENT ON COLUMN medsadmin.serd_stg_header.cloud_coverage_code IS
    'Cloud coverage, WMO code 2700.';

COMMENT ON COLUMN medsadmin.serd_stg_header.wave_period IS
    'Wave period, in seconds.';

COMMENT ON COLUMN medsadmin.serd_stg_header.wave_height IS
    'Wave height, in half metres.';

COMMENT ON COLUMN medsadmin.serd_stg_header.atmospheric_pressure IS
    'Atmospheric pressure in millibars and tenths.';

COMMENT ON COLUMN medsadmin.serd_stg_header."WATER TRANSPARENCY" IS
    'Water transparency.';

COMMENT ON COLUMN medsadmin.serd_stg_header.salinity_scale_code IS
    'Salinity scale code.';

COMMENT ON COLUMN medsadmin.serd_stg_header.bt_sea_surface_reference_temperature IS
    'BT Sea Surface Reference Temperature.';

COMMENT ON COLUMN medsadmin.serd_stg_header.mbt_sea_surface_temperature_correction IS
    'MBT Temperature Correction at the Surface.';

COMMENT ON COLUMN medsadmin.serd_stg_header.mbt_type_qualitty_code IS
    'MBT Type/XBT Quality code.';

COMMENT ON COLUMN medsadmin.serd_stg_header.mbt_grade_qualitty_code IS
    'MBT Grade/XBT Quality code.';

CREATE UNIQUE INDEX medsadmin.serd_stg_header_p ON
    medsadmin.serd_stg_header (
        serd_stg_header
    ASC );

GRANT SELECT ON medsadmin.serd_stg_header TO cm;

ALTER TABLE medsadmin.serd_stg_header
    ADD CONSTRAINT serd_stg_header_p PRIMARY KEY ( serd_stg_header )
        USING INDEX medsadmin.serd_stg_header_p;

ALTER TABLE medsadmin.serd_stg_comment
    ADD CONSTRAINT serd_stg_comment_serd_stg_header_f FOREIGN KEY ( serd_stg_header )
        REFERENCES medsadmin.serd_stg_header ( serd_stg_header )
    NOT DEFERRABLE;

ALTER TABLE medsadmin.serd_stg_depth_level
    ADD CONSTRAINT serd_stg_depth_level_serd_stg_header_f FOREIGN KEY ( serd_stg_header )
        REFERENCES medsadmin.serd_stg_header ( serd_stg_header )
    NOT DEFERRABLE;

ALTER TABLE medsadmin.serd_stg_header
    ADD CONSTRAINT serd_stg_header_serd_sea_state_lookup_f FOREIGN KEY ( sea_state_code )
        REFERENCES medsadmin.serd_sea_state_lookup ( sea_state_code )
    NOT DEFERRABLE;

CREATE OR REPLACE TRIGGER MEDSADMIN.BI_SERD_CODE_LOOKUP 
    BEFORE INSERT ON MEDSADMIN.SERD_CODE_LOOKUP 
    FOR EACH ROW 
begin
   if :new.SERD_CODE_LOOKUP is null then
      :new.SERD_CODE_LOOKUP := to_number(sys_guid(),'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx');
   end if;
end bi_serd_code_lookup; 
/

CREATE OR REPLACE TRIGGER MEDSADMIN.BI_SERD_SEA_STATE_LOOKUP 
    BEFORE INSERT ON MEDSADMIN.SERD_SEA_STATE_LOOKUP 
    FOR EACH ROW 
begin
   if :new.SERD_SEA_STATE_LOOKUP is null then
      :new.SERD_SEA_STATE_LOOOKUP := to_number(sys_guid(),'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx');
   end if;
end bi_serd_sea_state_lookup; 
/

CREATE OR REPLACE TRIGGER MEDSADMIN.BI_SERD_STG_COMMENT 
    BEFORE INSERT ON MEDSADMIN.SERD_STG_COMMENT 
    FOR EACH ROW 
begin
   if :new.SERD_STG_COMMENT is null then
      :new.SERD_STG_COMMENT := to_number(sys_guid(),'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx');
   end if;
end bi_serd_stg_comment; 
/

CREATE OR REPLACE TRIGGER MEDSADMIN.BI_SERD_STG_DEPTH_LEVEL 
    BEFORE INSERT ON MEDSADMIN.SERD_STG_DEPTH_LEVEL 
    FOR EACH ROW 
begin
   if :new.SERD_STG_DEPTH_LEVEL is null then
      :new.SERD_STG_DEPTH_LEVEL := to_number(sys_guid(),'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx');
   end if;
end bi_serd_stg_depth_level; 
/

CREATE OR REPLACE TRIGGER MEDSADMIN.BI_SERD_STG_HEADER 
    BEFORE INSERT ON MEDSADMIN.SERD_STG_HEADER 
    FOR EACH ROW 
begin
   if :new.SERD_STG_HEADER is null then
      :new.SERD_STG_HEADER := to_number(sys_guid(),'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx');
   end if;
end bi_serd_stg_header; 
/



-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                             5
-- CREATE INDEX                             5
-- ALTER TABLE                             11
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           5
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
