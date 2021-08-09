--Checklist 7
DROP TYPE tp_sala2 force;
DROP TABLE tb_sala2 force;

CREATE OR REPLACE TYPE tp_sala2 AS OBJECT(
	numerosala NUMBER,
	lar NUMBER,
	com NUMBER,
	MAP MEMBER FUNCTION area RETURN NUMBER
) FINAL;
/

CREATE TYPE BODY tp_sala2 AS
  MAP MEMBER FUNCTION area RETURN NUMBER IS
  BEGIN
	RETURN lar*com;
 END area;
END;
/

CREATE TABLE tb_sala2 OF tp_sala2(
	PRIMARY KEY(numerosala)
);
/

INSERT INTO tb_sala2 VALUES (1, 5, 5); 

DECLARE
	teste NUMBER;
BEGIN
	SELECT z.area() INTO teste FROM tb_sala2 z;
	DBMS_OUTPUT.put_line(teste);
END;