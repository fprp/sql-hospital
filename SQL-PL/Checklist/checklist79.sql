--Checklist 79
CREATE OR REPLACE TRIGGER RemoveuFunc
AFTER DELETE ON funcionalidade
FOR EACH ROW

BEGIN
	dbms_output.put_line('Funcionalidade removida, Número: '||:old.aplicacao);
END;