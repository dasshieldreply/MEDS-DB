create or replace force editionable view V_MANUAL_FORM_NAVIGATION
(
   DATA_TYPE_USAGE
,  DATA_TYPE_INDEX
,  PAGE_ID
) as
   select 'BIOLUMINESCENCE', 	    7, 2101 from dual union
   select 'DEEP_SCATTERING', 		21, 2131 from dual union
   select 'MLO_BIRDS', 			    6, 2111 from dual union
   select 'MLO_CETACEANS', 		25, 2141 from dual union
   select 'MLO_FISH', 				24, 2151 from dual union
   select 'MLO_JELLYFISH', 		20, 2161 from dual union
   select 'MLO_OTHERS', 			19, 2171 from dual union
   select 'MLO_PINNIPEDS', 		18, 2181 from dual union
   select 'MLO_REPTILES', 			17, 2191 from dual union
   select 'MLO_Seabed_Contacts',	93, 2121 from dual union
   select 'MLO_SHIP', 				23, 2201 from dual 
;