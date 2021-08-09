--Checklist 27 Pacientes que tem o mesmo nome do seu medico com o respectivo nome e pacientes q tem nome diferente do seu medico,como nenhum paciente tem nome igual ao medico, não vai mostrar nenhum medico
select paciente.cpfpaciente, medico.nomemedico
from paciente
left outer join medico on paciente.nomepaciente = medico.nomemedico