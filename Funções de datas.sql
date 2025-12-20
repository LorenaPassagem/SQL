--Funções de datas

-- Pega a data atual
select GETDATE()

-- Calculo com data
-- Adiciona anos da data atual 
select DATEADD(year, 3 , getdate())

-- Subtrai anos da data atual
select DATEADD(year, 3 , getdate())


-- Calculado idade
SELECT P.NOME,
	   P.DATA_NASCIMENTO,
	   DATEDIFF(YEAR, P.DATA_NASCIMENTO,GETDATE()) AS ANOS,
	   DATEDIFF(MONTH, P.DATA_NASCIMENTO,GETDATE()) AS MESES,
	   DATEDIFF(DAY, P.DATA_NASCIMENTO, GETDATE()) AS DIAS,
	   CONVERT(INT, DATEDIFF(DAY, P.DATA_NASCIMENTO, GETDATE()) /365) AS IDADE
FROM M2.PESSOAS P

