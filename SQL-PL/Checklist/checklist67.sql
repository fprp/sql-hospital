--Checklist 67
DECLARE
    a NUMBER;
BEGIN
    a := 7;
    IF a != 0 THEN
        expon_quadrado(a);
        DBMS_OUTPUT.PUT_LINE(a);
    ELSE
        DBMS_OUTPUT.PUT_LINE('O quadrado de 0 � 0');
    END IF;
END;