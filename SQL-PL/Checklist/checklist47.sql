--Checklist 47 Vai mostrar o crm, nomemedico e nome_clinica se o medico trabalhar em alguma clinica. como todos trabalham em alguma, mostra todo.
SELECT crm, nomemedico, nome_clinica
FROM medico 
WHERE EXISTS (SELECT * FROM clinica WHERE nome_clinica = nomeclinica)