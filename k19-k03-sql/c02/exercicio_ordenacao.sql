 CREATE DATABASE db_escola;

SHOW DATABASES;

USE db_livraria;

CREATE TABLE aluno(
	id_aluno BIGINT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(255),
	email VARCHAR(255),
	telefone VARCHAR(255),
	altura DECIMAL(3, 2),
	aprovado tinyint(1),
	PRIMARY KEY(id_aluno)
)ENGINE=INNODB;

INSERT INTO aluno(nome, email, telefone, altura) VALUES 
	('Jonas Hirata','hirata@k19.com.br', 1123873791 , 1.76, 1),
	('Lucas Marlon','lucas@k19.com.br', 1123873791 , 1.76, 1),
	('Sa Junior','sa@k19.com.br', 1123873791 , 1.76, 1),
	('Jhonatan Santos','jhonatan@k19.com.br', 1123873791 , 1.76, 1),
	('Rafael Cosentino', 'cosentino@k19.com.br', 1123873791, 1.87, 0);

CREATE TABLE editora(
	id_editora BIGINT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	email VARCHAR(255) NOT NULL,
	ano_criacao DATE NOT NULL,
	nacionalidade VARCHAR(255) NOT NULL,	
	PRIMARY KEY(id_editora)
)ENGINE=INNODB;

INSERT INTO editora(nome , email , ano_criacao , nacionalidade) VALUES 
	('Editora São Paulo','hirata@k19.com.br', '10-05-1994', 'BR'),
	('Editora Booksans', 'cosentino@k19.com.br', '10-05-1996', 'USA');	
	
-- Utilizando a tabela Aluno crie uma consulta que traga todos os alunos, 
-- e o primeiro deve ser o aluno mais alto.
SELECT * 
	FROM Aluno 
	ORDER BY altura DESC;

-- Utilizando a tabela Aluno crie uma consulta que traga todos os alunos maiores que 1.70 de altura,
-- ordenados pelo e-mail. Para desempate utilize a coluna nome.
SELECT * 
	FROM Aluno 
	WHERE altura > 1.70
	ORDER BY email DESC, nome;

-- Utilizando a tabela Editora crie uma consulta que traga todos os nomes das editoras, em ordem
-- decrescente conforme o seu id.
SELECT nome 
	FROM Editora 
	ORDER BY id_editora DESC;

-- Utilizando a tabela Editora crie uma consulta que traga todos os emails 
-- que tenham o id maior que 2.
SELECT email 
	FROM Editora 
	WHERE id_editora > 2;