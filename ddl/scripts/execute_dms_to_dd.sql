declare
  v_dms_coordinate geospatial_util.dms_coordinate_tp;
  v_coordinate number;
begin
   v_dms_coordinate.degrees      := 14;
   v_dms_coordinate.minutes      := 27;
   v_dms_coordinate.seconds      := 1;
   v_dms_coordinate.hemisphere   := 'w';
   
   v_coordinate := geospatial_util.dms_to_dd( p_dms_coordinate => v_dms_coordinate);

   DBMS_OUTPUT.PUT_LINE('Coordinate = ' || v_coordinate);

end;
