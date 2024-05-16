declare
  v_coordinate number;
begin
   v_coordinate := geospatial_util.dms_to_dd
   ( 
      p_degrees  => 14,
      p_minutes  => 27,
      p_seconds  => 1,
      p_cardinal => 's'
   );

   DBMS_OUTPUT.PUT_LINE('Coordinate = ' || v_coordinate);
end;
