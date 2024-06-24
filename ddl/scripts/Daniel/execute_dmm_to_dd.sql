declare
  v_coordinate number;
begin   
   v_coordinate := geospatial_util.dmm_to_dd
   ( 
      p_degrees  => 180,
      p_decimal_minutes  => 60.00,
      p_cardinal => 'e'
   );
   DBMS_OUTPUT.PUT_LINE('Coordinate = ' || v_coordinate);
end;
