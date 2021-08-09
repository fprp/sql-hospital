--Checklist 57 recuperando dandos do tipo registro e mostrando o crm e nome dos medicos masculinos
DECLARE 
    CURSOR cur_med (homi CHAR) IS
    SELECT nomemedico, crm
    FROM medico
    WHERE sexo = homi;
    reg_med cur_med%ROWTYPE;

BEGIN 
    OPEN cur_med ('M');
    LOOP
        FETCH cur_med INTO reg_med;
        EXIT WHEN cur_med%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(reg_med.crm || ' ' || reg_med.nomemedico);
    END LOOP;
    CLOSE cur_med;
END;