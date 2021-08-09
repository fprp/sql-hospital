--Checklist 51
Declare 
    Pesado equipamento.peso%type := 10;

Begin
    if(Pesado > 5) then 
       Update equipamento
       Set peso = Pesado;
       dbms_output.put_line('Todos os equipamento sao do mesmo peso e são pesados');
	elsif (Pesado < 5) then
		dbms_output.put_line('Equipamentos leves');
    else 
        dbms_output.put_line('Equipamentos de peso mediano');
    end if;
end;
/