--Checklist 2 selecionar o cpf do gestor que fez vistoria entre essas datas
Select cpf_gestor
From esp_vistoria_ges
where data_vistoria between to_date( '26/06/2019', 'dd/mm/yyyy') and to_date( '26/07/2019', 'dd/mm/yyyy');