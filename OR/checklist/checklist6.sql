--Checklist 6
DROP TYPE tp_sala2 force;
DROP TABLE tb_sala2 force;

CREATE OR REPLACE TYPE tp_sala2 AS OBJECT(
	numerosala NUMBER,
	tamanho NUMBER,
	MEMBER FUNCTION novo_tamanho(x NUMBER) RETURN NUMBER
) FINAL;
/

CREATE TYPE BODY tp_sala2 IS
 MEMBER FUNCTION novo_tamanho(x NUMBER) RETURN NUMBER IS
 BEGIN
	RETURN SELF.tamanho + x;
 END;
END;
/

CREATE TABLE tb_sala2 OF tp_sala2(
	PRIMARY KEY(numerosala)
);
/

INSERT INTO tb_sala2 VALUES (1, 25); 

DECLARE
	teste NUMBER;
BEGIN
	SELECT z.novo_tamanho(10) INTO teste FROM tb_sala2 z;
	DBMS_OUTPUT.put_line(teste);
END;