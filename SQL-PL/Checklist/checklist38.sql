--Checklist 38 atualizando o ramal das salas com o ramal 2019
update  sala
set ramal = (select nomeclinica from clinica where nomeclinica = 2020)
where ramal = 2019