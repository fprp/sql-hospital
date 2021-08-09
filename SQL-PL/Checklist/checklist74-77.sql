--Checklist 74 e 77
CREATE OR REPLACE TRIGGER atualizou
AFTER UPDATE OF crm, nomemedico ON medico

BEGIN
	dbms_output.put_line('CRM e/ou Nome do Médico atualizados com sucesso!');
END;
/