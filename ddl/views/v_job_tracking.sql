CREATE OR REPLACE FORCE EDITIONABLE VIEW "MEDSADMIN"."V_JOB_TRACKING" (
    "MEIC_NUMBER"
    , "PO_NUMBER"
    , "PO_TASK"
    , "STATUS"
    , "JOB_TYPE_NUMBER"
    , "INGRES_NO"
    , "DATE_RECEIVED"
    , "SUPPLIER"
    , "SOURCE"
    , "CLASSIFICATION"
    , "ASSIGNED"
    , "ACKNOWLEDGE"
    , "NO_OBS"
    , "OBS_ACCEPTED"
    , "OBS_REJECTED"
    , "COLLECTION_START"
    , "COLLECTION_END"
    , "QA_PROCESSING_TARGET"
    , "QA_PROCESSING_COMPLETED"
    , "QA_PROCESSING_NAME"
    , "DATABASED"
    , "DATABASED_NAME"
    , "VALIDATED"
    , "VALIDATED_NAME"
    , "COMMENTS"
    , "PRIORITY_REGION") DEFAULT COLLATION "USING_NLS_COMP"  AS 

  select a."MEIC_NUMBER"
,   a."PO_NUMBER"
,   a."PO_TASK"
,   a."STATUS"
,   a."JOB_TYPE_NUMBER"
,   a."INGRES_NO"
,   a."DATE_RECEIVED"
,   a."SUPPLIER"
,   a."SOURCE"
,   a."CLASSIFICATION"
,   a."ASSIGNED"
,   a."ACKNOWLEDGE"
,   a."NO_OBS"
,   a."OBS_ACCEPTED"
,   a."OBS_REJECTED"
,   a."COLLECTION_START"
,   a."COLLECTION_END"
,   a."QA_PROCESSING_TARGET"
,   a."QA_PROCESSING_COMPLETED"
,   a."QA_PROCESSING_NAME"
,   a."DATABASED"
,   a."DATABASED_NAME"
,   a."VALIDATED"
,   a."VALIDATED_NAME"
,   a."COMMENTS"
,   case 
       when a.priority_region1 = 'Y' then 
            'Region 1'
       when a.priority_region2 = 'Y' then 
            'Region 2'
       when a.priority_region3 = 'Y' then 
            'Region 3'
       when a.priority_region4 = 'Y' then 
            'Region 4'
       when a.priority_region5 = 'Y' then 
            'Region 5'
       when a.priority_region6 = 'Y' then 
            'Region 6'
    end  priority_region    
from   job_tracking a;