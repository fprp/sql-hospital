--Checklist 61
DECLARE
	CURSOR cur_medico (sal DECIMAL) is
		SELECT nomemedico, sexo, salario
		FROM medico
		WHERE salario > sal;
	reg_medico cur_medico%ROWTYPE;

BEGIN
	OPEN cur_medico(16000.00);
	LOOP
		FETCH cur_medico INTO reg_medico;
		EXIT WHEN cur_medico%NOTFOUND;
		dbms_output.put_line(reg_medico.nomemedico||' '||reg_medico.sexo
							||' '||reg_medico.salario);
	END LOOP;
	CLOSE cur_medico;
END;
/