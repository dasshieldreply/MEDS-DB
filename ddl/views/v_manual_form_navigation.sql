create or replace force editionable view V_MANUAL_FORM_NAVIGATION
(
   DATA_TYPE_USAGE
,  DATA_TYPE_INDEX
,  OBSERVATION_PAGE_ID
,  TRACK_PAGE_ID
) as
   select 'BIOLUMINESCENCE', 	    7, 2101, null from dual union
   select 'DEEP_SCATTERING', 		21, 2131, null from dual union
   select 'MLO_BIRDS', 			    6, 2111, null from dual union
   select 'MLO_CETACEANS', 		25, 2142, 2141 from dual union
   select 'MLO_FISH', 				24, 2151, null from dual union
   select 'MLO_JELLYFISH', 		20, 2161, null from dual union
   select 'MLO_OTHERS', 			19, 2171, null from dual union
   select 'MLO_PINNIPEDS', 		18, 2181, null from dual union
   select 'MLO_REPTILES', 			17, 2191, null from dual union
   select 'MLO_Seabed_Contacts',	93, 2121, null from dual union
   select 'MLO_SHIP', 				23, 2201, null from dual 
;