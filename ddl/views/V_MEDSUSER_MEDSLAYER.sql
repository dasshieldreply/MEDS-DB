CREATE OR REPLACE FORCE EDITIONABLE VIEW "V_MEDSUSER_MEDSLAYER" 
(
   MEDSUSER_MEDSLAYER
,  MEDSUSER
,  MEDSLAYER
,  LABEL
,  USAGE
,  CMUSER
) DEFAULT COLLATION "USING_NLS_COMP"  AS 
select a.medsuser_medslayer
,      a.medsuser
,      a.medslayer
,      b.label
,      b.usage
,      c.cmuser
from   medsuser_medslayer  a
,      medslayer           b
,      v_medsuser          c
where  b.medslayer = a.medslayer
and    c.medsuser   = a.medsuser
;