--inserindo Sala (8 no total)
INSERT INTO tb_sala VALUES (1, 7777, 25); 
INSERT INTO tb_sala VALUES (2, 8547, 30); 
INSERT INTO tb_sala VALUES (3, 9123, 20); 
INSERT INTO tb_sala VALUES (4, 7258, 33); 
INSERT INTO tb_sala VALUES (5, 8917, 25);
INSERT INTO tb_sala VALUES (6, 7987, 40); 
INSERT INTO tb_sala VALUES (7, 2345, 15); 
INSERT INTO tb_sala VALUES (8, 2347, 19); 

--inserindo Clínica (4 no total)
INSERT INTO tb_clinica VALUES (2019, 32418347, tp_endereco(52041535, 226, 'Segundo Andar'));
INSERT INTO tb_clinica VALUES (2020, 34661687, tp_endereco (51010420, 202, 'Terreo'));
INSERT INTO tb_clinica VALUES (2021, 31268792, tp_endereco (51041420, 276, 'Terreo'));
INSERT INTO tb_clinica VALUES (2022, 96791115, tp_endereco(53012870, 403, 'Primeiro Andar'));

--inserindo Médico (8 no total)
INSERT INTO tb_medico VALUES (12345, 'Tayse Fernandes', 'F', 20000.00, (SELECT REF(S) FROM tb_sala S WHERE S.numerosala = 1), (SELECT REF(C) FROM tb_clinica C WHERE C.nomeclinica = 2021)) ;
INSERT INTO tb_medico VALUES (12346, 'Filipe Paz', 'M', 20000.00,  (SELECT REF(S) FROM tb_sala S WHERE S.numerosala = 2), (SELECT REF(C) FROM tb_clinica C WHERE C.nomeclinica = 2021)); 
INSERT INTO tb_medico VALUES (12347, 'Diego Lacerda', 'M', 15000.00,  (SELECT REF(S) FROM tb_sala S WHERE S.numerosala = 3), (SELECT REF(C) FROM tb_clinica C WHERE C.nomeclinica = 2019)); 
INSERT INTO tb_medico VALUES (12348, 'Beatriz Lubre', 'F', 17000.00, (SELECT REF(S) FROM tb_sala S WHERE S.numerosala = 4), (SELECT REF(C) FROM tb_clinica C WHERE C.nomeclinica = 2020)); 
INSERT INTO tb_medico VALUES (12349, 'Gabriel Lucas', 'M', 19500.00, (SELECT REF(S) FROM tb_sala S WHERE S.numerosala = 5), (SELECT REF(C) FROM tb_clinica C WHERE C.nomeclinica = 2022)); 
INSERT INTO tb_medico VALUES (12340, 'Ana Julia', 'F', 15980.00, (SELECT REF(S) FROM tb_sala S WHERE S.numerosala = 6), (SELECT REF(C) FROM tb_clinica C WHERE C.nomeclinica = 2022));
INSERT INTO tb_medico VALUES (12351, 'Maria Eduarda', 'F', 13350.00, (SELECT REF(S) FROM tb_sala S WHERE S.numerosala = 7), (SELECT REF(C) FROM tb_clinica C WHERE C.nomeclinica = 2022));
INSERT INTO tb_medico VALUES (68514, 'Fabio Reis', 'M', 18970.00, (SELECT REF(S) FROM tb_sala S WHERE S.numerosala = 8), (SELECT REF(C) FROM tb_clinica C WHERE C.nomeclinica = 2019));

