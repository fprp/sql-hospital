-- Checklist 23

-- Uso do LIKE e BETWEEN
SELECT m.nomemedico FROM tb_medico m WHERE m.salario BETWEEN 16000.00 and 21000.00 and m.nomemedico like 'F%';

-- Uso de ORDER BY - Nome dos médicos ordenados pelo número da sala
SELECT m.nomemedico FROM tb_medico m 
ORDER BY m.ref_numero_sala.numerosala;

-- Uso de GROUP BY e HAVING
SELECT E.ref_medico_crm.nomemedico, AVG(E.peso) media_peso
FROM tb_equipamento E
GROUP BY E.ref_medico_crm.nomemedico
HAVING AVG(E.peso) > 1;