--Checklist 68
CREATE OR REPLACE FUNCTION checklist_68 RETURN NUMBER IS

    medicos NUMBER := 0;

BEGIN
    SELECT count(crm) INTO medicos
    FROM medico;
    RETURN medicos;
END;

BEGIN
    DBMS_OUTPUT.PUT_LINE ('A quantidade de medicos �:' || checklist_68);
END;