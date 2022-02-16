create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint auto_increment,
departamento varchar(255),
categoria varchar(255),
preco Varchar(255),
primary key(id)
);

insert into tb_categoria (departamento, categoria, preco) 
value ("Ferramentas", "Ferramentas de construção", "A partir de R$1500");
insert into tb_categoria (departamento, categoria, preco) 
value ("Ferramentas", "Ferramentas manuais", "A Partir de R$15.00");
insert into tb_categoria (departamento, categoria, preco) 
value ("Materiais Hidráulicos", "Canos e Conexões Hidráulicas", "A partir de R$10.00");
insert into tb_categoria (departamento, categoria, preco) 
value ("Ferragens", "Dobradiças e Fechaduras", "A partir de R$25.00");
insert into tb_categoria (departamento, categoria, preco) 
value ("Eletro", "Geladeiras e Fogões", "A partir de R$2000");

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
Produto Varchar(255),
descricao varchar(255),
preco decimal,
peso varchar(255),
Frete varchar(255),
categoria_id bigint,
primary key(id),
foreign key(categoria_id) references tb_categoria(id)
);

insert into tb_produto (Produto, descricao, preco, peso, Frete, categoria_id) 
value ("Betoneira", "Stark 400L", 4299, "160Kg", "R$100", 1);
insert into tb_produto (Produto, descricao, preco, peso, Frete, categoria_id) 
value ("Martelo Demolidor e Rompedor", "Makita", 3150, "5,6Kg", "R$50", 1);
insert into tb_produto (Produto, descricao, preco, peso, Frete, categoria_id) 
value ("Alicate Universal", "7 Dexter", 46.90, "0,248Kg", "R$20", 2);
insert into tb_produto (Produto, descricao, preco, peso, Frete, categoria_id) 
value ("Jogo de Chave Combinada", "Aço Cromo-Vanádio 8 a 15mm Dexter", 79.90, "0,504 Kg", "R$20", 2);
insert into tb_produto (Produto, descricao, preco, peso, Frete, categoria_id) 
value ("Cano PVC Marrom Soldável", "3m 3/4'' 25mm Tigre", 26.90, "0,500Kg", "R$20", 3);
insert into tb_produto (Produto, descricao, preco, peso, Frete, categoria_id) 
value ("Joelho 90°", "PVC Marrom Soldável 1.1/2'' 50mm Tigre", 11, "0,200Kg", "R$20", 3);
insert into tb_produto (Produto, descricao, preco, peso, Frete, categoria_id) 
value ("Fechadura Digital Biométrica Eletrônica", "Smart Primebras Com Senha + Tag + Chave", 5990, "1Kg", "R$20", 4);
insert into tb_produto (Produto, descricao, preco, peso, Frete, categoria_id) 
value ("Geladeira Panasonic 127V (110V)", "Frost Free Preto Inverse 425 Litros NR-BB53GV3B", 5790, "87Kg", "R$100", 5);

select * from tb_produto;

select * from tb_produto where preco > 50;

select * from tb_produto where preco >= 3 and preco <= 60;

select * from tb_produto where produto like "%c%";

select * from tb_categoria inner join tb_produto on tb_categoria.id = tb_produto.categoria_id 
where tb_categoria.id = 3;