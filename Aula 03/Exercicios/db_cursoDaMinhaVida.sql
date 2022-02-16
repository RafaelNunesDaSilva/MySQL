create database db_curso_da_minha_vida;

use db_curso_da_minha_vida;

create table tb_categoria(
id bigint auto_increment,
area varchar(255),
turma int,
partir varchar(255),
primary key(id)
);

insert into tb_categoria (area, turma, partir) value ("Tecnologia", 1, "a partir de R$50");
insert into tb_categoria (area, turma, partir) value ("Educação", 2, "A partir de R$40");
insert into tb_categoria (area, turma, partir) value ("Desenvolvimento pessoal e Profissional", 3, "A partir de R$35");
insert into tb_categoria (area, turma, partir) value ("Contabilidade e Finanças", 4, "A partir de R$55");
insert into tb_categoria (area, turma, partir) value ("Administração", 5, "A partir de R$40");

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
materia varchar(255),
descricao varchar(255),
duracao varchar(255),
apostila varchar(255),
Certificado boolean,
preco int,
categoria_id bigint,
primary key(id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_produto (materia, descricao, duracao, apostila, Certificado, preco, categoria_id) 
value ("Java", "Java-Básico/avançado", "16Hrs", "Fundamentos da linguagem Java", true, 50, 1);
insert into tb_produto (materia, descricao, duracao, apostila, Certificado, preco, categoria_id) 
value ("Java", "POO-Programação Orientado a Objetos", "15Hrs", "Java POO", true, 50, 1);
insert into tb_produto (materia, descricao, duracao, apostila, Certificado, preco, categoria_id) 
value ("Educação inclusiva", "Faça a diferença na vida de todes ao seu redor", "40Hrs", "Brasil Incluso", true, 40, 2);
insert into tb_produto (materia, descricao, duracao, apostila, Certificado, preco, categoria_id) 
value ("Desenvolvimento Profissional", "Nesse curso, você verá a importância do desenvolvimento de sua carreira profissional", "8Hrs", "Desenvolva-se", true, 35, 3);
insert into tb_produto (materia, descricao, duracao, apostila, Certificado, preco, categoria_id) 
value ("Cultura Digital", "Conceitos básicos e fundamentais de Redes Sociais e sobre o Pacote office", "6Hrs", "Cultura Digital Vol1", true, 35, 3);
insert into tb_produto (materia, descricao, duracao, apostila, Certificado, preco, categoria_id) 
value ("Análise de Balanços", "nosso curso de Análise de Balanços mostra como você deve olhar para o retrato financeiro de uma empresa", "20Hrs", "Análise de Balanços Vol3", true, 60, 4);
insert into tb_produto (materia, descricao, duracao, apostila, Certificado, preco, categoria_id) 
value ("Contabilidade Empresarial", "noções básicas da contabilidade empresarial", "18Hrs", "Contabilidade na sua empresa", true, 55, 4);
insert into tb_produto (materia, descricao, duracao, apostila, Certificado, preco, categoria_id) 
value ("Gestão de Projetos", "Aprenda a gerenciar um projeto usando a metodologia ágil SCRUM", "10Hrs", "Fundamentos do SCRUM", true, 40, 5);

select * from tb_produto;

select * from tb_produto where preco > 50;

select * from tb_produto where preco >= 3 and preco <= 60;

select * from tb_produto where materia like "%j%";

select * from tb_categoria inner join tb_produto on tb_categoria.id = tb_produto.categoria_id 
where tb_categoria.id = 1;

