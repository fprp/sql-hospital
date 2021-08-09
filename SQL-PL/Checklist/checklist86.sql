--Checklist 86
CREATE OR REPLACE TRIGGER DeletaPaciente
AFTER INSERT ON medico
BEGIN
	DELETE FROM paciente WHERE crm_medico = 12349;
END;
/