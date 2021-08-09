--Checklist 43 (A soma dos salarios menos a media dos salarios)
Select (sum(a.salario) - avg(a.salario)) as qtd
From medico a;