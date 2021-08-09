--Checklist 28

CREATE OR REPLACE TRIGGER checklist28
BEFORE INSERT OR UPDATE ON tb_sala
FOR EACH ROW
BEGIN
   DBMS_OUTPUT.put_line('trigger deu bom');
END checklist28;

INSERT INTO tb_sala VALUES (9, 7777, 25); 