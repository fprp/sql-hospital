--Checklist 36 Todas as clinicas que não sao urgencia
select nomeclinica from clinica
minus 
select clinica_urgencia from urgencia 