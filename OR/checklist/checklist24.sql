-- Checklist 24

-- Uso de IN
SELECT p.nomepaciente FROM tb_paciente p WHERE p.ref_crm_medico.crm IN
(SELECT crm FROM tb_medico WHERE crm > 12348);

-- Uso de ANY
SELECT p.nomepaciente FROM tb_paciente p WHERE p.ref_crm_medico.crm = ANY
(SELECT crm FROM tb_medico WHERE crm > 12348);

-- Uso de ALL - no data found
SELECT p.nomepaciente FROM tb_paciente p WHERE p.ref_crm_medico.crm = ALL
(SELECT crm FROM tb_medico WHERE crm > 12348);