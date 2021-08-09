--Checklist 8
DROP TYPE tp_sala2 force;
DROP TABLE tb_sala2 force;

CREATE OR REPLACE TYPE tp_sala2 AS OBJECT(
	numerosala NUMBER,
	tamanho NUMBER,
	ORDER MEMBER FUNCTION maior(s tp_sala2) RETURN INTEGER
) FINAL;
/

CREATE OR REPLACE TYPE BODY tp_sala2 AS
  ORDER MEMBER FUNCTION maior(s tp_sala2) RETURN INTEGER IS
  BEGIN
	IF tamanho > s.tamanho THEN
		RETURN 1;
	ELSIF tamanho < s.tamanho THEN
		RETURN -1;
	ELSE
		RETURN 0;
	END IF;

 END;
END;
/

CREATE TABLE tb_sala2 OF tp_sala2(
	PRIMARY KEY(numerosala)
);
/

DECLARE
    teste1 tp_sala2;
    teste2 tp_sala2;
    x NUMBER;
BEGIN
    teste1 := NEW tp_sala2(1,5);
    teste2 := NEW tp_sala2(2,5);

    x := teste1.maior(teste2);
    
    DBMS_OUTPUT.put_line(x);
END;