--Checklist 25 Quais medicamentos estao sendo distribuidos, por quem e pra onde
select *
from distribuir, medicamento, distribuidor
where (nome_medicamento = nomemedicamento) and (cnpj_distribuidor = cnpj)