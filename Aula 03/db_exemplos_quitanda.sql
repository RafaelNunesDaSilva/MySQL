Select * from tb_produtos;

use db_quitanda;

select * from tb_produtos where nome like "A%";

select count(dtvalidade) from tb_produtos; -- conta o total dos registros

select sum(preco) as valorTotal from tb_produtos; -- o sum faz a soma dos valores da tabela, o "AS" nos permite renomear o resultado

-- relacionamentos entre tabelas
select * from produtos left join tb_categorias
on tb_produtos.categoria_id = tb_categorias.id;