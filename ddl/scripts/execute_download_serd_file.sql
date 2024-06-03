declare
   p_medsfilter   number;
   v_return medsadmin.download_serd_util.serd_table;
begin
   p_medsfilter   := 33291604255346497974307817588378984392;
   
   for ret in 
   (
      select * 
      bulk collect into v_return
      from table(download_serd_util.download_sv_serd_file(p_medsfilter))
   ) loop
      dbms_output.put_line(ret.record_data);
   end loop;
end;
