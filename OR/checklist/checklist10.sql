--Checklist 10
DROP TYPE tp_clinica2 force;
DROP TYPE tp_urgencia2 force;
DROP TABLE tb_clinica2 force;
DROP TABLE tb_urgencia2 force;

CREATE OR REPLACE TYPE tp_clinica2 AS OBJECT(
	nomeclinica VARCHAR2(20), 
	MEMBER FUNCTION get_nomeclinica RETURN VARCHAR2
) NOT FINAL;
/

CREATE OR REPLACE TYPE BODY tp_clinica2 IS 
 MEMBER FUNCTION get_nomeclinica RETURN VARCHAR2 IS
   BEGIN
        RETURN SELF.nomeclinica;
   END;
END;
/

CREATE OR REPLACE TYPE tp_urgencia2 under tp_clinica2(
	nomeclinica VARCHAR2(20),
	OVERRIDING MEMBER FUNCTION get_nomeclinica RETURN VARCHAR2
) FINAL;
/

CREATE OR REPLACE TYPE BODY tp_urgencia2 IS 
 MEMBER FUNCTION get_nomeclinica RETURN VARCHAR2 IS
   DECLARE
        x VARCHAR2 := 'Mudou';
    BEGIN
        RETURN x;
    END;
END;
/

CREATE TABLE tb_clinica2 OF tp_clinica2(
	PRIMARY KEY(nomeclinica) 
);
/

CREATE TABLE tb_urgencia2 OF tp_urgencia2(
    PRIMARY KEY(nomeclinica)
);
/