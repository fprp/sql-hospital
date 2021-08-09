--Checklist 46 (ordenado de forma crescente de precisao, aplicacao e codigo do equipamento)
Select f.instrucao, f.precisao
From funcionalidade f
Order by f.precisao, f.aplicacao, f.codigo_equipamento;