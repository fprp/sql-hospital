--Checklist 64 e 65
CREATE OR REPLACE PROCEDURE pro_parametro (aa IN NUMBER, bb IN NUMBER, cc OUT NUMBER) IS

BEGIN
    cc := aa + bb;
END;

DECLARE
    c NUMBER;
BEGIN
    pro_parametro(2,5,c);
    DBMS_OUTPUT.PUT_LINE(c);
END;