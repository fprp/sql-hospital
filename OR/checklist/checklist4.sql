--Checklist 4
CREATE OR REPLACE TYPE tp_nt_especializacao AS TABLE OF VARCHAR2(25);
/

CREATE OR REPLACE TYPE tp_especializada under tp_clinica(
    	clinica_especializada NUMBER,
	especializacao tp_nt_especializacao
) FINAL;
/