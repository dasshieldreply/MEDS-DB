--------------------------------------------------------
--  DDL for View V_STG_SERD_ROW_CONTINUATION
--------------------------------------------------------

CREATE OR REPLACE FORCE EDITIONABLE VIEW "MEDSADMIN"."V_STG_SERD_ROW_CONTINUATION" ("STG_FILE_SERD_ROW", "STG_FILE", "ROW_SEQUENCE", "DEPTHLEVELCOUNT", "ROW_GROUP_CONTENT", "ROW_DEPTH_CONTENT") DEFAULT COLLATION "USING_NLS_COMP"  AS 
select a.stg_file_serd_row
,      a.stg_file
,      a.row_sequence
,      substr(a.row_content,86,2)   depthlevelcount
,      substr(a.row_content,8,78)   row_group_content
,      substr(a.row_content,88)     row_depth_content
from   stg_file_serd_row a
where  substr(a.row_content,5,1) = '3'
;