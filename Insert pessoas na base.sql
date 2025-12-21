--Adicionado um registro na tabela de pessoas, usado variavel para incrementar o ID
USE [BD_CDD_SQL_M1]
GO

declare @ID numeric(4, 0)
SELECT @ID = MAX(ID_PESSOA) + 1 FROM M2.PESSOAS

INSERT INTO [m2].[PESSOAS]
           ([ID_PESSOA]
           ,[NOME]
           ,[DATA_NASCIMENTO]
           ,[GENERO]
           ,[CPF]
           ,[RG]
           ,[RG_DIGIT]
           ,[CADASTRADO_EM]
           ,[CADASTRADO_POR]
           ,[ALTERADO_EM]
           ,[ALTERADO_POR])
     VALUES
           (@ID,'Antonio Nascimento','2007-05-25', 'M', 10236598710,
           1325496, 9, '2025-02-05','LORENA',GETDATE(),'LORENA')
GO


