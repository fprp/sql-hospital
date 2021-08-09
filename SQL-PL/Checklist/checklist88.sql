--Checklist 88
CREATE OR REPLACE PROCEDURE checklist_88(reg_teste medico%ROWTYPE) IS

BEGIN
    DBMS_OUTPUT.PUT_LINE(reg_teste.nomemedico);
END;

DECLARE
   registro medico%ROWTYPE;
BEGIN
    SELECT * into registro
    FROM medico
    WHERE crm = 12346;
    checklist_88(registro)
END;