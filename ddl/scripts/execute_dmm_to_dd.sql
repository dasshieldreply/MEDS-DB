declare
  v_coordinate number;
begin   
   v_coordinate := geospatial_util.dmm_to_dd
   ( 
      p_degrees  => 14,
      p_decimal_minutes  => 27.45,
      p_cardinal => 's'
   );
   DBMS_OUTPUT.PUT_LINE('Coordinate = ' || v_coordinate);
end;
