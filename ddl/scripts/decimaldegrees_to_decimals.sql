--10.169444 LATITUDE -- 10 10' 10''S
--20.338889 LONGITUDE -- 20 20' 20''E
declare
   v_l   number default -7.952222;
   v_d   number;
   v_m   number;
   v_s   number;
   v_h   char(1);
begin
   v_d := trunc(v_l);
   v_m := trunc(abs(mod(v_l,1)) * 60);
   v_s := round(mod(abs(mod(v_l,1)) * 60, 1) * 60, 0);
   
   if v_d < 0 then
      v_d := v_d * -1;
      v_h := 'S';
   else
      v_h := 'N';
   end if;
   
   dbms_output.put_line('degrees   : ' || v_d);
   dbms_output.put_line('minutes   : ' || v_m);
   dbms_output.put_line('seconds   : ' || v_s);
   dbms_output.put_line('hemisfere : ' || v_h);   
end;
   