declare
   l_clob         clob;
begin
   l_clob := download_serd_util.get_serd_file
   (
      p_medsfilter => 33293250143290042671528300228536572957,
      p_serd_type  => 'TONLY'
   );
   
end;
