--inserindo Sala (8 no total)
INSERT INTO sala(numerosala, ramal, tamanho) VALUES (1, 7777, 25); 
INSERT INTO sala(numerosala, ramal, tamanho) VALUES (2, 8547, 30); 
INSERT INTO sala(numerosala, ramal, tamanho) VALUES (3, 9123, 20); 
INSERT INTO sala(numerosala, ramal, tamanho) VALUES (4, 7258, 33); 
INSERT INTO sala(numerosala, ramal, tamanho) VALUES (5, 8917, 25);
INSERT INTO sala(numerosala, ramal, tamanho) VALUES (6, 7987, 40); 
INSERT INTO sala(numerosala, ramal, tamanho) VALUES (7, 2345, 15); 
INSERT INTO sala(numerosala, ramal, tamanho) VALUES (8, 2347, 19); 

--inserindo Clínica (4 no total) 
INSERT INTO clinica(nomeclinica, telefoneclinica, cep, numeroclinica, complemento) VALUES (2019, 32418347, 52041535, 226, 'Segundo Andar');
INSERT INTO clinica(nomeclinica, telefoneclinica, cep, numeroclinica, complemento) VALUES (2020, 34661687, 51010420, 202, 'Terreo'); 
INSERT INTO clinica(nomeclinica, telefoneclinica, cep, numeroclinica, complemento) VALUES (2021, 31268792, 51041420, 276, 'Terreo'); 
INSERT INTO clinica(nomeclinica, telefoneclinica, cep, numeroclinica, complemento) VALUES (2022, 96791115, 53012870, 403, 'Primeiro Andar');

--inserindo Médico (8 no total)
INSERT INTO medico (crm, nomemedico, sexo, salario, numero_sala, nome_clinica) VALUES (12345, 'Tayse Fernandes', 'F', 20000.00, 1, 2021);
INSERT INTO medico (crm, nomemedico, sexo, salario, numero_sala, nome_clinica) VALUES (12346, 'Filipe Paz', 'M', 20000.00, 2, 2021); 
INSERT INTO medico (crm, nomemedico, sexo, salario, numero_sala, nome_clinica) VALUES (12347, 'Diego Lacerda', 'M', 15000.00, 3, 2019); 
INSERT INTO medico (crm, nomemedico, sexo, salario, numero_sala, nome_clinica) VALUES (12348, 'Beatriz Lubre', 'F', 17000.00, 4, 2020); 
INSERT INTO medico (crm, nomemedico, sexo, salario, numero_sala, nome_clinica) VALUES (12349, 'Gabriel Lucas', 'M', 19500.00, 5, 2022); 
INSERT INTO medico (crm, nomemedico, sexo, salario, numero_sala, nome_clinica) VALUES (12340, 'Ana Julia', 'F', 15980.00, 6, 2022);
INSERT INTO medico (crm, nomemedico, sexo, salario, numero_sala, nome_clinica) VALUES (12351, 'Maria Eduarda', 'F', 13350.00, 7, 2022);
INSERT INTO medico (crm, nomemedico, sexo, salario, numero_sala, nome_clinica) VALUES (68514, 'Fabio Reis', 'M', 18970.00, 8, 2019);





--inserindo Paciente(15 no total)
INSERT INTO paciente(cpfpaciente, nomepaciente, telefonepaciente, crm_medico) VALUES (1111, 'Bon Jovi', 98749825, 12345);
INSERT INTO paciente(cpfpaciente, nomepaciente, telefonepaciente, crm_medico) VALUES (2222, 'Axl Rose', 89356423, 12345);
INSERT INTO paciente(cpfpaciente, nomepaciente, telefonepaciente, crm_medico) VALUES (3333, 'Bruce Dickson', 96669887, 12345);
INSERT INTO paciente(cpfpaciente, nomepaciente, telefonepaciente, crm_medico) VALUES (4444, 'Steven Wilson', 95421348, 12346);
INSERT INTO paciente(cpfpaciente, nomepaciente, telefonepaciente, crm_medico) VALUES (5555, 'Bruce Wayne', 88889999, 12346);
INSERT INTO paciente(cpfpaciente, nomepaciente, telefonepaciente, crm_medico) VALUES (6666, 'Robert Fripp', 99999999, 12346);
INSERT INTO paciente(cpfpaciente, nomepaciente, telefonepaciente, crm_medico) VALUES (7778, 'Anakin Skywalker', 88888888, 12347);
INSERT INTO paciente(cpfpaciente, nomepaciente, telefonepaciente, crm_medico) VALUES (8888, 'Keith Emerson', 99999998, 12347);
INSERT INTO paciente(cpfpaciente, nomepaciente, telefonepaciente, crm_medico) VALUES (9999, 'Greg Lake', 99999988, 12348);
INSERT INTO paciente(cpfpaciente, nomepaciente, telefonepaciente, crm_medico) VALUES (9988, 'Carl Palmer', 99999888, 12348);
INSERT INTO paciente(cpfpaciente, nomepaciente, telefonepaciente, crm_medico) VALUES (8899, 'Geddy Lee', 99998888, 12349);
INSERT INTO paciente(cpfpaciente, nomepaciente, telefonepaciente, crm_medico) VALUES (1212, 'Alex Lifeson', 99988888, 12349);
INSERT INTO paciente(cpfpaciente, nomepaciente, telefonepaciente, crm_medico) VALUES (2121, 'Neil Peart', 98888888, 12340);
INSERT INTO paciente(cpfpaciente, nomepaciente, telefonepaciente, crm_medico) VALUES (6556, 'Obi Wan', 82546524, 12351);
INSERT INTO paciente(cpfpaciente, nomepaciente, telefonepaciente, crm_medico) VALUES (5665, 'Frodo Baggins', 96544569, 68514);

