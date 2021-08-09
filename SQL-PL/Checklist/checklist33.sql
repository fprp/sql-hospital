--Checklist 33 Mostrar os pacientes e o respectivo crm do seu medico
SELECT a.nomepaciente AS Nome_Do_Paciente, a.crm_medico AS CRM_Do_Seu_Medico
FROM paciente a
WHERE a.crm_medico IN (SELECT crm FROM medico WHERE crm = a.crm_medico)