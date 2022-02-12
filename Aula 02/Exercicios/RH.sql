CREATE DATABASE db_rh; 

USE db_rh;

CREATE TABLE tb_funcionarios(
	id bigint auto_increment,
    nome varchar(200),
    data_nascimento date,
    cargo varchar(100),
    salario decimal(7,2),
    primary key (id)
);

INSERT INTO tb_funcionarios (nome, data_nascimento, cargo, salario) VALUES ("Maria Silva", "1990-06-30", "Gerente de Projeto", 5000.00);
INSERT INTO tb_funcionarios (nome, data_nascimento, cargo, salario) VALUES ("João Santos", "1988-03-12", "Desenvolvedor", 3000.00);
INSERT INTO tb_funcionarios (nome, data_nascimento, cargo, salario) VALUES ("Carlos Oliveira", "1995-04-04", "Estagiário", 1800.00);
INSERT INTO tb_funcionarios (nome, data_nascimento, cargo, salario) VALUES ("Jorge Souza", "1990-06-30", "Estagiário", 1800.00);
INSERT INTO tb_funcionarios (nome, data_nascimento, cargo, salario) VALUES ("Ana Pereira", "1992-09-13", "Desenvolvedora", 3000.00);

SELECT * FROM tb_funcionarios;
SELECT * FROM tb_funcionarios WHERE salario < 2000.00;
SELECT * FROM tb_funcionarios WHERE salario > 2000.00;

UPDATE tb_funcionarios SET salario = 1900.00 WHERE id = 3;
UPDATE tb_funcionarios SET salario = 1900.00 WHERE id = 4;