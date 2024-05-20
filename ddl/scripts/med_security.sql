select label l
,      label v
from   v_medsuser_medslayer
where medsuser = 22861119188709553170899832189741586291
order by 1;


select * from medsuser where cmuser_tenant in (select cmuser_tenant from cm.cmuser_tenant where cmuser=22861119188709553170899832189741586291);--=22861119188709553170899832189741586291;

select * from cm.cmuser order by first_name; -- 22861119188709553170899832189741586291 -- 22861119188709553170899832189741586291
select * from cm.cmuser_tenant where cmuser=22861119188709553170899832189741586291;
select * from cm.tenant where tenant in (select tenant from cm.cmuser_tenant where cmuser=22861119188709553170899832189741586291);

27322113901433048735792467755406127546 daniel hydrographyc 
29118953324124761027513986835326622569 daniel medsuser

select * 
from medsuser_medslayer 
where medsuser=29118953324124761027513986835326622569 order by 3;


select a.label
from medslayer a
inner join medsuser_medslayer b on b.medslayer = a.medslayer
inner join medsuser c on c.medsuser=b.medsuser
inner join cm.cmuser_tenant d on d.cmuser_tenant=c.cmuser_tenant
where d.cmuser = 22861119188709553170899832189741586291
and d.tenant = 27261302232574361515666040617100281891
order by a.label;

select distinct meds_job_number from mlo_fish_observation;