--inserindo Paciente(15 no total)
INSERT INTO tb_paciente VALUES (1111, 'Bon Jovi', 98749825, (SELECT REF(A) FROM tb_medico A WHERE A.crm = 12345));
INSERT INTO tb_paciente VALUES (2222, 'Axl Rose', 89356423, (SELECT REF(A) FROM tb_medico A WHERE A.crm = 12345));
INSERT INTO tb_paciente VALUES (3333, 'Bruce Dickson', 96669887, (SELECT REF(A) FROM tb_medico A WHERE A.crm = 12345));
INSERT INTO tb_paciente VALUES (4444, 'Steven Wilson', 95421348, (SELECT REF(A) FROM tb_medico A WHERE A.crm = 12346));
INSERT INTO tb_paciente VALUES (5555, 'Bruce Wayne', 88889999, (SELECT REF(A) FROM tb_medico A WHERE A.crm = 12346));
INSERT INTO tb_paciente VALUES (6666, 'Robert Fripp', 99999999, (SELECT REF(A) FROM tb_medico A WHERE A.crm = 12346));
INSERT INTO tb_paciente VALUES (7778, 'Anakin Skywalker', 88888888, (SELECT REF(A) FROM tb_medico A WHERE A.crm = 12347));
INSERT INTO tb_paciente VALUES (8888, 'Keith Emerson', 99999998, (SELECT REF(A) FROM tb_medico A WHERE A.crm = 12347));
INSERT INTO tb_paciente VALUES (9999, 'Greg Lake', 99999988, (SELECT REF(A) FROM tb_medico A WHERE A.crm = 12348));
INSERT INTO tb_paciente VALUES (9988, 'Carl Palmer', 99999888, (SELECT REF(A) FROM tb_medico A WHERE A.crm = 12348));
INSERT INTO tb_paciente VALUES (8899, 'Geddy Lee', 99998888, (SELECT REF(A) FROM tb_medico A WHERE A.crm = 12349));
INSERT INTO tb_paciente VALUES (1212, 'Alex Lifeson', 99988888, (SELECT REF(A) FROM tb_medico A WHERE A.crm = 12349));
INSERT INTO tb_paciente VALUES (2121, 'Neil Peart', 98888888, (SELECT REF(A) FROM tb_medico A WHERE A.crm = 12340));
INSERT INTO tb_paciente VALUES (6556, 'Obi Wan', 82546524, (SELECT REF(A) FROM tb_medico A WHERE A.crm = 12351));
INSERT INTO tb_paciente VALUES (5665, 'Frodo Baggins', 96544569, (SELECT REF(A) FROM tb_medico A WHERE A.crm = 68514));

--inserindo Equipamentos (15 no total)
INSERT INTO tb_equipamento VALUES (1, 9.5, 5, (SELECT REF(A) FROM tb_medico A WHERE A.crm = 12345));
INSERT INTO tb_equipamento VALUES (2, 1.0, 1, (SELECT REF(A) FROM tb_medico A WHERE A.crm = 12345));
INSERT INTO tb_equipamento VALUES (3, 0.5, 12, (SELECT REF(A) FROM tb_medico A WHERE A.crm = 12346));
INSERT INTO tb_equipamento VALUES (4, 0.8, 12, (SELECT REF(A) FROM tb_medico A WHERE A.crm = 12346));
INSERT INTO tb_equipamento VALUES (5, 0.7, 12, (SELECT REF(A) FROM tb_medico A WHERE A.crm = 12348));
INSERT INTO tb_equipamento VALUES (6, 0.2, 12, (SELECT REF(A) FROM tb_medico A WHERE A.crm = 12348));
INSERT INTO tb_equipamento VALUES (7, 0.2, 6, (SELECT REF(A) FROM tb_medico A WHERE A.crm = 12340));
INSERT INTO tb_equipamento VALUES (8, 0.1, 6, (SELECT REF(A) FROM tb_medico A WHERE A.crm = 12340));
INSERT INTO tb_equipamento VALUES (9, 0.3, 3, (SELECT REF(A) FROM tb_medico A WHERE A.crm = 12349));
INSERT INTO tb_equipamento VALUES (10, 0.4, 3, (SELECT REF(A) FROM tb_medico A WHERE A.crm = 12349));
INSERT INTO tb_equipamento VALUES (11,2.2, 6, (SELECT REF(A) FROM tb_medico A WHERE A.crm = 12347));
INSERT INTO tb_equipamento VALUES (12, 3.4, 24, (SELECT REF(A) FROM tb_medico A WHERE A.crm = 12347));
INSERT INTO tb_equipamento VALUES (13, 0.45, 12, (SELECT REF(A) FROM tb_medico A WHERE A.crm = 68514));
INSERT INTO tb_equipamento VALUES (14, 1.5, 48, (SELECT REF(A) FROM tb_medico A WHERE A.crm = 12351));
INSERT INTO tb_equipamento VALUES (15, 6.2, 48, (SELECT REF(A) FROM tb_medico A WHERE A.crm = 12351));

