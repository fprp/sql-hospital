--Checklist 12
CREATE TABLE questao2 (
    questao2 NUMBER,
	nomequestao2 VARCHAR2 (10),
	CONSTRAINT questao2_fk FOREIGN KEY (questao2, nomequestao2) REFERENCES questao (questao1_id, nomequestao)
	);