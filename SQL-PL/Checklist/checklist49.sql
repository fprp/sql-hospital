--Checklist 49
DECLARE
	VaiDarErro CHAR(5);

BEGIN
	VaiDarErro := 'MuitasLetras';
	if VaiDarErro IS NULL THEN
		dbms_output.put_line('VaiDarErro é NULL');
 	END IF;
	EXCEPTION WHEN VALUE_ERROR THEN
     	dbms_output.put_line('Erro!');
END;
/
