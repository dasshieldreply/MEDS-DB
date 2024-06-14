declare
   l_clob         clob;
begin
   l_clob := download_serd_util.get_serd_file
   (
      p_medsfilter => 34734195941609100775898109151233599034,
      p_serd_type  => 'SV'
   );
   
end;
