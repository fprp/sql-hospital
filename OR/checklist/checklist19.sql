--Checklist 19
SELECT m.nomemedico AS medico, m.ref_numero_sala.numerosala , m.ref_nome_clinica.nomeclinica AS clinica
FROM tb_medico m
WHERE m.nomemedico = 'Filipe Paz'