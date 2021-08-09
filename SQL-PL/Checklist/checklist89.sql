--Checklist 89
CREATE OR REPLACE FUNCTION checklist_89 RETURN medico%ROWTYPE IS
    teste medico%ROWTYPE;
BEGIN
    SELECT nomemedico INTO teste.nomemedico
    FROM medico
    WHERE crm = 12345;
    return teste;
END;

DECLARE
    testinho medico%ROWTYPE := checklist_89;
BEGIN
    DBMS_OUTPUT.PUT_LINE(testinho.nomemedico);
END;