--Checklist 70
CREATE OR REPLACE FUNCTION funcao2 (teste OUT NUMBER) RETURN NUMBER IS
    medicos NUMBER := 0;
BEGIN
    SELECT count(crm) INTO medicos
    FROM medico;
    teste := medicos;
    RETURN teste;
END;

DECLARE
    x NUMBER;
BEGIN
    DBMS_OUTPUT.PUT_LINE(funcao2(x));
END;