select a.data_type
    ,b.job_type_number
    ,c.description
    ,d.description as using_description
    ,e.description as using_usage
from meds_processing_job a
inner join job_tracking b on b.meic_number = a.meic_number
inner join meds_job_type c on c.job_type_number = b.job_type_number
left join job_lookups d on d.type='Data Type' and d.description=a.data_type
left join job_lookups e on e.type='Data Type' and e.usage=a.data_type;

select * from job_lookups where type='Data Type';
select * from job_lookups where description='Observed Physical Data';
select * from meds_processing_job;
select * from job_tracking;


