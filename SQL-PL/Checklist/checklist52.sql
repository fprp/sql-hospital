--Checklist 52
Declare 
    meses equipamento.garantia%type := 12;

Begin
    Case meses
	when 6 then dbms_output.put_line('6 meses de garantia');
	when 12 then dbms_output.put_line('12 meses de garantia');
	else dbms_output.put_line('Sem garantia');
	end case;
end;
/