--inserindo Funcionalidade (18 no total)
INSERT INTO tb_funcionalidade VALUES (001, 1, (SELECT REF(E) FROM tb_equipamento E WHERE E.codigo = 1), 'Balanca: Medir a massa corporal', 98);
INSERT INTO tb_funcionalidade VALUES (002, 2, (SELECT REF(E) FROM tb_equipamento E WHERE E.codigo = 2), 'Estetoscopio: Escutar som no corpo', 96);
INSERT INTO tb_funcionalidade VALUES (003, 3, (SELECT REF(E) FROM tb_equipamento E WHERE E.codigo = 3), 'Termometro: Medir temperatura corporal', 99);
INSERT INTO tb_funcionalidade VALUES (004, 4, (SELECT REF(E) FROM tb_equipamento E WHERE E.codigo = 4), 'Medidor de pressao: Medir a pressão arterial', 97);
INSERT INTO tb_funcionalidade VALUES (005, 5, (SELECT REF(E) FROM tb_equipamento E WHERE E.codigo = 5),'Medidor de glicose: Medir a glicose no sangue', 97);
INSERT INTO tb_funcionalidade VALUES (006, 6, (SELECT REF(E) FROM tb_equipamento E WHERE E.codigo = 6), 'Oximetro: Medir o oxigenio no sangue', 94);
INSERT INTO tb_funcionalidade VALUES (007, 7, (SELECT REF(E) FROM tb_equipamento E WHERE E.codigo = 7), 'Otoscopio: Olhar no interior da orelha', 100);
INSERT INTO tb_funcionalidade VALUES (008, 8, (SELECT REF(E) FROM tb_equipamento E WHERE E.codigo = 8), 'Especulo nasal: Analisar o interior do nariz', 100);
INSERT INTO tb_funcionalidade VALUES (009, 9, (SELECT REF(E) FROM tb_equipamento E WHERE E.codigo = 9), 'Oftalmoscopio: Observar fundo do olho', 99);
INSERT INTO tb_funcionalidade VALUES (010, 10, (SELECT REF(E) FROM tb_equipamento E WHERE E.codigo = 10), 'Tonometro: Medir a pressao do olho', 97);
INSERT INTO tb_funcionalidade VALUES (011, 11, (SELECT REF(E) FROM tb_equipamento E WHERE E.codigo = 11), 'Tala imobilizadora: Imobilizar alguma parte do corpo', 99);
INSERT INTO tb_funcionalidade VALUES (012, 12, (SELECT REF(E) FROM tb_equipamento E WHERE E.codigo = 12), 'Cadeira de roda: Promover a locomocao', 100);
INSERT INTO tb_funcionalidade VALUES (013, 13, (SELECT REF(E) FROM tb_equipamento E WHERE E.codigo = 13), 'Nebulizador: Tratar doencas respiratorias', 95);
INSERT INTO tb_funcionalidade VALUES (014, 13, (SELECT REF(E) FROM tb_equipamento E WHERE E.codigo = 13), 'Nebulizador: Administrar solucoes', 99);
INSERT INTO tb_funcionalidade VALUES (015, 14, (SELECT REF(E) FROM tb_equipamento E WHERE E.codigo = 14), 'Desfibrilador: Evitar a morte', 25);
INSERT INTO tb_funcionalidade VALUES (016, 14, (SELECT REF(E) FROM tb_equipamento E WHERE E.codigo = 14), 'Desfibrilador: Tratar arritmias', 88);
INSERT INTO tb_funcionalidade VALUES (017, 15, (SELECT REF(E) FROM tb_equipamento E WHERE E.codigo = 15), 'Eletrocardiografo: Medir o ritmo do coracao', 92);
INSERT INTO tb_funcionalidade VALUES (018, 15, (SELECT REF(E) FROM tb_equipamento E WHERE E.codigo = 15), 'Eletrocardiografo: Detectar o numero de batimentos por minuto', 90);

