--Checklist 21 Quais medico tem mais de 1 equipamento 
select medico_crm, count(codigo)
from equipamento
group by medico_crm
having count (codigo) > 1