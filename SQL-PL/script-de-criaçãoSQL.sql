DROP TABLE distribuir;
DROP TABLE distribuidor;
DROP TABLE esp_vistoria_ges;
DROP TABLE medicamento;
DROP TABLE gestor;
DROP TABLE tipo_de_especializacao;
DROP TABLE especializada;
DROP TABLE urgencia;
DROP TABLE funcionalidade;
DROP TABLE equipamento;
DROP TABLE paciente;
DROP TABLE medico;
DROP TABLE clinica;
DROP TABLE sala;

CREATE TABLE sala (
	numerosala NUMBER,
	ramal NUMBER NOT NULL,
	tamanho NUMBER DEFAULT 0, --13
	CONSTRAINT sala_pk PRIMARY KEY (numerosala)
);

CREATE TABLE clinica (
	nomeclinica NUMBER, 
	telefoneclinica VARCHAR2(9) NOT NULL,
	cep VARCHAR2(9) NOT NULL,
	numeroclinica NUMBER NOT NULL,
 	complemento VARCHAR2(20) NOT NULL,
	CONSTRAINT clinica_pk PRIMARY KEY (nomeclinica)
);

CREATE TABLE medico (
	crm NUMBER,
	nomemedico VARCHAR2(30) NOT NULL,
	sexo CHAR(1) NOT NULL,
	salario DECIMAL(8,2) NOT NULL,
	numero_sala NUMBER UNIQUE,
	nome_clinica NUMBER NOT NULL,
	CONSTRAINT medico_pk PRIMARY KEY (crm),
	CONSTRAINT medico_sala_fk FOREIGN KEY (numero_sala) REFERENCES sala (numerosala),
	CONSTRAINT medico_clinica_fk FOREIGN KEY (nome_clinica) REFERENCES clinica (nomeclinica),
	CONSTRAINT medico_check CHECK (sexo = 'M' OR sexo = 'F') --10
);

CREATE TABLE paciente (
	cpfpaciente NUMBER,
	nomepaciente VARCHAR2(30) NOT NULL,
	telefonepaciente VARCHAR2(9) NOT NULL,
	crm_medico NUMBER NOT NULL,
	CONSTRAINT paciente_pk PRIMARY KEY (cpfpaciente),
	CONSTRAINT paciente_fk FOREIGN KEY (crm_medico) REFERENCES medico (crm)
);

CREATE TABLE equipamento (
	codigo NUMBER,
	peso DECIMAL(5,2) NOT NULL,
	garantia NUMBER NOT NULL,
	medico_crm NUMBER,
	CONSTRAINT equipamento_pk PRIMARY KEY (codigo),
	CONSTRAINT equipamento_fk FOREIGN KEY (medico_crm) REFERENCES medico (crm)
);

CREATE TABLE funcionalidade (
	aplicacao NUMBER,
	codigo_equipamento NUMBER,
	instrucao VARCHAR2(100) NOT NULL,
	precisao NUMBER NOT NULL,
	CONSTRAINT funcionalidade_pk PRIMARY KEY (aplicacao, codigo_equipamento),
	CONSTRAINT funcionalidade_fk FOREIGN KEY (codigo_equipamento) REFERENCES equipamento (codigo)	
);

CREATE TABLE urgencia (
	clinica_urgencia NUMBER,
	CONSTRAINT urgencia_pk PRIMARY KEY (clinica_urgencia),
	CONSTRAINT urgencia_fk FOREIGN KEY (clinica_urgencia) REFERENCES clinica (nomeclinica)
);

CREATE TABLE especializada (
	clinica_especializada NUMBER,
	CONSTRAINT especializada_pk PRIMARY KEY (clinica_especializada),
	CONSTRAINT especializada_fk FOREIGN KEY (clinica_especializada) REFERENCES clinica (nomeclinica)
);

CREATE TABLE tipo_de_especializacao (
	clinica_especializacao NUMBER,
	tipos_de_especializacao VARCHAR2(30),
	CONSTRAINT tipo_pk PRIMARY KEY (clinica_especializacao, tipos_de_especializacao),
	CONSTRAINT tipo_fk FOREIGN KEY (clinica_especializacao) REFERENCES especializada (clinica_especializada)
);

CREATE TABLE gestor (
	cpfgestor NUMBER,
	nomegestor VARCHAR2(30) NOT NULL,
	telefonegestor VARCHAR2(9) NOT NULL,
	CONSTRAINT gestor_pk PRIMARY KEY (cpfgestor)
);

CREATE TABLE medicamento (
	nomemedicamento NUMBER,
	dosagem NUMBER NOT NULL,
	indicacao VARCHAR2(40) NOT NULL,
	CONSTRAINT medicamento_pk PRIMARY KEY (nomemedicamento)
);

CREATE TABLE esp_vistoria_ges (
	cpf_gestor NUMBER,
	nome_especializada NUMBER,
	data_vistoria DATE,
	CONSTRAINT vistoria_pk PRIMARY KEY (cpf_gestor, nome_especializada, data_vistoria),
	CONSTRAINT gestor_vistoria_fk FOREIGN KEY (cpf_gestor) REFERENCES gestor (cpfgestor),
CONSTRAINT clinica_vistoria_fk FOREIGN KEY (nome_especializada) REFERENCES especializada (clinica_especializada)
);

CREATE TABLE distribuidor (
	cnpj NUMBER, 
	nome_empresa VARCHAR2(30) NOT NULL,
	telefoneempresa VARCHAR2(9) NOT NULL,
	cnpj_socio NUMBER,
	CONSTRAINT distribuidor_pk PRIMARY KEY (cnpj),
	CONSTRAINT distribuidor_fk FOREIGN KEY (cnpj_socio) REFERENCES distribuidor (cnpj)
);

CREATE TABLE distribuir ( --11
	clinica_nome NUMBER,
	nome_medicamento NUMBER,
	cnpj_distribuidor NUMBER,
	CONSTRAINT distribuir_pk PRIMARY KEY (clinica_nome, nome_medicamento, cnpj_distribuidor),
	CONSTRAINT distribuir_clinica_fk FOREIGN KEY (clinica_nome) REFERENCES urgencia (clinica_urgencia),
	CONSTRAINT distribuir_medicamento_fk FOREIGN KEY (nome_medicamento) REFERENCES medicamento (nomemedicamento),
	CONSTRAINT distribuir_cnpj_fk FOREIGN KEY (cnpj_distribuidor) REFERENCES distribuidor (cnpj)
);