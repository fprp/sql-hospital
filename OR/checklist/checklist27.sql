--Checklist 27

SELECT m.ref_medico_crm.crm
FROM tb_equipamento m
WHERE EXISTS (SELECT garantia FROM tb_equipamento WHERE garantia = 12)