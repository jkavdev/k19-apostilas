 CREATE DATABASE db_escola;

SHOW DATABASES;

USE db_livraria;

CREATE TABLE sala(
	id_sala BIGINT NOT NULL AUTO_INCREMENT,
	capacidade INT(3) NOT NULL,
	andar INT(2) NOT NULL,
	PRIMARY KEY(id_sala)
)ENGINE=INNODB;

CREATE TABLE aluno(
	id_aluno BIGINT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(255),
	email VARCHAR(255),
	telefone VARCHAR(255),
	altura DECIMAL(3, 2),	
	PRIMARY KEY(id_aluno)
)ENGINE=INNODB;

INSERT INTO sala(capacidade ,andar) VALUES (40 , 1), (35 , 1), (38 , 2);

INSERT INTO aluno(nome , email , telefone , altura ) VALUES 
	('Jonas Hirata','hirata@k19.com.br', 1123873791 , 1.76),
	('Rafael Cosentino', 'cosentino@k19.com.br', 1123873791, 1.87) ;
	
SELECT * FROM aluno;
SELECT * FROM sala;

UPDATE aluno SET altura = 1.89 WHERE nome = 'Rafael Cosentino';
UPDATE sala SET capacidade = 26 WHERE id_sala = 1;

DELETE FROM aluno WHERE nome = 'Jonas Hirata';

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
	
SELECT * FROM editora WHERE ano_cricao > '10-10-1991';

UPDATE editora SET nome = 'Editora São Paulo CIA' WHERE 'Editora São Paulo';	
DELETE FROM editora WHERE nome = 'Editora São Paulo CIA';
	
	