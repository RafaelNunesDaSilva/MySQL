create database db_quitanda;

use db_quitanda;

create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
quantidade int,
preco decimal,
primary key (id)
);

insert into tb_produtos (nome,quantidade,preco)
value("Maçã", 10, 1.99);
insert into tb_produtos (nome,quantidade,preco)
value("Banana", 13, 4.99);
insert into tb_produtos (nome,quantidade,preco)
value("Manga", 20, 5.49);
insert into tb_produtos (nome,quantidade,preco)
value("Melancia", 3, 10.00);
insert into tb_produtos (nome,quantidade,preco)
value("Cebola", 100, 1.50);

select * from tb_produtos;

update tb_produtos set preco = 1.99 where id = 1;

update tb_produtos set preco = 1.99 where nome = "Maçã";

delete from tb_produtos where id = 10;

insert into tb_produtos (nome, quantidade, preco)
values ("Batata", 150, 5.50);

set SQL_SAFE_UPDATES = 0;

update tb_produtos set descricao = "Banana Ouro";

alter table tb_produtos modify preco decimal(8,2);

alter table tb_produtos add descricao varchar(255);

alter table tb_produtos drop descricao;

delete from tb_produtos;