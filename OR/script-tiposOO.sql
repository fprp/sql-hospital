DROP TYPE tp_nt_especializacao force;
DROP TYPE tp_sala force;
DROP TYPE tp_endereco force;
DROP TYPE tp_clinica force;
DROP TYPE tp_medico force;
DROP TYPE tp_paciente force;
DROP TYPE tp_equipamento force;
DROP TYPE tp_funcionalidade force;
DROP TYPE tp_urgencia force;
DROP TYPE tp_especializada force;
DROP TYPE tp_gestor force;
DROP TYPE tp_medicamento force;
DROP TYPE tp_esp_vistoria_ges force;
DROP TYPE tp_distribuidor force;
DROP TYPE tp_distribuir force;

CREATE OR REPLACE TYPE tp_nt_especializacao AS TABLE OF VARCHAR2(25);
/

CREATE OR REPLACE TYPE tp_sala AS OBJECT(
	numerosala NUMBER,
	ramal NUMBER,
	tamanho NUMBER
) FINAL;
/

CREATE OR REPLACE TYPE tp_endereco AS OBJECT(
	cep VARCHAR2(9),
    numeroclinica NUMBER,
    complemento VARCHAR2(20)
) FINAL;
/

CREATE OR REPLACE TYPE tp_clinica AS OBJECT(
	nomeclinica NUMBER, 
	telefoneclinica VARCHAR2(9),
	endereco tp_endereco
) NOT FINAL;
/

CREATE OR REPLACE TYPE tp_medico AS OBJECT(
	crm NUMBER,
	nomemedico VARCHAR2(30),
	sexo CHAR(1),
	salario DECIMAL(8,2),
	ref_numero_sala REF tp_sala,
	ref_nome_clinica REF tp_clinica
) FINAL;
/

CREATE OR REPLACE TYPE tp_paciente AS OBJECT(
	cpfpaciente NUMBER,
	nomepaciente VARCHAR2(30),
	telefonepaciente VARCHAR2(9),
	ref_crm_medico REF tp_medico
) FINAL;
/

CREATE OR REPLACE TYPE tp_equipamento AS OBJECT(
	codigo NUMBER,
	peso DECIMAL(5,2),
	garantia NUMBER,
	ref_medico_crm REF tp_medico
) FINAL;
/

CREATE OR REPLACE TYPE tp_funcionalidade AS OBJECT(
	aplicacao NUMBER,
	codigo_equipamento NUMBER,
	ref_codigo_equipamento REF tp_equipamento,
	instrucao VARCHAR2(100),
	precisao NUMBER
) FINAL;
/

CREATE OR REPLACE TYPE tp_urgencia under tp_clinica(
	nome_urgencia NUMBER
) FINAL;
/

CREATE OR REPLACE TYPE tp_especializada under tp_clinica(
    clinica_especializada NUMBER,
	especializacao tp_nt_especializacao
) FINAL;
/

CREATE OR REPLACE TYPE tp_gestor AS OBJECT(
    cpfgestor NUMBER,
	nomegestor VARCHAR2(30),
	telefonegestor VARCHAR2(9)
) FINAL;
/

CREATE OR REPLACE TYPE tp_gestor AS OBJECT(
    	cpfgestor NUMBER,
	nomegestor VARCHAR2(30),
	telefonegestor VARCHAR2(9)
) FINAL;
/

CREATE OR REPLACE TYPE tp_medicamento AS OBJECT(
	nomemedicamento NUMBER,
	dosagem NUMBER,
	indicacao VARCHAR2(40)
) FINAL;
/

CREATE OR REPLACE TYPE tp_esp_vistoria_ges AS OBJECT(
	cpf_gestor NUMBER,
	nome_especializada NUMBER,
	data_vistoria DATE,
	ref_nome_especializada REF tp_especializada,
	ref_cpf_gestor REF tp_gestor
) FINAL;
/

CREATE OR REPLACE TYPE tp_distribuidor AS OBJECT(
	cnpj NUMBER, 
	nome_empresa VARCHAR2(30),
	telefoneempresa VARCHAR2(9),
	ref_cnpj_socio REF tp_distribuidor
) FINAL;
/

CREATE OR REPLACE TYPE tp_distribuir AS OBJECT(
    	nome_urgencia NUMBER,
	nome_medicamento NUMBER,
	cnpj_distribuidor NUMBER,
	ref_nome_urgencia REF tp_urgencia,
	ref_nome_medicamento REF tp_medicamento,
	ref_cnpj_distribuidor REF tp_distribuidor
) FINAL;
/