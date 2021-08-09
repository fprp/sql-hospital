--Checklist 7 criar uma view com os pacientes que nao tem a no nome
create view nao_tem_a as
select nomepaciente, cpfpaciente
from paciente
where (nomepaciente not like '%a%') and (nomepaciente not like '%A%')