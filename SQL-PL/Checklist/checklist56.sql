--Checklist 56
DECLARE
	NomeDoMedico medico.nomemedico%TYPE;

BEGIN
	SELECT nomemedico INTO NomeDoMedico
	FROM medico
	WHERE numero_sala = 2;
	dbms_output.put_line(NomeDoMedico);
END;
/