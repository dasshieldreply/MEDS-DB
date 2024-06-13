create or replace force editionable view V_MANUAL_FORM_NAVIGATION
as
select distinct
   usage                                     as data_type_usage
,  case usage
      when 'BIOLUMINESCENCE' 		then 2101
      when 'DEEP_SCATTERING' 		then 2131
      when 'MLO_BIRDS'		 		then 2111
      when 'MLO_CETACEANS' 	 	then 2142
      when 'MLO_FISH'  		 		then 2151
      when 'MLO_JELLYFISH' 	 	then 2161
      when 'MLO_OTHERS' 	 		then 2171
      when 'MLO_PINNIPEDS'   		then 2181
      when 'MLO_REPTILES' 	 		then 2191
      when 'MLO_Seabed_Contacts' then 2121
      when 'MLO_SHIP'				then 2201
      else	null
   end                                       as observation_page_id
,  case usage
      when 'MLO_CETACEANS' 	 	then 2141
      else	null
   end                                       as track_page_id
from job_lookups
where type    = 'Data Type'
and   generic = 1;
;
