--Checklist 53 e 59
DECLARE
	s CHAR(1) := 'F';
	medicas medico.nomemedico%type;
	CURSOR medico_F is
		SELECT nomemedico FROM medico
		WHERE sexo = s;
BEGIN
	OPEN medico_F;
	LOOP
		FETCH medico_F INTO medicas;
		EXIT WHEN medico_F%notfound;
		dbms_output.put_line(medicas);
	END LOOP;
	CLOSE medico_F;
END;
/