-- Checklist 25
DROP TYPE tp_clinica2 force;
DROP TABLE tb_clinica2 force;

CREATE OR REPLACE TYPE  tp_v_telefone AS varray(2) of varchar2(9);
/

CREATE OR REPLACE TYPE tp_clinica2 AS OBJECT(
	nomeclinica NUMBER, 
	telefone tp_v_telefone,
) FINAL;
/

CREATE TABLE tb_clinica2 OF tp_clinica2(
    PRIMARY KEY (nomeclinica),
    telefone NOT NULL
);

INSERT INTO tb_clinica2 VALUES (1,  tp_v_telefone('999999999','888888888'));
INSERT INTO tb_clinica2 VALUES (2,  tp_v_telefone('777777777,'666666666'));
INSERT INTO tb_clinica2 VALUES (3,  tp_v_telefone('555555555,'444444444'));

SELECT telefone FROM tb_clinica2