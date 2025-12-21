
--- Função condicional IIF - pode ser usada dentro da querie

select p.nome, p.genero,
       IIF (p.GENERO = 'F', 'Feminino', 'Masculino') descrição
from m2.PESSOAS p


-- Analise da idade

select p.nome, p.DATA_NASCIMENTO,
       convert(int, datediff(YEAR,p.data_nascimento,getdate())) IDADE,
	   iif(
		   convert(int, datediff(YEAR,p.data_nascimento,getdate())) > 21,
		   'Maior',
		   'Menor'
		   )Maior_menor_idade		
from m2.PESSOAS p
order by 3