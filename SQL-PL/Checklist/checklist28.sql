--Checklist 28 Medicos que tem o mesmo nome que seu paciente, como nenhum é igual, so mostrou o medico  
select paciente.cpfpaciente, medico.nomemedico
from paciente
right outer join medico on paciente.nomepaciente = medico.nomemedico