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
	
-- Utilizando a tabela Aluno crie uma consulta calcule a média das alturas dos alunos menores que
-- 1,70 de altura.
SELECT AVG(altura) AS alunos_menor_170
	FROM Aluno 
	WHERE altura < 1.70;

-- Utilizando a tabela Aluno crie uma consulta calcule a variância das alturas dos alunos com mais
-- de 1,70m.
SELECT VARIANCE(altura) AS alunos_menor_170
	FROM Aluno 
	WHERE altura > 1.70;
	
-- Utilizando a tabela Editora crie uma consulta que calcule a média das editoras que sejam nacionais.
SELECT AVG(*) AS media_editoras_br
	FROM Editora 
	WHERE nacionalidade = 'BR';

-- Utilizando a tabela Editora crie uma consulta que mostre os nomes das editoras que foram
-- fundadas antes do ano de 1980.
SELECT nome AS editoras_acima_1980
	FROM Editora 
	WHERE YEAR(ano_criacao) < 1980; 	