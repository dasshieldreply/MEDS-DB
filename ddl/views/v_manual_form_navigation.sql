create or replace force editionable view V_MANUAL_FORM_NAVIGATION
(
   DATA_TYPE_USAGE
,  DATA_TYPE_INDEX
,  PAGE_ID
) as
   select 'BIOLUMINESCENCE', 	    7, 2201 from dual union
   select 'DEEP_SCATTERING', 		21, 2211 from dual union
   select 'MLO_BIRDS', 			    6, 2221 from dual union
   select 'MLO_CETACEANS', 		25, 2231 from dual union
   select 'MLO_FISH', 				24, 2241 from dual union
   select 'MLO_JELLYFISH', 		20, 2251 from dual union
   select 'MLO_OTHERS', 			19, 2261 from dual union
   select 'MLO_PINNIPEDS', 		18, 2271 from dual union
   select 'MLO_REPTILES', 			17, 2281 from dual union
   select 'MLO_Seabed_Contacts',	93, 2291 from dual union
   select 'MLO_SHIP', 				23, 2301 from dual 
;