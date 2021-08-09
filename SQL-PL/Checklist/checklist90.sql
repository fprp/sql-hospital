--Checklist 90
CREATE OR REPLACE TRIGGER checklist_90 INSTEAD OF INSERT ON nao_tem_a FOR EACH ROW

BEGIN
    INSERT INTO paciente(cpfpaciente, nomepaciente,telefonepaciente, crm_medico) 
    VALUES (:new.cpfpaciente,:new.nomepaciente, 00000000, 12345);
END;

INSERT INTO nao_tem_a(cpfpaciente,nomepaciente) VALUES (8451, 'Edmilson Lopes');