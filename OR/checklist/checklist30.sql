--Checklist 30

CREATE OR REPLACE TRIGGER checklist30
BEFORE INSERT OR UPDATE OR DELETE ON tb_sala
BEGIN
RAISE_APPLICATION_ERROR(-20205,'O hospital já tem muito sala, não cabe mais nenhuma');
END checklist30;

INSERT INTO tb_sala VALUES (11, 7777, 10);
