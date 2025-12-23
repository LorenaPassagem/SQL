--Cliente com endereço residencial completo
select p.ID_PESSOA, p.NOME, e.NUMERO, c.CIDADE, es.ESTADO, te.TIPO_ENDERECO
from m1.PESSOAS p 
right join m1.ENDERECOS e on e.ID_PESSOA = p.ID_PESSOA
inner join m1.CIDADES c on c.ID_CIDADE = e.ID_CIDADE
inner join m1.ESTADO ES on ES.ID_ESTADO = c.ID_ESTADO
inner join m1.TIPO_ENDERECO TE on e.ID_TIPO_ENDERECO = TE.ID_TIPO_ENDERECO
where e.ID_TIPO_ENDERECO=1
order by 5