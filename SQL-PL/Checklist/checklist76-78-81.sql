--Checklist 76, 78 e 81
CREATE OR REPLACE TRIGGER NovoMedicamento
BEFORE INSERT ON medicamento
FOR EACH ROW
WHEN (new.dosagem > 2000 OR new.dosagem<=0)

BEGIN
	dbms_output.put_line('Não foi possivel inserir novo medicamento! Dosagem acima do limite!');
END;
/