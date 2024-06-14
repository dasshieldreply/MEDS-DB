set serveroutput on
/
set linesize 32767
/
spool C:\Oracle\Temp\test_tonly.srd 
--spool C:\Oracle\Temp\test_ts.srd 
--spool C:\Oracle\Temp\test_sv.srd
/
declare
   p_medsfilter   number;
   v_return       download_serd_util.serd_table;
begin
   dbms_output. enable (buffer_size => null); 
   p_medsfilter   := 33293250143290042671528300228536572957; -- tonly
   --p_medsfilter   := 33291604255344080122668588330029572040; -- ts
   --p_medsfilter   := 34734195941609100775898109151233599034; -- sv

   for ret in 
   (
      select * 
      bulk collect into v_return
      from table(download_serd_util.download_tonly_serd_file(p_medsfilter)) -- tonly
      --from table(download_serd_util.download_ts_serd_file(p_medsfilter)) -- ts           
      --from table(download_serd_util.download_sv_serd_file(p_medsfilter))   --sv
   ) loop
      dbms_output.put_line(ret.record_data);
   end loop;
end;
/
spool off
/