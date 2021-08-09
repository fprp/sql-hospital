--Checklist 16
DROP TYPE tp_sala2 force;
DROP TYPE tp_medico2 force;
DROP TABLE tb_sala2 force;
DROP TABLE tb_medico2 force;

CREATE OR REPLACE TYPE tp_sala2 AS OBJECT(
	numerosala NUMBER,
	ramal NUMBER,
	tamanho NUMBER
) FINAL;
/

CREATE OR REPLACE TYPE tp_medico2 AS OBJECT(
	crm NUMBER,
	nomemedico VARCHAR2(30),
	sexo CHAR(1),
	salario DECIMAL(8,2),
	ref_numero_sala REF tp_sala2
) FINAL;
/

CREATE TABLE tb_sala2 OF tp_sala2 (
	PRIMARY KEY (numerosala),
	ramal NOT NULL
);
/

CREATE TABLE tb_medico2 OF tp_medico2(
   	PRIMARY KEY (crm),
	FOREIGN KEY (ref_numero_sala) REFERENCES tb_sala2,
	nomemedico NOT NULL,
	sexo NOT NULL,
	salario NOT NULL
);
/