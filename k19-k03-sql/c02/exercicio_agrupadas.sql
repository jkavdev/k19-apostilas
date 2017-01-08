 CREATE DATABASE db_escola;

SHOW DATABASES;

USE db_livraria;

CREATE TABLE aluno(
	id_aluno BIGINT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(255),
	email VARCHAR(255),
	telefone VARCHAR(255),
	sexo VARCHAR(255),
	altura DECIMAL(3, 2),
	aprovado tinyint(1),
	PRIMARY KEY(id_aluno)
)ENGINE=INNODB;

INSERT INTO aluno(nome, email, telefone, altura, sexo) VALUES 
	('Jonas Hirata','hirata@k19.com.br', 1123873791 , 1.76, 1, 'M'),
	('Lucas Marlon','lucas@k19.com.br', 1123873791 , 1.76, 1, 'M'),
	('Sa Junior','sa@k19.com.br', 1123873791 , 1.76, 1, 'M'),
	('Jhonatan Santos','jhonatan@k19.com.br', 1123873791 , 1.76, 1, 'M'),
	('Eilane Mendes','eilane@k19.com.br', 1123873791 , 1.76, 1, 'F'),
	('Rafael Cosentino', 'cosentino@k19.com.br', 1123873791, 1.87, 0, 'M');

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
	
-- Utilizando a tabela Aluno crie uma consulta que calcule o número de alunos maiores que 1.70 de
-- altura, cujos nomes começam com a letra R ou terminam com a letra A, porém não podem começar
-- com R e terminar com A. Dê um apelido para a coluna com o número de alunos.
SELECT COUNT(*) as quantidade_alunos
	FROM Aluno 
	WHERE altura > 1.70 
		AND (nome LIKE 'R%' OR nome LIKE '%A')
		AND (nome LIKE 'R%' XOR nome LIKE '%A');

-- Utilizando a tabela Editora, faça uma consulta que calcule o número de editoras nacionais
-- cujos nomes começam com a letra O ou terminam com a letra O, mas que não começam e terminam
-- com a letra O.	
SELECT COUNT(*) as quantidade_editoras
	FROM Editora 
	WHERE nacionalidade = 'BR' 
		AND (nome LIKE 'O%' OR nome LIKE '%O')
		AND (!nome LIKE 'O%' AND nome LIKE '%O');