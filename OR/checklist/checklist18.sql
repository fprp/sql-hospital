--Checklist 18
DROP TYPE tp_sala2 force;
DROP TABLE tb_sala2 force;

CREATE OR REPLACE TYPE tp_sala2 AS OBJECT(
	numerosala NUMBER,
	ramal NUMBER,
	tamanho NUMBER
) FINAL;
/

CREATE TABLE tb_sala2 OF tp_sala2 (
	PRIMARY KEY (numerosala)
);
/