--inserindo Equipamentos (15 no total)
INSERT INTO equipamento(codigo, peso, garantia, medico_crm) VALUES (1, 9.5, 5, 12345);
INSERT INTO equipamento(codigo, peso, garantia, medico_crm) VALUES (2, 1.0, 1, 12345);
INSERT INTO equipamento(codigo, peso, garantia, medico_crm) VALUES (3, 0.5, 12, 12346);
INSERT INTO equipamento(codigo, peso, garantia, medico_crm) VALUES (4, 0.8, 12, 12346);
INSERT INTO equipamento(codigo, peso, garantia, medico_crm) VALUES (5, 0.7, 12, 12348);
INSERT INTO equipamento(codigo, peso, garantia, medico_crm) VALUES (6, 0.2, 12, 12348);
INSERT INTO equipamento(codigo, peso, garantia, medico_crm) VALUES (7, 0.2, 6, 12340);
INSERT INTO equipamento(codigo, peso, garantia, medico_crm) VALUES (8, 0.1, 6, 12340);
INSERT INTO equipamento(codigo, peso, garantia, medico_crm) VALUES (9, 0.3, 3, 12349);
INSERT INTO equipamento(codigo, peso, garantia, medico_crm) VALUES (10, 0.4, 3, 12349);
INSERT INTO equipamento(codigo, peso, garantia, medico_crm) VALUES (11,2.2, 6, 12347);
INSERT INTO equipamento(codigo, peso, garantia, medico_crm) VALUES (12, 3.4, 24, 12347);
INSERT INTO equipamento(codigo, peso, garantia, medico_crm) VALUES (13, 0.45, 12, 68514);
INSERT INTO equipamento(codigo, peso, garantia, medico_crm) VALUES (14, 1.5, 48, 12351);
INSERT INTO equipamento(codigo, peso, garantia, medico_crm) VALUES (15, 6.2, 48, 12351);

