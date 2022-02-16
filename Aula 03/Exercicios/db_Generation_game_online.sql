create database db_generation_game;

use db_generation_game;

create table tb_classe(
id bigint auto_increment,
nome varchar (255) not null,
habilidade varchar(255),
arma varchar (255),
primary key (id)
);

insert into tb_classe (nome, habilidade, arma) values ("mago", "bola de fogo", "cajado");
insert into tb_classe (nome, habilidade, arma) values ("arqueiro", "Chuva de flechas", "Arco e flecha");
insert into tb_classe (nome, habilidade, arma) values ("Drúida", "Gelo e cura", "livro");
insert into tb_classe (nome, habilidade, arma) values ("Guerreiro", "Excalibur", "Espada");
insert into tb_classe (nome, habilidade, arma) values ("Curandeiro", "Ressureição", "Gaze");

select * from tb_classe;

create table tb_personagens(
id bigint auto_increment,
nome varchar(100),
nivel int,
ataque int,
defesa int,
classe_id bigint,
primary key(id),
foreign key(classe_id) references tb_classe(id)
);

insert into tb_personagens (nome, nivel, ataque, defesa, classe_id) values ("Mokona", 100, 300, 100, 5);
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) VALUES ("Minseok", 100, 3000, 2800, 1);
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) VALUES ("Junmyeon", 100, 2000, 2000, 2);
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) VALUES ("Baekhyun", 10, 1000, 1500, 3);
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) VALUES ("Jongdae", 1000, 1300, 1110, 4);
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) VALUES ("Chanyeol", 500, 2300, 3000, 5);
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) VALUES ("Kyungsoo", 400, 1800, 2200, 1);
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) VALUES ("Jongin", 300, 1300, 850, 2);
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) VALUES ("Sehun", 150, 2100, 900, 3);

select * from tb_personagens;

select * from tb_personagens where ataque > 2000;

select * from tb_personagens where defesa >= 1000 and defesa <= 2000;

select * from tb_personagens where defesa between 1000 and 2000;

select * from tb_personagens where nome like "%c%";

select * from tb_personagens inner join tb_classe on tb_classe.id = tb_personagens.classe_id where tb_classe.id = 2
