create or replace package geospatial_util
as
   type    coordinate_type_tb       is table of varchar2(10);
   coordinate_type_const   constant coordinate_type_tb := coordinate_type_tb('LATITUDE','LONGITUDE');

   type dms_coordinate_tp  is record 
   (
      degrees              number
   ,  minutes              number
   ,	seconds              number
   ,	cardinal             char(1)
   ); 

   type dmm_coordinate_tp  is record 
   (
      degrees              number
   ,	decimal_minutes      number
   ,  cardinal             char(1)
   ); 
    -- -- Converts DMS coordinates (degrees, minutes, seconds, cardinal) to DD (decimals), returning 999 if parameters are not valid coordinates
   function dms_to_dd
   (
       p_degrees           in number
   ,   p_minutes           in number
   ,	 p_seconds           in number
   ,	 p_cardinal          in varchar2
   ) 
   return number;
     -- -- Converts DMM coordinates (degrees, decimal minutes, cardinal) to DD (decimals), returning 999 if parameters are not valid coordinates  
   function dmm_to_dd
   (
       p_degrees           in number
   ,	 p_decimal_minutes   in number
   ,   p_cardinal          in varchar2
   ) 
   return number;
    -- -- Converts DD (decimals, lat/long) coordinates to DMS (degrees, minutes, seconds, cardinal), returning 999 if parameters are not valid latitude or longitude   
   function dd_to_dms
   (
       p_dd_coordinate     in number
    ,  p_coordinate_type   in varchar2 
   ) 
   return dms_coordinate_tp;
-- 
------------------------------------------------------- D D _ T O _ D M S _ S T R I N G 
-- 
    -- -- Converts DD (decimals, lat/long) coordinates to DMS (degrees, minutes, seconds, cardinal), returning colon-delimited string - D:M:S:C       
   function dd_to_dms_string
   (p_dd_coordinate     in number
   ,p_coordinate_type   in varchar2
   ,p_discard_seconds   in varchar2 default 'n'
   ) 
   return                  varchar2;   
   
    -- -- Converts DD (decimals, lat/long) coordinates to DMM (degrees, decimal minutes, cardinal), returning 999 if parameters are not valid latitude or longitude 
   function dd_to_dmm
   (
       p_dd_coordinate     in number
    ,  p_coordinate_type   in varchar2
   ) 
   return dmm_coordinate_tp;

end geospatial_util;
/

-- -----------------------------------------------------------------------------------------------------------------
-- PACKAGE BODY
-- -----------------------------------------------------------------------------------------------------------------

create or replace package body geospatial_util
as
--
g_package constant varchar2(31) := $$plsql_unit || '.';
---- 

   type    cardinal_tb              is table of char(1);
   cardinal_const          constant cardinal_tb := cardinal_tb('N','S','E','W');

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
    ,   p_coordinate_type   in varchar2
    ) return dms_coordinate_tp   
    is
        v_dms_coordinate    dms_coordinate_tp;
        v_d                 number default 0;
        v_m                 number default 0;
        v_s                 number default 0;
        v_h                 char(1);
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
    ,   p_coordinate_type   in varchar2
    ) return dmm_coordinate_tp
    is
        v_dmm_coordinate    dmm_coordinate_tp;
        v_d                 number default 0;
        v_dm                number default 0;
        v_h                 char(1);
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

-- 
------------------------------------------------------- D D _ T O _ D M S _ S T R I N G 
-- 
   function dd_to_dms_string
   (p_dd_coordinate     in number
   ,p_coordinate_type   in varchar2
   ,p_discard_seconds   in varchar2 default 'n'
   ) 
   return                  varchar2   
   is
   -- -- Converts DD (decimals, lat/long) coordinates to DMS (degrees, minutes, seconds, cardinal), returning colon-delimited string - D:M:S:C       
      l_scope                    constant varchar2(61) := g_package||'dd_to_dms_string';
      l_params                   logger.tab_param;
      l_dms_coordinate           dms_coordinate_tp;
      l_dd_coordinate            number := round(p_dd_coordinate,6);
      l_d                        number default 0;
      l_m                        number default 0;
      l_s                        number default 0;
      l_c                        char(1);
   begin
      --
      logger.append_param (p_params => l_params, p_name => 'p_dd_coordinate', p_val => p_dd_coordinate);
      logger.append_param (p_params => l_params, p_name => 'p_coordinate_type', p_val => p_coordinate_type);
      logger.append_param (p_params => l_params, p_name => 'p_discard_seconds', p_val => p_discard_seconds);
      logger.log_information (p_text    => 'Start'
                             ,p_scope   => l_scope
                             ,p_params  => l_params
                             );      
      --
      if upper(p_coordinate_type) member of coordinate_type_const then
         --
         l_d := trunc(l_dd_coordinate);
         l_m := trunc(abs(mod(l_dd_coordinate,1)) * 60);
         --
         if p_discard_seconds = 'n' then
            l_s := round(mod(abs(mod(l_dd_coordinate,1)) * 60, 1) * 60, 0);
         end if;
         --
         if upper(p_coordinate_type) = 'LATITUDE' then
            if l_d < 0 then
               l_d := l_d * -1;
               l_c := 'S';
            else
               l_c := 'N';
            end if;
         else
            if l_d < 0 then
               l_d := l_d * -1;
               l_c := 'W';
            else
               l_c := 'E';
            end if;            
         end if;
      end if;
      --
      l_dms_coordinate.degrees  := l_d;
      l_dms_coordinate.minutes  := l_m;
      l_dms_coordinate.seconds  := l_s;
      l_dms_coordinate.cardinal := l_c;
      --
      logger.log_information(p_text  => 'End'
                            ,p_scope => l_scope
                            );
      --        
      if p_discard_seconds = 'n' then
         return l_d||':'||l_m||':'||l_s||':'||l_c;
      else
         return l_d||':'||l_m||':'||l_c;
      end if;
      --      
   exception
   when others then
      logger.log_error('Unhandled exception', l_scope, null, l_params);
      return ':';
   end dd_to_dms_string;
   --    
end geospatial_util;
/