--inserindo Urgencia (2 no total)
INSERT INTO tb_urgencia VALUES (2020, 34661687, tp_endereco (51010420, 202, 'Terreo'),2020);
INSERT INTO tb_urgencia VALUES (2021, 31268792, tp_endereco (51041420, 276, 'Terreo'),2021);

--inserindo Especialização(1 no total)
INSERT INTO tb_especializada VALUES (2022, 96791115, tp_endereco(53012870, 403, 'Primeiro Andar'), 2022, tp_nt_especializacao('Oftalmologista', 'Otorrinolaringologista','Cardiologista'));

--inserindo Gestor (3 no total)
INSERT INTO tb_gestor VALUES (3570, 'Neil Gaiman', 65419874);
INSERT INTO tb_gestor VALUES (0781, 'Frank Miller', 16483657);
INSERT INTO tb_gestor VALUES (3541, 'Peter Park', 55584443);

--inserindo Medicamentos(8 no total) 
INSERT INTO tb_medicamento VALUES (0001, 2, 'Dipirona: Analgesico'); 
INSERT INTO tb_medicamento VALUES (0002, 1, 'Buscopan: Colicas');
INSERT INTO tb_medicamento VALUES (0003, 1200, 'Benzetacil: Tratamento de infecção');
INSERT INTO tb_medicamento VALUES (0004, 13, 'Novalgina: Antitermico');
INSERT INTO tb_medicamento VALUES (0005, 1, 'Epinefrina: Antiasmatico');
INSERT INTO tb_medicamento VALUES (0006, 6, 'Dorflex: Analgesico muscular');
INSERT INTO tb_medicamento VALUES (0007, 10, 'Dopamina: Tipos de choque');
INSERT INTO tb_medicamento VALUES (0008, 5, 'Diazepam: Alivio da ansiedade');

--inserindo EspvistoriaGest(4 no total)
INSERT INTO tb_esp_vistoria_ges VALUES (3570, 2022, to_date ('26/08/2019', 'dd/mm/yyyy'), (SELECT REF(ESP) FROM tb_especializada ESP WHERE ESP.clinica_especializada = 2022), (SELECT REF(G) FROM tb_gestor G WHERE G.cpfgestor = 3570));
INSERT INTO tb_esp_vistoria_ges VALUES (3570, 2022, to_date ('26/09/2019', 'dd/mm/yyyy'), (SELECT REF(ESP) FROM tb_especializada ESP WHERE ESP.clinica_especializada = 2022), (SELECT REF(G) FROM tb_gestor G WHERE G.cpfgestor = 3570));
INSERT INTO tb_esp_vistoria_ges VALUES (0781, 2022, to_date ('26/07/2019', 'dd/mm/yyyy'), (SELECT REF(ESP) FROM tb_especializada ESP WHERE ESP.clinica_especializada = 2022), (SELECT REF(G) FROM tb_gestor G WHERE G.cpfgestor = 0781));
INSERT INTO tb_esp_vistoria_ges VALUES (3541, 2022, to_date ('26/06/2019', 'dd/mm/yyyy'), (SELECT REF(ESP) FROM tb_especializada ESP WHERE ESP.clinica_especializada = 2022), (SELECT REF(G) FROM tb_gestor G WHERE G.cpfgestor = 3541));

