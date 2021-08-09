--Checklist 54 e 60
DECLARE
	CURSOR pessoas is
		SELECT nomepaciente, telefonepaciente
		FROM paciente;
	reg_pessoas pessoas%ROWTYPE;

BEGIN
	OPEN pessoas;
	FETCH pessoas INTO reg_pessoas;
	WHILE pessoas%found LOOP
		dbms_output.put_line(reg_pessoas.nomepaciente ||' '||reg_pessoas.telefonepaciente);
		FETCH pessoas INTO reg_pessoas;
	END LOOP;
	CLOSE pessoas;
END;
/