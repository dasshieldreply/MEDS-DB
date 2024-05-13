--10.169444 LATITUDE -- 10 10' 10''S
--20.338889 LONGITUDE -- 20 20' 20''E
declare
   v_l   number default 20.338889;
   v_d   number;
   v_m   number;
   v_s   number;
begin
   v_d := trunc(v_l);
   v_m := trunc(abs(mod(v_l,1)) * 60);
   v_s := round(mod(abs(mod(v_l,1)) * 60, 1) * 60, 0);
   dbms_output.put_line('degrees :' || v_d);
   dbms_output.put_line('minutes :' || v_m);
   dbms_output.put_line('seconds :' || v_s);
end;
   