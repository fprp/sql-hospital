--Checklist 71
CREATE OR REPLACE FUNCTION funcao3 (mult IN OUT NUMBER) RETURN NUMBER IS
    medicos NUMBER := 0;
BEGIN
    SELECT count(crm) INTO medicos
    FROM medico;
    mult := mult*medicos;
    RETURN mult;
END;

DECLARE
    x NUMBER :=2;
BEGIN
    DBMS_OUTPUT.PUT_LINE(funcao3(x));
END;