--inserindo Distribuidor(6 no total)
INSERT INTO tb_distribuidor VALUES (2489, 'MedicamentosLTDA', 11248975, (SELECT REF(DIS) FROM tb_distribuidor DIS WHERE DIS.cnpj = NULL));
INSERT INTO tb_distribuidor VALUES (6845, 'MedicamentinhoLTDA', 22559966, (SELECT REF(DIS) FROM tb_distribuidor DIS WHERE DIS.cnpj = 2489));
INSERT INTO tb_distribuidor VALUES (0974, 'MedicamentaoLTDA', 33665544, (SELECT REF(DIS) FROM tb_distribuidor DIS WHERE DIS.cnpj = 2489));
INSERT INTO tb_distribuidor VALUES (0007, 'Pega de Mim', 88773654, (SELECT REF(DIS) FROM tb_distribuidor DIS WHERE DIS.cnpj = NULL));
INSERT INTO tb_distribuidor VALUES (0006, 'Ou Pega de Mim', 99222123, (SELECT REF(DIS) FROM tb_distribuidor DIS WHERE DIS.cnpj = 0007));
INSERT INTO tb_distribuidor VALUES (0005, 'Pode Ser de Mim', 99332123, (SELECT REF(DIS) FROM tb_distribuidor DIS WHERE DIS.cnpj = 0006));

