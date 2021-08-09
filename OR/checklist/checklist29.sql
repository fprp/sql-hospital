--Checklist 29

CREATE OR REPLACE TRIGGER checklist29
BEFORE INSERT OR UPDATE OR DELETE ON tb_sala
FOR EACH ROW
BEGIN
IF :new.tamanho < 10 THEN
RAISE_APPLICATION_ERROR(-20205,'A sala nao pode ser menor que 10');
END IF;
END checklist29;

INSERT INTO tb_sala VALUES (10, 7777, 9); 