--Checklist 4 selecionando todos os medicos que são da mesma clinica
select nomemedico
from medico
where nome_clinica in (select nomeclinica from clinica)