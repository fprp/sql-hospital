--Checklist 83
CREATE OR REPLACE TRIGGER Impossivel_deletar
BEFORE DELETE ON tipo_de_especializacao
FOR EACH ROW
WHEN (old.tipos_de_especializacao = 'Cardiologista')

BEGIN
	dbms_output.put_line('Clinica de Cardiologia nao pode ser removida!');
END;
/