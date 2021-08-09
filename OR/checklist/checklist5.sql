--Checklist 5
CREATE OR REPLACE TYPE equipamento AS OBJECT(
	codigo NUMBER,
	peso DECIMAL(5,2),
	garantia NUMBER,
	CONSTRUCTOR FUNCTION equipamento(garantia NUMBER) RETURN SELF AS RESULT
) ;
/

CREATE OR REPLACE TYPE BODY equipamento AS 
  CONSTRUCTOR FUNCTION equipamento(garantia NUMBER) RETURN SELF AS RESULT
  AS
  BEGIN
        SELF.garantia := garantia;
        RETURN;
  END;
END;
/

DECLARE
     equip equipamento;
BEGIN
     equip := NEW equipamento(12);
END;
/