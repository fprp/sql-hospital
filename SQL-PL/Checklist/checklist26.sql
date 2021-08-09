--Checklist 26 Medicos e suas respectivas clinicas 
select medico.nomemedico, clinica.nomeclinica
from medico
inner join clinica on medico.nome_clinica = clinica.nomeclinica