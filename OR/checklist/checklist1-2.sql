--Checklist 1,2
CREATE OR REPLACE TYPE tp_clinica AS OBJECT(
	nomeclinica NUMBER, 
	telefoneclinica VARCHAR2(9),
	endereco tp_endereco
) NOT FINAL;
/

CREATE OR REPLACE TYPE tp_urgencia under tp_clinica(
	nome_urgencia NUMBER
) FINAL;
/