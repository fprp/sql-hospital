--Checklist 73, 75 e 80
CREATE OR REPLACE TRIGGER MudarSalario
BEFORE UPDATE OF salario ON medico
REFERENCING OLD as V NEW as N
FOR EACH ROW

BEGIN
	dbms_output.put_line('CRM: '||:V.crm);
	dbms_output.put_line('Salario anterior: '||:V.salario||
						' Salario atual: '||:N.salario);
END;
/