--Checklist 23 qual medico cuida de mais de 2 pacientes q n tem a minusculo no nome
select crm_medico
from paciente
where nomepaciente not like '%a%'
group by crm_medico
having count (cpfpaciente) > 2