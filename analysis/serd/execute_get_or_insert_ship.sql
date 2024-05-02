/*
where country_code      = p_ICES_country_code
and ices_ship_code      = p_ship_number
and ices_ship_flag      = p_ship_number_code
and mias_institute_code = p_MIAS_institute_code
and mias_institute_flag = p_MIAS_institute_number_code
and upper(p_supplier)   = upper(vessel_name)

*/
DECLARE
   P_ICES_COUNTRY_CODE           VARCHAR2(2);
   P_SHIP_NUMBER                 VARCHAR2(2);
   P_SHIP_NUMBER_CODE            NUMBER;
   P_MIAS_INSTITUTE_CODE         VARCHAR2(3);
   P_MIAS_INSTITUTE_NUMBER_CODE  NUMBER;
   P_SUPPLIER                    VARCHAR2(50);
   O_MEDS_SHIP_NUMBER            NUMBER;
BEGIN
   P_ICES_COUNTRY_CODE           := '48';
   P_SHIP_NUMBER                 := '99';
   P_SHIP_NUMBER_CODE            := 1;
   P_MIAS_INSTITUTE_CODE         := '017';
   P_MIAS_INSTITUTE_NUMBER_CODE  := 1;
   P_SUPPLIER                    := 'test';
   
   UPLOAD_SERD_UTIL.GET_OR_INSERT_SHIP(
    P_ICES_COUNTRY_CODE             => P_ICES_COUNTRY_CODE,
    P_SHIP_NUMBER                   => P_SHIP_NUMBER,
    P_SHIP_NUMBER_CODE              => P_SHIP_NUMBER_CODE,
    P_MIAS_INSTITUTE_CODE           => P_MIAS_INSTITUTE_CODE,
    P_MIAS_INSTITUTE_NUMBER_CODE    => P_MIAS_INSTITUTE_NUMBER_CODE,
    P_SUPPLIER                      => P_SUPPLIER,
    O_MEDS_SHIP_NUMBER              => O_MEDS_SHIP_NUMBER
   );

   DBMS_OUTPUT.PUT_LINE('O_MEDS_SHIP_NUMBER = ' || O_MEDS_SHIP_NUMBER);

   --ROLLBACK; 
END;
/*
      select meds_ship_number
      from ship_details
      where country_code      = '48'
      and ices_ship_code      = '99'
      and ices_ship_flag      = 1
      and mias_institute_code = '017'
      and mias_institute_flag = 1
      and upper(vessel_name)   = upper('NRV Alliance')
      order by meds_ship_number;
      
   -- should be made private  once testing is done
   procedure get_or_insert_ship (
      p_ICES_country_code           in varchar2 
   ,  p_ship_number                 in varchar2
   ,  p_ship_number_code            in number  
   ,  p_MIAS_institute_code         in varchar2
   ,  p_MIAS_institute_number_code  in number   
   ,  p_supplier                    in varchar2 
   ,  o_meds_ship_number            out number
   );
*/



