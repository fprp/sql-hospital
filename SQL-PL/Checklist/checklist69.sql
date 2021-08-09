--Checklist 69
CREATE OR REPLACE FUNCTION funcao (metade IN NUMBER) RETURN NUMBER IS
    medicos NUMBER := 0;
BEGIN
    SELECT count(crm) INTO medicos
    FROM medico;
    RETURN medicos/metade;
END;

BEGIN
    DBMS_OUTPUT.PUT_LINE(funcao(2));
END;