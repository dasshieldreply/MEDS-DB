CREATE OR REPLACE package meds_util
as
-- 
------------------------------------------------------- P O P _ M E D S U E R
-- 
procedure pop_medsuser
(p_tenant      number
);
-- 
------------------------------------------------------- PARSE_CSV_FILE
-- 
procedure parse_csv_file
(p_stg_file    number
);
-- 
------------------------------------------------------- PARSE_SERD_FILE
-- 
procedure parse_serd_file
(p_stg_file    number
);
-- 
-------------------------------------------------------
-- 
end meds_util;

/


CREATE OR REPLACE package body meds_util
as
--
g_package constant varchar2(31) := $$plsql_unit || '.';
-- 
------------------------------------------------------- P O P _ M E D S U S E R
-- 
procedure pop_medsuser
(p_tenant           number
)
is
   l_scope                    constant varchar2(61) := g_package||'pop_medsuser';
   l_params                   logger.tab_param;
begin
   --
   logger.append_param (p_params => l_params, p_name => 'p_tenant', p_val => p_tenant);
   logger.log_information (p_text    => 'Start'
                          ,p_scope   => l_scope
                          ,p_params  => l_params
                          );
   --
   -- Populate newly-created cmuser_tenants...
   --
   merge
   into   medsuser t
   using
   (
      select cmuser_tenant
      from   cm.cmuser_tenant
      where  tenant = p_tenant
   )  s
   on
   (
      t.cmuser_tenant = s.cmuser_tenant
   )   
   when not matched then
      --
      insert
      (cmuser_tenant
      )
      values
      (s.cmuser_tenant
      );
   --
   -- Populate legacy 'Processors' where they do not already exist as cmuser_tenants...
   -- Since new 'Processors' will not be created in JOB_LOOKUPS, this is effectively a one-off process...
   --   
   merge
   into   medsuser t
   using
   (
      select distinct
             description full_name
      from   job_lookups
      where  type = 'Processor'            
      minus
      select full_name
      from   cm.cmuser_tenant a
      ,      cm.cmuser          b
      where  a.tenant = p_tenant
      and    b.cmuser = a.cmuser
   )  s
   on
   (
      t.full_name = s.full_name
   )
   when not matched then
      --
      insert
      (full_name
      )
      values
      (s.full_name
      );
   --
   logger.log_information(p_text  => 'End'
                         ,p_scope => l_scope
                         );
   --
exception
when others then
   logger.log_error('Unhandled exception', l_scope, null, l_params);
end pop_medsuser;
--
end meds_util;

/
