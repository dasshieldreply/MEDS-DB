CREATE OR REPLACE FORCE EDITIONABLE VIEW "MEDSADMIN"."V_JOB_TRACKING_B" ("MEIC_NUMBER", "PO_NUMBER", "PO_TASK", "STATUS", "JOB_TYPE_NUMBER", "INGRES_NO", "DATE_RECEIVED", "SUPPLIER", "SOURCE", "CLASSIFICATION", "ASSIGNED", "ACKNOWLEDGE", "NO_OBS", "OBS_ACCEPTED", "OBS_REJECTED", "COLLECTION_START", "COLLECTION_END", "QA_PROCESSING_TARGET", "QA_PROCESSING_COMPLETED", "QA_PROCESSING_NAME", "DATABASED", "DATABASED_NAME", "VALIDATED", "VALIDATED_NAME", "COMMENTS", "PRIORITY_REGION", "JOB_TYPE_DESCRIPTION", "JOB_DATA_TYPE", "DATE_RECEIVED_RANGE", "JOB_DATA_TYPE_DESCRIPTION") DEFAULT COLLATION "USING_NLS_COMP"  AS 
  with cte1 as
  (
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
    ,   case when priority_region1 = 'N' then '' else '1,' end ||
        case when priority_region2 = 'N' then '' else '2,' end ||
        case when priority_region3 = 'N' then '' else '3,' end ||
        case when priority_region4 = 'N' then '' else '4,' end ||
        case when priority_region5 = 'N' then '' else '5,' end ||
        case when priority_region6 = 'N' then '' else '6,' end as priority_region
    , b.description
    , a.job_data_type
    from        job_tracking a
    inner join  meds_job_type b on b.job_type_number = a.job_type_number
  ), cte2 as
(
    select 
         sysdate as current_date
    ,    add_months(sysdate, -1) as previous_month
    ,    last_day(add_months(sysdate, -2)) + 1 as first_day_previous_month
    ,    last_day(add_months(sysdate, -1)) as last_day_previous_month
    ,    trunc(sysdate, 'iw') AS this_week_start_date
    ,    trunc(sysdate, 'iw') + 7 - 1/86400 AS this_week_end_date
    ,    trunc(sysdate - 7, 'iw') AS last_week_start_date
    ,    trunc(sysdate - 7, 'iw') + 7 - 1/86400 AS last_week_end_date
    ,    trunc(sysdate, 'YEAR') AS first_day_this_year
    ,    trunc(sysdate - 365, 'YEAR') as first_day_last_year
    ,    trunc(sysdate, 'YEAR') - 1 AS last_day_last_year
    ,    trunc(sysdate - 730, 'YEAR') as first_day_two_years_ago
    ,    trunc(sysdate - 365, 'YEAR') - 1 AS last_day_two_years_ago
    from dual
)
select
    a."MEIC_NUMBER"
    ,a."PO_NUMBER"
    ,a."PO_TASK"
    ,a."STATUS"
    ,a."JOB_TYPE_NUMBER"
    ,a."INGRES_NO"
    ,a."DATE_RECEIVED"
    ,a."SUPPLIER"
    ,a."SOURCE"
    ,a."CLASSIFICATION"
    ,a."ASSIGNED"
    ,a."ACKNOWLEDGE"
    ,a."NO_OBS"
    ,a."OBS_ACCEPTED"
    ,a."OBS_REJECTED"
    ,a."COLLECTION_START"
    ,a."COLLECTION_END"
    ,a."QA_PROCESSING_TARGET"
    ,a."QA_PROCESSING_COMPLETED"
    ,a."QA_PROCESSING_NAME"
    ,a."DATABASED"
    ,a."DATABASED_NAME"
    ,a."VALIDATED"
    ,a."VALIDATED_NAME"
    ,a."COMMENTS"
    ,substr(a.priority_region, 0, length(a.priority_region) - 1) as priority_region
    ,a."DESCRIPTION"
    ,a."JOB_DATA_TYPE"
    ,
    case  
        when a.date_received > b.last_day_previous_month then 'This Month'
        when a.date_received between b.first_day_previous_month and b.last_day_previous_month then 'Last Month'
        when a.date_received between b.last_week_start_date and b.last_week_end_date then 'Last Week'
        when a.date_received >= trunc(sysdate, 'YEAR') then 'This Year'
        when a.date_received between first_day_last_year and last_day_last_year then 'Last Year'
        when a.date_received between first_day_two_years_ago and last_day_two_years_ago then 'Two Years Ago'
        else 'Older'
    end as date_range
    ,case a.job_data_type
        when 'C' then 'CSV File'
        when 'S' then 'SERD File'
        when 'P' then 'Data Entry'
        else 'Error'
    end as job_data_type_description
from cte1 a
cross apply cte2 b
order by a.status desc, date_received desc
/