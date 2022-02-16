create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
sabor varchar (255) not null,
preco decimal,
tamanho varchar (255),
primary key (id)
);

select * from tb_categoria;

insert into tb_categoria (sabor, preco, tamanho) value ("Mussarela", 35.99, "Média");
insert into tb_categoria (sabor, preco, tamanho) value ("Calabresa", 35.99, "Média");
insert into tb_categoria (sabor, preco, tamanho) value ("Pepperoni", 45.99, "Grande");
insert into tb_categoria (sabor, preco, tamanho) value ("Frango II", 45.99, "Grande");
insert into tb_categoria (sabor, preco, tamanho) value ("Chocolate", 25.99, "broto");

create table tb_pizza(
id bigint auto_increment,
nome varchar(255),
ingredientes varchar(255),
acompanhamento varchar(255),
molhos varchar(255),
categoria_id bigint,
primary key(id),
foreign key(categoria_id) references tb_categoria(id)
);

select * from tb_pizza;

insert into tb_pizza (nome, ingredientes, acompanhamento, molhos, categoria_id) 
values ("Mussarela", "Muçarela e orégano", "Azeitonas", "Molho de tomate", 1);
insert into tb_pizza (nome, ingredientes, acompanhamento, molhos, categoria_id) 
values ("Mussarela II", "Muçarela, Catupiry e orégano", "Azeitonas", "Molho de tomate", 1);
insert into tb_pizza (nome, ingredientes, acompanhamento, molhos, categoria_id) 
values ("Calabresa", "Calabresa e cebola", "Azeitonas", "Molho de tomate", 2);
insert into tb_pizza (nome, ingredientes, acompanhamento, molhos, categoria_id) 
values ("Calabresa II", "Calabresa, Muçarela e cebola", "Azeitonas", "Molho de tomate", 2);
insert into tb_pizza (nome, ingredientes, acompanhamento, molhos, categoria_id) 
values ("Pepperoni", "Pepperoni, Mussarela e orégano", "Azeitonas", "Molho de tomate", 3);
insert into tb_pizza (nome, ingredientes, acompanhamento, molhos, categoria_id) 
values ("Frango I", "Frango com catupiry", "Azeitonas", "Molho de tomate", 4);
insert into tb_pizza (nome, ingredientes, acompanhamento, molhos, categoria_id) 
values ("Frango II", "Frango com cheedar", "Azeitonas", "Molho de tomate", 4);
insert into tb_pizza (nome, ingredientes, acompanhamento, molhos, categoria_id) 
values ("Chocolate", "Chocolate e Leite condensado", "M&Ms", "S/M", 5);

select * from tb_personagens;

select * from tb_categoria where preco > 45;

select * from tb_categoria where preco >= 29 and preco <= 60;

select * from tb_categoria where sabor like "%c%";

select * from tb_categoria inner join tb_pizza on tb_categoria.id = tb_pizza.categoria_id 
where tb_categoria.id = 2;



