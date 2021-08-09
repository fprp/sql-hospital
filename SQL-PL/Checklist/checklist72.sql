--Checklist 72
CREATE OR REPLACE PACKAGE medico_pack IS
	FUNCTION get_salario (crm_in medico.crm%TYPE)
		RETURN medico.salario%TYPE;
	
	FUNCTION get_nomemedico (sala_in medico.numero_sala%TYPE)
		RETURN medico.nomemedico%TYPE;
END medico_pack;
/

CREATE OR REPLACE PACKAGE BODY medico_pack IS
	FUNCTION get_salario(crm_in medico.crm%TYPE) RETURN medico.salario%TYPE IS
		sal medico.salario%TYPE;
		BEGIN
			SELECT salario INTO sal
			FROM medico
			WHERE crm = crm_in;
			RETURN sal;
  
		EXCEPTION
		WHEN NO_DATA_FOUND THEN
			RETURN NULL;
	END;
	
	FUNCTION get_nomemedico (sala_in medico.numero_sala%TYPE) RETURN medico.nomemedico%TYPE IS
		nome medico.nomemedico%TYPE;
		BEGIN
			SELECT nomemedico INTO nome
			FROM medico
			WHERE numero_sala = sala_in;
			RETURN nome;
  
		EXCEPTION
		WHEN NO_DATA_FOUND THEN
			RETURN NULL;
	END;
END medico_pack;