--Functions

-- função remover espaços 
create or alter function m2.fn_Romever_espacos(@pTexto as nvarchar(1000))
returns nvarchar(1000) 
as 


begin
	if @pTexto is null return null

	declare @novo_texto nvarchar(1000)
	select  @novo_texto = @pTexto
	 set @novo_texto = LTRIM(@novo_texto)
	 set @novo_texto = RTRIM(@novo_texto)

	 while (CHARINDEX('  ',@novo_texto) > 0)
	 begin
		set @novo_texto = REPLACE(@novo_texto, '  ', ' ')
		
	 end
	 return @novo_texto
end



-- usado a função
select m2.fn_Romever_espacos('            Comunidade    datadriven      ') as testo



select p.nome, m2.fn_Romever_espacos(p.nome) NomeTratado
from m2.PESSOAS P