DROP TABLE tb_distribuir force;
DROP TABLE tb_distribuidor force;
DROP TABLE tb_esp_vistoria_ges force;
DROP TABLE tb_medicamento force;
DROP TABLE tb_gestor force;
DROP TABLE tb_especializada force;
DROP TABLE tb_urgencia force;
DROP TABLE tb_funcionalidade force;
DROP TABLE tb_equipamento force;
DROP TABLE tb_paciente force;
DROP TABLE tb_medico force;
DROP TABLE tb_clinica force;
DROP TABLE tb_sala force;

CREATE TABLE tb_sala OF tp_sala (
	PRIMARY KEY (numerosala),
	ramal NOT NULL
);

CREATE TABLE tb_clinica OF tp_clinica(
    PRIMARY KEY (nomeclinica),
    telefoneclinica NOT NULL
);

CREATE TABLE tb_medico OF tp_medico(
   	PRIMARY KEY (crm),
	FOREIGN KEY (ref_numero_sala)  REFERENCES tb_sala,
	FOREIGN KEY (ref_nome_clinica) REFERENCES  tb_clinica,
	nomemedico NOT NULL,
	sexo NOT NULL,
	salario NOT NULL
);

CREATE TABLE tb_paciente  OF tp_paciente(
	PRIMARY KEY (cpfpaciente),
	FOREIGN KEY(ref_crm_medico)  REFERENCES tb_medico,
	nomepaciente NOT NULL,
	telefonepaciente NOT NULL
);

CREATE TABLE tb_equipamento OF tp_equipamento( 
    PRIMARY KEY (codigo),
	FOREIGN KEY (ref_medico_crm ) REFERENCES tb_medico,
	peso NOT NULL,
	garantia NOT NULL
);

CREATE TABLE tb_funcionalidade OF tp_funcionalidade(
	PRIMARY KEY (aplicacao,codigo_equipamento),
	FOREIGN KEY (ref_codigo_equipamento) REFERENCES tb_equipamento,
	instrucao  NOT NULL,
	precisao NOT NULL
);

CREATE TABLE tb_urgencia OF tp_urgencia(
	PRIMARY KEY (nome_urgencia)
);

CREATE TABLE tb_especializada OF tp_especializada (
	PRIMARY KEY (clinica_especializada)
)NESTED TABLE especializacao STORE AS tb_tipo_de_especializacao;

CREATE TABLE tb_gestor OF tp_gestor (
	PRIMARY KEY (cpfgestor),
	nomegestor NOT NULL,
	telefonegestor NOT NULL
);

CREATE TABLE tb_medicamento OF tp_medicamento (
	PRIMARY KEY (nomemedicamento),
	dosagem NOT NULL,
	indicacao NOT NULL
);

CREATE TABLE tb_esp_vistoria_ges OF tp_esp_vistoria_ges(
	PRIMARY KEY (cpf_gestor,nome_especializada,data_vistoria),
	FOREIGN KEY (ref_nome_especializada) REFERENCES tb_especializada,
    FOREIGN KEY (ref_cpf_gestor) REFERENCES tb_gestor
);

CREATE TABLE tb_distribuidor OF tp_distribuidor (
	PRIMARY KEY (cnpj), 
	nome_empresa NOT NULL,
	telefoneempresa NOT NULL,
	FOREIGN KEY (ref_cnpj_socio) REFERENCES tb_distribuidor
);

CREATE TABLE tb_distribuir OF tp_distribuir (
	PRIMARY KEY (nome_urgencia,nome_medicamento,cnpj_distribuidor),
    FOREIGN KEY (ref_nome_urgencia) REFERENCES tb_urgencia,
    FOREIGN KEY (ref_nome_medicamento) REFERENCES tb_medicamento,
    FOREIGN KEY (ref_cnpj_distribuidor) REFERENCES tb_distribuidor
);
