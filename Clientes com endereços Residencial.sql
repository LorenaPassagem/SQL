-- Clientes com endereços Residencial
select p.NOME, p.DATA_NASCIMENTO, e.ENDERECO, E.NUMERO, E.BAIRRO, t.tipo_endereco
from m1.PESSOAS p
inner join m1.ENDERECOS e on (e.ID_PESSOA = p.ID_PESSOA)
INNER JOIN M1.TIPO_ENDERECO t ON e.ID_TIPO_ENDERECO = t.ID_TIPO_ENDERECO
where t.tipo_endereco = 'Residencial'
