CREATE OR REPLACE package geospatial_util
as
   subtype cardinal_sb              is char(1);
   type    cardinal_tb              is table of cardinal_sb;
   cardinal_const          constant cardinal_tb := cardinal_tb('N','S','E','W');
   
   subtype coordinate_type_sb       is varchar2(10);
   type    coordinate_type_tb       is table of coordinate_type_sb;
   coordinate_type_const   constant coordinate_type_tb := coordinate_type_tb('LATITUDE','LONGITUDE');
   
   type dms_coordinate_tp  is record 
   (
      degrees              number
   ,  minutes              number
   ,	seconds              number
   ,	cardinal             cardinal_sb
   ); 
   
   type dmm_coordinate_tp  is record 
   (
      degrees              number
   ,	decimal_minutes      number
   ,  cardinal             cardinal_sb
   ); 

   function dms_to_dd
   (
       p_degrees           in number
   ,   p_minutes           in number
   ,	 p_seconds           in number
   ,	 p_cardinal          in varchar2
   ) 
   return number;
   
   function dmm_to_dd
   (
       p_degrees           in number
   ,	 p_decimal_minutes   in number
   ,   p_cardinal          in varchar2
   ) 
   return number;
   
   function dd_to_dms
   (
       p_dd_coordinate     in number
    ,  p_coordinate_type   in coordinate_type_sb   
   ) 
   return dms_coordinate_tp;
   
   function dd_to_dmm
   (
       p_dd_coordinate     in number
    ,  p_coordinate_type   in coordinate_type_sb    
   ) 
   return dmm_coordinate_tp;

end geospatial_util;
/

-- -----------------------------------------------------------------------------------------------------------------
-- PACKAGE BODY
-- -----------------------------------------------------------------------------------------------------------------

CREATE OR REPLACE package body geospatial_util
as

    function dms_to_dd
    (
        p_degrees       in number
    ,   p_minutes       in number
    ,	p_seconds       in number
    ,	p_cardinal      in varchar2
    ) return number
    is
        v_coordinate    number default 999;
    begin

        if (upper(p_cardinal) member of cardinal_const) 
        and ((upper(p_cardinal) in ('S','N') and (p_degrees between 0 and 90)) 
            or 
             (upper(p_cardinal) in ('E','W') and (p_degrees between 0 and 180))) 
        and (p_minutes between 0 and 60) 
        and (p_seconds between 0 and 60) 
        then
            v_coordinate := p_degrees + round(p_minutes / 60, 6) + round(p_seconds / 3600, 6);

            if upper(p_cardinal) in ('S','W') then
                v_coordinate := v_coordinate * -1;
            end if;
        end if;

        return v_coordinate;
    end dms_to_dd;

    function dmm_to_dd
    (
         p_degrees            in number
      ,	 p_decimal_minutes    in number
      ,  p_cardinal           in varchar2
    ) return number
    is
        v_coordinate          number default 999;    
    begin
        if (upper(p_cardinal) member of cardinal_const) 
        and ((upper(p_cardinal) in ('S','N') and (p_degrees between 0 and 90)) 
            or 
            (upper(p_cardinal) in ('E','W') and (p_degrees between 0 and 180))) 
        and (p_decimal_minutes between 0 and 60) 
        then
            v_coordinate := p_degrees + round(p_decimal_minutes / 60, 6);

            if upper(p_cardinal) in ('S','W') then
                v_coordinate := v_coordinate * -1;
            end if;
        end if;
        
        return v_coordinate;
    end dmm_to_dd;

    function dd_to_dms
    (
        p_dd_coordinate     in number
    ,   p_coordinate_type   in coordinate_type_sb  
    ) return dms_coordinate_tp   
    is
        v_dms_coordinate    dms_coordinate_tp;
        v_d                 number default 0;
        v_m                 number default 0;
        v_s                 number default 0;
        v_h                 cardinal_sb;
    begin
        if upper(p_coordinate_type) member of coordinate_type_const then
            v_d := trunc(p_dd_coordinate);
            v_m := trunc(abs(mod(p_dd_coordinate,1)) * 60);
            v_s := round(mod(abs(mod(p_dd_coordinate,1)) * 60, 1) * 60, 0);

            if upper(p_coordinate_type) = 'LATITUDE' then
                if v_d < 0 then
                    v_d := v_d * -1;
                    v_h := 'S';
                else
                    v_h := 'N';
                end if;
            else
                if v_d < 0 then
                    v_d := v_d * -1;
                    v_h := 'W';
                else
                    v_h := 'E';
                end if;            
            end if;
        end if;

        v_dms_coordinate.degrees  := v_d;
        v_dms_coordinate.minutes  := v_m;
        v_dms_coordinate.seconds  := v_s;
        v_dms_coordinate.cardinal := v_h;

        return v_dms_coordinate;

    end dd_to_dms;

    function dd_to_dmm
    (
        p_dd_coordinate     in number
    ,   p_coordinate_type   in coordinate_type_sb 
    ) return dmm_coordinate_tp
    is
        v_dmm_coordinate    dmm_coordinate_tp;
        v_d                 number default 0;
        v_dm                number default 0;
        v_h                 cardinal_sb;
    begin

        if upper(p_coordinate_type) member of coordinate_type_const then
            v_d  := trunc(p_dd_coordinate);
            v_dm := round(abs(mod(p_dd_coordinate,1)) * 60, 3);

            if upper(p_coordinate_type) = 'LATITUDE' then
                if v_d < 0 then
                    v_d := v_d * -1;
                    v_h := 'S';
                else
                    v_h := 'N';
                end if;
            else
                if v_d < 0 then
                    v_d := v_d * -1;
                    v_h := 'W';
                else
                    v_h := 'E';
                end if;            
            end if;
        end if;

        v_dmm_coordinate.degrees            := v_d;
        v_dmm_coordinate.decimal_minutes    := v_dm;
        v_dmm_coordinate.cardinal           := v_h;

        return v_dmm_coordinate;
    end dd_to_dmm;

end geospatial_util;
/