--Checklist 66
CREATE OR REPLACE PROCEDURE expon_quadrado (aa IN OUT NUMBER) IS

BEGIN
    aa := aa * aa;
END;

DECLARE
    a NUMBER;
BEGIN
    a := 6;
    expon_quadrado(a);
    DBMS_OUTPUT.PUT_LINE(a);
END;