--inserindo Distribuir(18 no total)
INSERT INTO tb_distribuir VALUES (2020, 0001, 2489, (SELECT REF(U) FROM tb_urgencia U WHERE U.nome_urgencia= 2020), (SELECT REF(MEN) FROM tb_medicamento MEN WHERE MEN.nomemedicamento= 0001), (SELECT REF(DIS) FROM tb_distribuidor DIS WHERE DIS.cnpj = 2489));
INSERT INTO tb_distribuir VALUES (2020, 0001, 6845, (SELECT REF(U) FROM tb_urgencia U WHERE U.nome_urgencia= 2020), (SELECT REF(MEN) FROM tb_medicamento MEN WHERE MEN.nomemedicamento= 0001), (SELECT REF(DIS) FROM tb_distribuidor DIS WHERE DIS.cnpj = 6845));
INSERT INTO tb_distribuir VALUES (2021, 0001, 0974, (SELECT REF(U) FROM tb_urgencia U WHERE U.nome_urgencia= 2021), (SELECT REF(MEN) FROM tb_medicamento MEN WHERE MEN.nomemedicamento= 0001), (SELECT REF(DIS) FROM tb_distribuidor DIS WHERE DIS.cnpj = 0974));
INSERT INTO tb_distribuir VALUES (2020, 0002, 0007, (SELECT REF(U) FROM tb_urgencia U WHERE U.nome_urgencia= 2020), (SELECT REF(MEN) FROM tb_medicamento MEN WHERE MEN.nomemedicamento= 0002), (SELECT REF(DIS) FROM tb_distribuidor DIS WHERE DIS.cnpj = 0007));
INSERT INTO tb_distribuir VALUES (2020, 0003, 0974, (SELECT REF(U) FROM tb_urgencia U WHERE U.nome_urgencia= 2020), (SELECT REF(MEN) FROM tb_medicamento MEN WHERE MEN.nomemedicamento= 0003), (SELECT REF(DIS) FROM tb_distribuidor DIS WHERE DIS.cnpj = 0974));
INSERT INTO tb_distribuir VALUES (2021, 0004, 0006, (SELECT REF(U) FROM tb_urgencia U WHERE U.nome_urgencia= 2021), (SELECT REF(MEN) FROM tb_medicamento MEN WHERE MEN.nomemedicamento= 0004), (SELECT REF(DIS) FROM tb_distribuidor DIS WHERE DIS.cnpj = 0006));
INSERT INTO tb_distribuir VALUES (2021, 0005, 0005, (SELECT REF(U) FROM tb_urgencia U WHERE U.nome_urgencia= 2021), (SELECT REF(MEN) FROM tb_medicamento MEN WHERE MEN.nomemedicamento= 0005), (SELECT REF(DIS) FROM tb_distribuidor DIS WHERE DIS.cnpj = 0005));
INSERT INTO tb_distribuir VALUES (2020, 0005, 0005, (SELECT REF(U) FROM tb_urgencia U WHERE U.nome_urgencia= 2020), (SELECT REF(MEN) FROM tb_medicamento MEN WHERE MEN.nomemedicamento= 0005), (SELECT REF(DIS) FROM tb_distribuidor DIS WHERE DIS.cnpj = 0005));
INSERT INTO tb_distribuir VALUES (2020, 0006, 2489, (SELECT REF(U) FROM tb_urgencia U WHERE U.nome_urgencia= 2020), (SELECT REF(MEN) FROM tb_medicamento MEN WHERE MEN.nomemedicamento= 0006), (SELECT REF(DIS) FROM tb_distribuidor DIS WHERE DIS.cnpj = 2489));
INSERT INTO tb_distribuir VALUES (2021, 0007, 2489, (SELECT REF(U) FROM tb_urgencia U WHERE U.nome_urgencia= 2021), (SELECT REF(MEN) FROM tb_medicamento MEN WHERE MEN.nomemedicamento= 0007), (SELECT REF(DIS) FROM tb_distribuidor DIS WHERE DIS.cnpj = 2489));
INSERT INTO tb_distribuir VALUES (2020, 0008, 2489, (SELECT REF(U) FROM tb_urgencia U WHERE U.nome_urgencia= 2020), (SELECT REF(MEN) FROM tb_medicamento MEN WHERE MEN.nomemedicamento= 0008), (SELECT REF(DIS) FROM tb_distribuidor DIS WHERE DIS.cnpj = 2489));
INSERT INTO tb_distribuir VALUES (2020, 0008, 6845, (SELECT REF(U) FROM tb_urgencia U WHERE U.nome_urgencia= 2020), (SELECT REF(MEN) FROM tb_medicamento MEN WHERE MEN.nomemedicamento= 0008), (SELECT REF(DIS) FROM tb_distribuidor DIS WHERE DIS.cnpj = 6845));
INSERT INTO tb_distribuir VALUES (2021, 0003, 6845, (SELECT REF(U) FROM tb_urgencia U WHERE U.nome_urgencia= 2021), (SELECT REF(MEN) FROM tb_medicamento MEN WHERE MEN.nomemedicamento= 0003), (SELECT REF(DIS) FROM tb_distribuidor DIS WHERE DIS.cnpj = 6845));
INSERT INTO tb_distribuir VALUES (2020, 0008, 0974, (SELECT REF(U) FROM tb_urgencia U WHERE U.nome_urgencia= 2020), (SELECT REF(MEN) FROM tb_medicamento MEN WHERE MEN.nomemedicamento= 0008), (SELECT REF(DIS) FROM tb_distribuidor DIS WHERE DIS.cnpj = 0974));
INSERT INTO tb_distribuir VALUES (2021, 0008, 0974, (SELECT REF(U) FROM tb_urgencia U WHERE U.nome_urgencia= 2021), (SELECT REF(MEN) FROM tb_medicamento MEN WHERE MEN.nomemedicamento= 0008), (SELECT REF(DIS) FROM tb_distribuidor DIS WHERE DIS.cnpj = 0974));
INSERT INTO tb_distribuir VALUES (2021, 0008, 0007, (SELECT REF(U) FROM tb_urgencia U WHERE U.nome_urgencia= 2021), (SELECT REF(MEN) FROM tb_medicamento MEN WHERE MEN.nomemedicamento= 0008), (SELECT REF(DIS) FROM tb_distribuidor DIS WHERE DIS.cnpj = 0007));
INSERT INTO tb_distribuir VALUES (2021, 0008, 0006, (SELECT REF(U) FROM tb_urgencia U WHERE U.nome_urgencia= 2021), (SELECT REF(MEN) FROM tb_medicamento MEN WHERE MEN.nomemedicamento= 0008), (SELECT REF(DIS) FROM tb_distribuidor DIS WHERE DIS.cnpj = 0006));
INSERT INTO tb_distribuir VALUES (2021, 0008, 0005, (SELECT REF(U) FROM tb_urgencia U WHERE U.nome_urgencia= 2021), (SELECT REF(MEN) FROM tb_medicamento MEN WHERE MEN.nomemedicamento= 0008), (SELECT REF(DIS) FROM tb_distribuidor DIS WHERE DIS.cnpj = 0005));

