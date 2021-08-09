--Checklist 19 (Nome dos medicos por quantidade de salario)
Select a.nomemedico, count(a.salario)
From medico a
Group by a.nomemedico;