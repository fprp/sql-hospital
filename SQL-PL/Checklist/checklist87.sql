--checklist 87
CREATE OR REPLACE FUNCTION checklist_87 RETURN CHAR IS

    mule CHAR(1) := 'F';

BEGIN
    RETURN mule;
END;

SELECT crm, nomemedico
FROM medico
WHERE sexo = checklist_87