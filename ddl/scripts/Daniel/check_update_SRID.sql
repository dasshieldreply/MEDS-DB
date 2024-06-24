create or replace procedure check_update_SRID 
as 
   v_qry varchar2(1000);
begin
-- Get all the involved tables

   for f_table in 
   (
      select 
         a.table_name,
         a.column_name,
         b.srid
      from all_tab_columns             a
      left join user_sdo_geom_metadata b
         on  b.table_name  = a.table_name
         and b.column_name = a.column_name
      where  a.owner       = 'MEDSADMIN'
      and    a.data_type   = 'SDO_GEOMETRY'
      and    a.table_name  not like 'V_%'
      order  by a.table_name
   ) loop
   
      -- Check user_sdo_geom_metadata
      if f_table.srid is null then     
         -- Insert record if none exists
         v_qry := 'insert into user_sdo_geom_metadata values (' || 
                  chr(39) || f_table.table_name  || chr(39) || ', ' ||
                  chr(39) || f_table.column_name || chr(39) || ', ' ||
                  'mdsys.sdo_dim_array(mdsys.sdo_dim_element(' || chr(39) || 'X' || chr(39) || ', -180, 180, 0.05), ' ||
                  'mdsys.sdo_dim_element(' || chr(39) || 'Y' || chr(39) || ', -90, 90, 0.05)), 4326)';
                  
         dbms_output.put_line(v_qry); 
      else
         dbms_output.put_line(f_table.table_name || ' ' || f_table.column_name || ' ' || f_table.srid);
      end if;
      
      -- Check involved table sdo_geometry column
      
   end loop;
   



-- Check involved table sdo_geometry column

-- If SRID is null update SRID to 4326
    
end check_update_SRID;
/

BEGIN
  CHECK_UPDATE_SRID();
END;
/