declare
   p_dd_coordinate    number;
   p_coordinate_type  varchar2(10);
   v_return medsadmin.geospatial_util.dms_coordinate_tp;
begin
   p_dd_coordinate    := -14.173889;
   p_coordinate_type  := 'latitude';
   
   v_return := geospatial_util.dd_to_dms(
      p_dd_coordinate   => p_dd_coordinate,
      p_coordinate_type => p_coordinate_type
   );

   dbms_output.put_line(v_return.degrees);
   dbms_output.put_line(v_return.minutes);
   dbms_output.put_line(v_return.seconds);
   dbms_output.put_line(v_return.cardinal);
   
end;
