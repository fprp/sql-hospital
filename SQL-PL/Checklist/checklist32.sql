--Checklist 32 Nome dos medicos que tem uma sala do tamanho <20
select nomemedico
from medico
where exists (select numerosala from sala where medico.numero_sala = sala.numerosala and tamanho <20)