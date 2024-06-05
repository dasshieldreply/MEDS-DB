declare
   p_medsfilter   number;
   v_return medsadmin.download_serd_util.serd_table;
begin
   dbms_output. enable (buffer_size => null); 
   p_medsfilter   := 34734195941609100775898109151233599034;
   
   for ret in 
   (
      select * 
      bulk collect into v_return
      from table(download_serd_util.download_sv_serd_file(p_medsfilter))
   ) loop
      dbms_output.put_line(ret.record_data);
   end loop;
end;
