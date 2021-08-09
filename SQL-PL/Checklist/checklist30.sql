--Checklist 30 Nome dos medicos que tem uma sala de um tamanho menor que 
select nomemedico
from medico
where numero_sala = any (select numerosala from sala where tamanho < 30)