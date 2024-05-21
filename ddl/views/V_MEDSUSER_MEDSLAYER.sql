CREATE OR REPLACE FORCE EDITIONABLE VIEW "V_MEDSUSER_MEDSLAYER" 
(
   MEDSUSER_MEDSLAYER
,  MEDSUSER
,  MEDSLAYER
,  LABEL
,  CMUSER
) DEFAULT COLLATION "USING_NLS_COMP"  AS 
select a.medsuser_medslayer
,      a.medsuser
,      a.medslayer
,      b.label
,      c.cmuser
from   medsuser_medslayer  a
,      medslayer          b
,      v_medsuser          c
where  b.medslayer = a.medslayer
and    c.medsuser   = a.medsuser
;