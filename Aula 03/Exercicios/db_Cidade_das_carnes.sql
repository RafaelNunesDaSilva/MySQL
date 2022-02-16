create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categoria(
id bigint auto_increment,
tipo varchar(255),
precoKg Varchar(255),
numQuilos int,
primary key(id)
);

insert into tb_categoria (tipo, precoKg, numQuilos) value ("Bovina", "R$30,00 o Kg", 1);
insert into tb_categoria (tipo, precoKg, numQuilos) value ("Aves", "R$15,00 o Kg", 1);
insert into tb_categoria (tipo, precoKg, numQuilos) value ("Suinos", "R$15,00 o Kg", 1);
insert into tb_categoria (tipo, precoKg, numQuilos) value ("Peixes", "R$20,00 o Kg", 1);
insert into tb_categoria (tipo, precoKg, numQuilos) value ("Empanados", "R$20,00 o Kg", 1);

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
nome varchar(255),
descriçao varchar(255),
quilos decimal,
precoR$ int,
validade varchar(255),
categoria_id bigint,
primary key (id),
foreign key(categoria_id) references tb_categoria(id)
);

select * from tb_produto;


insert into tb_produto (nome, descriçao, quilos, precoR$, validade, categoria_id)
 value ("Carne-moída", "Patinho",0.5, 15, "19 Dias", 1);
insert into tb_produto (nome, descriçao, quilos, precoR$, validade, categoria_id)
 value ("Bife", "Alcatra",1, 30, "20 dias", 1 );
insert into tb_produto (nome, descriçao, quilos, precoR$, validade, categoria_id)
 value ("Peito", "Frango", 1, 15, "15 Dias", 2);
insert into tb_produto (nome, descriçao, quilos, precoR$, validade, categoria_id)
 value ("Coxa", "Frango Caipira", 0.5, 7.50, "16 Dias", 2);
insert into tb_produto (nome, descriçao, quilos, precoR$, validade, categoria_id)
 value ("Linguiça", "Toscana", 1, 15, "13 Dias", 3);
insert into tb_produto (nome, descriçao, quilos, precoR$, validade, categoria_id)
 value ("Costela", "Suína", 2, 30, "14 Dias", 3);
insert into tb_produto (nome, descriçao, quilos, precoR$, validade, categoria_id)
 value ("Camarão", "7 Barbas Descascado", 1, 20, "5 Dias", 4);
insert into tb_produto (nome, descriçao, quilos, precoR$, validade, categoria_id)
 value ("Iscas de Frango", "Frango empanado", 1, 20, "10 Dias", 5);

select * from tb_produto;

select * from tb_produto where precoR$ > 50;

select * from tb_produto where precoR$ >= 3 and precoR$ <= 60;

select * from tb_produto where nome like "%c%";

select * from tb_categoria inner join tb_produto on tb_categoria.id = tb_produto.categoria_id 
where tb_categoria.id = 2;
