create database db_quitanda;

use db_quitanda;

create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
quantidade int,
preco decimal not null,
primary key (id)
);

insert into tb_produtos(nome, quantidade, preco)  
values ("Maçã",100, 8.00);
insert into tb_produtos(nome, quantidade, preco)  
values ("Marmelada",20, 5.00);
insert into tb_produtos(nome, quantidade, preco)  
values ("Laranja",50, 10.00);
insert into tb_produtos(nome, quantidade, preco)  
values ("Aipim",200, 12.00);
insert into tb_produtos(nome, quantidade, preco)  
values ("Uva",1200, 30.00);
insert into tb_produtos(nome, quantidade, preco)  
values ("Pêssego",500, 2.90);

select * from tb_produtos;

select nome, preco from tb_produtos;

select nome, CONCAT('R$ ',FORMAT(preco, 2,'pt_BR')) as preço from tb_produtos;

select * from tb_produtos where id = 1;

select * from tb_produtos where preco > 5.00;

select * from tb_produtos where nome = "maçã";

select * from tb_produtos where nome = "maçã" or preco > 5.00;

alter table tb_produtos add descricao varchar(255); 

alter table tb_produtos modify preco decimal(6,2);

alter table tb_produtos drop descricao; 

SET SQL_SAFE_UPDATES = 0;

update tb_produtos set preco = 10.00 where id = 1;

delete from tb_produtos where id = 16;

ALTER TABLE tb_produtos ADD PRIMARY KEY (id);

alter table tb_produtos change nome nomeproduto integer;

delete from tb_produtos;