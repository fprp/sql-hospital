--Checklist 85
CREATE OR REPLACE TRIGGER TransferePaciente
AFTER INSERT ON medico
BEGIN
	UPDATE paciente SET crm_medico = 12351 WHERE crm_medico = 12346;
END;
/