--inserindo Funcionalidade (18 no total)
INSERT INTO funcionalidade(aplicacao, codigo_equipamento, instrucao, precisao) VALUES (001, 1, 'Balanca: Medir a massa corporal', 98);
INSERT INTO funcionalidade(aplicacao, codigo_equipamento, instrucao, precisao) VALUES (002, 2, 'Estetoscopio: Escutar som no corpo', 96);
INSERT INTO funcionalidade(aplicacao, codigo_equipamento, instrucao, precisao) VALUES (003, 3, 'Termometro: Medir temperatura corporal', 99);
INSERT INTO funcionalidade(aplicacao, codigo_equipamento, instrucao, precisao) VALUES (004, 4, 'Medidor de pressao: Medir a pressão arterial', 97);
INSERT INTO funcionalidade(aplicacao, codigo_equipamento, instrucao, precisao) VALUES (005, 5, 'Medidor de glicose: Medir a glicose no sangue', 97);
INSERT INTO funcionalidade(aplicacao, codigo_equipamento, instrucao, precisao) VALUES (006, 6, 'Oximetro: Medir o oxigenio no sangue', 94);
INSERT INTO funcionalidade(aplicacao, codigo_equipamento, instrucao, precisao) VALUES (007, 7, 'Otoscopio: Olhar no interior da orelha', 100);
INSERT INTO funcionalidade(aplicacao, codigo_equipamento, instrucao, precisao) VALUES (008, 8, 'Especulo nasal: Analisar o interior do nariz', 100);
INSERT INTO funcionalidade(aplicacao, codigo_equipamento, instrucao, precisao) VALUES (009, 9, 'Oftalmoscopio: Observar fundo do olho', 99);
INSERT INTO funcionalidade(aplicacao, codigo_equipamento, instrucao, precisao) VALUES (010, 10, 'Tonometro: Medir a pressao do olho', 97);
INSERT INTO funcionalidade(aplicacao, codigo_equipamento, instrucao, precisao) VALUES (011, 11, 'Tala imobilizadora: Imobilizar alguma parte do corpo', 99);
INSERT INTO funcionalidade(aplicacao, codigo_equipamento, instrucao, precisao) VALUES (012, 12, 'Cadeira de roda: Promover a locomocao', 100);
INSERT INTO funcionalidade(aplicacao, codigo_equipamento, instrucao, precisao) VALUES (013, 13, 'Nebulizador: Tratar doencas respiratorias', 95);
INSERT INTO funcionalidade(aplicacao, codigo_equipamento, instrucao, precisao) VALUES (014, 13, 'Nebulizador: Administrar solucoes', 99);
INSERT INTO funcionalidade(aplicacao, codigo_equipamento, instrucao, precisao) VALUES (015, 14, 'Desfibrilador: Evitar a morte', 25);
INSERT INTO funcionalidade(aplicacao, codigo_equipamento, instrucao, precisao) VALUES (016, 14, 'Desfibrilador: Tratar arritmias', 88);
INSERT INTO funcionalidade(aplicacao, codigo_equipamento, instrucao, precisao) VALUES (017, 15, 'Eletrocardiografo: Medir o ritmo do coracao', 92);
INSERT INTO funcionalidade(aplicacao, codigo_equipamento, instrucao, precisao) VALUES (018, 15, 'Eletrocardiografo: Detectar o numero de batimentos por minuto', 90);

--inserindo Urgencia (2 no total)
INSERT INTO urgencia(clinica_urgencia) VALUES (2020);
INSERT INTO urgencia(clinica_urgencia) VALUES (2021);

--inserindo Especialização(1 no total)
INSERT INTO especializada(clinica_especializada) VALUES (2022);

--inserindo Tipos De Especialização (3 no total)
INSERT INTO tipo_de_especializacao(clinica_especializacao, tipos_de_especializacao) VALUES (2022, 'Oftalmologista');
INSERT INTO tipo_de_especializacao(clinica_especializacao, tipos_de_especializacao) VALUES (2022, 'Otorrinolaringologista');
INSERT INTO tipo_de_especializacao(clinica_especializacao, tipos_de_especializacao) VALUES (2022, 'Cardiologista');

--inserindo Gestor (3 no total)
INSERT INTO gestor(cpfgestor, nomegestor, telefonegestor) VALUES (3570, 'Neil Gaiman', 65419874);
INSERT INTO gestor(cpfgestor, nomegestor, telefonegestor) VALUES (0781, 'Frank Miller', 16483657);
INSERT INTO gestor(cpfgestor, nomegestor, telefonegestor) VALUES (3541, 'Peter Park', 55584443);

--inserindo Medicamentos(8 no total) 
INSERT INTO medicamento(nomemedicamento, dosagem, indicacao) VALUES (0001, 2, 'Dipirona: Analgesico'); 
INSERT INTO medicamento(nomemedicamento, dosagem, indicacao) VALUES (0002, 1, 'Buscopan: Colicas');
INSERT INTO medicamento(nomemedicamento, dosagem, indicacao) VALUES (0003, 1200, 'Benzetacil: Tratamento de infecção');
INSERT INTO medicamento(nomemedicamento, dosagem, indicacao) VALUES (0004, 13, 'Novalgina: Antitermico');
INSERT INTO medicamento(nomemedicamento, dosagem, indicacao) VALUES (0005, 1, 'Epinefrina: Antiasmatico');
INSERT INTO medicamento(nomemedicamento, dosagem, indicacao) VALUES (0006, 6, 'Dorflex: Analgesico muscular');
INSERT INTO medicamento(nomemedicamento, dosagem, indicacao) VALUES (0007, 10, 'Dopamina: Tipos de choque');
INSERT INTO medicamento(nomemedicamento, dosagem, indicacao) VALUES (0008, 5, 'Diazepam: Alivio da ansiedade');

