--Checklist 84
CREATE OR REPLACE TRIGGER cria_sala
AFTER INSERT ON medico
BEGIN
	INSERT INTO sala(numerosala, ramal, tamanho) VALUES (9, 8188, 21); 
END;
/