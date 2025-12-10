-- Atualizando Registros
-- Consultar
SELECT * FROM M1.PESSOAS WHERE CPF ='99970772845'

-- Alterando um campo
UPDATE M1.PESSOAS 
SET NOME= 'Carolina Aparecida'
WHERE CPF ='99970772845'


--alterado vários campos
UPDATE M1.PESSOAS 
SET NOME = 'Carolina Aparecida Campo', DATA_NASCIMENTO ='25/08/1998',
	ALTERADO_EM = GETDATE(), ALTERADO_POR='LORENA'
WHERE CPF ='99970772845'