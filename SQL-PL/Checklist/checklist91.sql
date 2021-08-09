CREATE OR REPLACE PACKAGE BODY questao91 AS  	
	FUNCTION primeiro RETURN NUMBER IS Res_primeiro NUMBER := 2;
	BEGIN
		return Res_primeiro;
	END primeiro;
   
	FUNCTION segundo RETURN NUMBER IS Res_segundo NUMBER;
	BEGIN
		Res_segundo := primeiro()*2;
		RETURN Res_segundo;
	END segundo;
    
END questao91;
/