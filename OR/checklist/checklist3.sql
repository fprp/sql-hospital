--Checklist 3
CREATE OR REPLACE TYPE  tp_v_telefone AS varray(2) of varchar2(9);
/

CREATE OR REPLACE TYPE tp_clinica AS OBJECT(
	nomeclinica NUMBER, 
	telefone tp_v_telefone,
	endereco tp_endereco
) FINAL;
/