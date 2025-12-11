-- Transferindo dados das tabelas do schema m1 para as tabelas do schema m2

insert into m2.ESTADO select * from m1.ESTADO

insert into m2.FORMA_PAGAMENTO select * from m1.FORMA_PAGAMENTO

insert into m2.TIPO_ENDERECO select * from m1.TIPO_ENDERECO

insert into m2.PRODUTOS select * from m1.PRODUTOS

insert into m2.PESSOAS select * from m1.PESSOAS

insert into m2.ENDERECOS select * from m1.ENDERECOS

insert into m2.NOTA_FISCAL select * from m1.NOTA_FISCAL

insert into m2.ITEM_NOTA_FISCAL select * from m1.ITEM_NOTA_FISCAL

insert into m2.CIDADES select * from m1.CIDADES