--inserindo EspvistoriaGest(4 no total)
INSERT INTO esp_vistoria_ges(cpf_gestor, nome_especializada, data_vistoria) VALUES (3570, 2022, to_date ('26/08/2019', 'dd/mm/yyyy'));
INSERT INTO esp_vistoria_ges(cpf_gestor, nome_especializada, data_vistoria) VALUES (3570, 2022, to_date ('26/09/2019', 'dd/mm/yyyy'));
INSERT INTO esp_vistoria_ges(cpf_gestor, nome_especializada, data_vistoria) VALUES (0781, 2022, to_date ('26/07/2019', 'dd/mm/yyyy'));
INSERT INTO esp_vistoria_ges(cpf_gestor, nome_especializada, data_vistoria) VALUES (3541, 2022, to_date ('26/06/2019', 'dd/mm/yyyy'));

--inserindo Distribuidor(6 no total)
INSERT INTO distribuidor(cnpj, nome_empresa, telefoneempresa, cnpj_socio) VALUES (2489, 'MedicamentosLTDA', 11248975, NULL);
INSERT INTO distribuidor(cnpj, nome_empresa, telefoneempresa, cnpj_socio) VALUES (6845, 'MedicamentinhoLTDA', 22559966, 2489);
INSERT INTO distribuidor(cnpj, nome_empresa, telefoneempresa, cnpj_socio) VALUES (0974, 'MedicamentaoLTDA', 33665544, 2489);
INSERT INTO distribuidor(cnpj, nome_empresa, telefoneempresa, cnpj_socio) VALUES (0007, 'Pega de Mim', 88773654, NULL);
INSERT INTO distribuidor(cnpj, nome_empresa, telefoneempresa, cnpj_socio) VALUES (0006, 'Ou Pega de Mim', 99222123, 0007);
INSERT INTO distribuidor(cnpj, nome_empresa, telefoneempresa, cnpj_socio) VALUES (0005, 'Pode Ser de Mim', 99332123, 0006);

--inserindo Distribuir(18 no total)
INSERT INTO distribuir(clinica_nome, nome_medicamento, cnpj_distribuidor) VALUES (2020, 0001, 2489);
INSERT INTO distribuir(clinica_nome, nome_medicamento, cnpj_distribuidor) VALUES (2020, 0001, 6845);
INSERT INTO distribuir(clinica_nome, nome_medicamento, cnpj_distribuidor) VALUES (2021, 0001, 0974);
INSERT INTO distribuir(clinica_nome, nome_medicamento, cnpj_distribuidor) VALUES (2020, 0002, 0007);
INSERT INTO distribuir(clinica_nome, nome_medicamento, cnpj_distribuidor) VALUES (2020, 0003, 0974);
INSERT INTO distribuir(clinica_nome, nome_medicamento, cnpj_distribuidor) VALUES (2021, 0004, 0006);
INSERT INTO distribuir(clinica_nome, nome_medicamento, cnpj_distribuidor) VALUES (2021, 0005, 0005);
INSERT INTO distribuir(clinica_nome, nome_medicamento, cnpj_distribuidor) VALUES (2020, 0005, 0005);
INSERT INTO distribuir(clinica_nome, nome_medicamento, cnpj_distribuidor) VALUES (2020, 0006, 2489);
INSERT INTO distribuir(clinica_nome, nome_medicamento, cnpj_distribuidor) VALUES (2021, 0007, 2489);
INSERT INTO distribuir(clinica_nome, nome_medicamento, cnpj_distribuidor) VALUES (2020, 0008, 2489);
INSERT INTO distribuir(clinica_nome, nome_medicamento, cnpj_distribuidor) VALUES (2020, 0008, 6845);
INSERT INTO distribuir(clinica_nome, nome_medicamento, cnpj_distribuidor) VALUES (2021, 0003, 6845);
INSERT INTO distribuir(clinica_nome, nome_medicamento, cnpj_distribuidor) VALUES (2020, 0008, 0974);
INSERT INTO distribuir(clinica_nome, nome_medicamento, cnpj_distribuidor) VALUES (2021, 0008, 0974);
INSERT INTO distribuir(clinica_nome, nome_medicamento, cnpj_distribuidor) VALUES (2021, 0008, 0007);
INSERT INTO distribuir(clinica_nome, nome_medicamento, cnpj_distribuidor) VALUES (2021, 0008, 0006);
INSERT INTO distribuir(clinica_nome, nome_medicamento, cnpj_distribuidor) VALUES (2021, 0008, 0005);