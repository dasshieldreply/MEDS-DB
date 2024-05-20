CREATE OR REPLACE FORCE EDITIONABLE VIEW "MEDSADMIN"."V_CMUSER_MEDSLAYER_STRING" 
(
   "CMUSER"
,  "MEDSLAYER_STRING"
,  "MEDSLAYER_STRING_DISPLAY"
) DEFAULT COLLATION "USING_NLS_COMP"  AS 
select cmuser
,      listagg(medslayer,':') within group (order by medslayer) medslayer_string
,      listagg(label,', ')    within group (order by label)     medslayer_string_display
from   v_medsuser_medslayer
group
by     cmuser;

