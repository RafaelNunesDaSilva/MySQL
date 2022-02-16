create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
nome varchar(255) not null, 
preco decimal,
ml varchar(255),
primary key (id)
);

select * from tb_categoria;

insert into tb_categoria (nome, preco, ml) 
value ("Dipirona Monoidratada" , 4.90, "500mg");
insert into tb_categoria (nome, preco, ml)
value ("cimegrip" , 18.13, "400mg");
insert into tb_categoria (nome, preco, ml)
value ("Paracetamol" , 14.89, "750mg");
insert into tb_categoria (nome, preco, ml)
value ("Dorflex" , 16.15, "1g");
insert into tb_categoria (nome, preco, ml)
value ("Canabidiol" , 605.09, "500mg");
insert into tb_categoria (nome, preco, ml)
value ("rivotril" , 22.48, "2,5mg");
insert into tb_categoria (nome, preco, ml)
value ("Bramicar Hct" , 70.28, "25mg");
insert into tb_categoria (nome, preco, ml)
value ("Infralax" , 11.39, "50mg");

create table tb_produto(
id bigint auto_increment,
prescricao varchar(255),
quantidade varchar(255),
tarja varchar(255),
desconto boolean,
categoria_id bigint,
primary key(id),
foreign key(categoria_id) references tb_categoria(id)
);

insert into tb_produto (prescricao, quantidade, tarja, desconto, categoria_id) 
value ("Issento", "20ml", "isento", false, 1);
insert into tb_produto (prescricao, quantidade, tarja, desconto, categoria_id) 
value ("Issento", "20 Cápsulas", "isento", false, 2);
insert into tb_produto (prescricao, quantidade, tarja, desconto, categoria_id) 
value ("Issento", "20 Comprimidos", "isento", false, 3);
insert into tb_produto (prescricao, quantidade, tarja, desconto, categoria_id) 
value ("Issento", "10 Comprimidos", "isento", false, 4);
insert into tb_produto (prescricao, quantidade, tarja, desconto, categoria_id) 
value ("Venda sobre prescriçao médica", "50ml", "preta", true, 5);
insert into tb_produto (prescricao, quantidade, tarja, desconto, categoria_id) 
value ("Venda sobre prescriçao médica", "2,5ml", "preta", false, 6);
insert into tb_produto (prescricao, quantidade, tarja, desconto, categoria_id) 
value ("Venda sobre prescriçao médica", "30 Comprimidos", "vermelha", true, 7);
insert into tb_produto (prescricao, quantidade, tarja, desconto, categoria_id) 
value ("Venda sobre prescriçao médica", "30 Comprimidos", "vermelha", true, 8);

select * from tb_produto;

select * from tb_categoria where preco > 50;

select * from tb_categoria where preco >= 3 and preco <= 60;

select * from tb_categoria where sabor like "%b%";

select * from tb_categoria inner join tb_produto on tb_categoria.id = tb_produto.categoria_id 
where tb_categoria.id = 2;