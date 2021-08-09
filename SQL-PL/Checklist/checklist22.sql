--Checklist 22 Quantos equipamentos tem cada medico
select medico_crm, count(codigo)
from equipamento
group by medico_crm
having count (codigo) in (select codigo from equipamento)