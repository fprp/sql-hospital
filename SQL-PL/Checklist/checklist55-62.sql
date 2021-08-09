--Checklist 55 e 62
DECLARE
BEGIN
	FOR reg_func IN (SELECT aplicacao, instrucao
					FROM funcionalidade) 
	LOOP
		dbms_output.put_line(reg_func.aplicacao||' '||reg_func.instrucao);
	END LOOP;
END;
/