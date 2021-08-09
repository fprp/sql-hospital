-- 44 (nome e salário, apenas dos que apresentam salários entre o menor e a media dos salários)
SELECT m.nomemedico, m.salario 
FROM medico m 
WHERE salario BETWEEN (SELECT min(salario) FROM medico) 
AND (SELECT avg(salario) FROM medico);