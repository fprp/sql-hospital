--Checklist 31 Nome do medico onde para todos tem uma sala de um tamanho = 30
select nomemedico
from medico
where numero_sala = all (select numerosala from sala where tamanho = 30)