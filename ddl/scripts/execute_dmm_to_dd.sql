declare
  v_dmm_coordinate geospatial_util.dmm_coordinate_tp;
  v_coordinate number;
begin
   v_dmm_coordinate.degrees         := 27;
   v_dmm_coordinate.decimal_minutes := 20.45;
   v_dmm_coordinate.hemisphere      := 'e';
   
   v_coordinate := geospatial_util.dmm_to_dd( p_dmm_coordinate => v_dmm_coordinate);

   DBMS_OUTPUT.PUT_LINE('Coordinate = ' || v_coordinate);

end;
