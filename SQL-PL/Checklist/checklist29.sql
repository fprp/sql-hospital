--Checklist 29 Todos os pacientes e todos os medicos e todos pacientes e medicos com nomes iguais 
select paciente.nomepaciente, medico.nomemedico
from paciente
full outer join medico on paciente.nomepaciente = medico.nomemedico