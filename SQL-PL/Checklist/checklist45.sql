--Checklist 45 (código da clinica urgência e o codigo do nome medicamento recebidos por essas clinicas por diversos distribuidores)
Select u.clinica_urgencia, d.nome_medicamento 
From urgencia u Inner Join
    distribuir d on u.clinica_urgencia = d.clinica_nome Inner Join
    medicamento m on d.nome_medicamento = m.nomemedicamento;