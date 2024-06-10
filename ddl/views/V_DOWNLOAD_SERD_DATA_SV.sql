create or replace force editionable view "V_DOWNLOAD_SERD_DATA_SV" as
with dta as
(
   select
      a.medsfilter
   ,  b.meds_job_number
   ,  b.meds_observation_number
   ,  b.depth
   ,  trunc(row_number() over(partition by a.medsfilter, b.meds_job_number, b.meds_observation_number
                         order          by a.medsfilter, b.meds_job_number, b.meds_observation_number) / 50) + 1 as row_no
   ,  '0'                                                            || --depth_indicator 
      to_char(b.depth,'fm0000')                                      || 
      b.d_quality                                                    ||
      nvl(replace(to_char(b.temperature,'fm00.00'),'.',''),'    ')   || 
      b.t_quality                                                    || 
      nvl(replace(to_char(b.salinity,'fm00.000'),'.',''),'     ')    ||
      b.s_quality                                                    ||
      nvl(replace(to_char(b.sv_recorded,'fm0000.0'),'.',''),'     ') ||
      b.sv_quality                                                   ||
      b.sv_code 
         as row_vl 
   from  v_filter_meds_job_number   a
   ,     profile_data_sv            b
   where a.label_layer     = 'SOUND VELOCITY'
   and   b.meds_job_number = a.meds_job_number	
   order by medsfilter
   ,        meds_job_number
   ,        meds_observation_number
   ,        depth  
) 
select 
   medsfilter
,  meds_job_number
,  meds_observation_number   
,  row_no 
,  length(listagg(row_vl) within group (order by medsfilter, meds_job_number, meds_observation_number, row_no)) / 24 as row_depth_no
,  listagg(row_vl) within group (order by medsfilter, meds_job_number, meds_observation_number, row_no, depth)  as row_vl
from dta 
group by medsfilter
,        meds_job_number
,        meds_observation_number
,        row_no;