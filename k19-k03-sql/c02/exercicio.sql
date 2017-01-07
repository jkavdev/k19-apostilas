 CREATE DATABASE db_escola;

SHOW DATABASES;

USE db_livraria;

CREATE TABLE aluno(
	id_aluno BIGINT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(255),
	email VARCHAR(255),
	telefone VARCHAR(255),
	altura DECIMAL(3, 2),
	aprovado tinyint(1)
	PRIMARY KEY(id_aluno)
)ENGINE=INNODB;

INSERT INTO aluno(nome, email, telefone, altura) VALUES 
	('Jonas Hirata','hirata@k19.com.br', 1123873791 , 1.76, 1),
	('Lucas Marlon','lucas@k19.com.br', 1123873791 , 1.76, 1),
	('Sa Junior','sa@k19.com.br', 1123873791 , 1.76, 1),
	('Jhonatan Santos','jhonatan@k19.com.br', 1123873791 , 1.76, 1),
	('Rafael Cosentino', 'cosentino@k19.com.br', 1123873791, 1.87, 0);
	
SELECT * FROM Aluno WHERE altura = 1.8;
SELECT * FROM Aluno WHERE altura != 1.8;
SELECT * FROM Aluno WHERE altura <= 1.8;
SELECT * FROM Aluno WHERE altura < 1.8;
SELECT * FROM Aluno WHERE altura >= 1.8;
SELECT * FROM Aluno WHERE altura > 1.8;
SELECT * FROM Aluno WHERE aprovado IS TRUE ;
SELECT * FROM Aluno WHERE aprovado IS NOT TRUE ;
SELECT * FROM Aluno WHERE nome IS NULL ;
SELECT * FROM Aluno WHERE nome IS NOT NULL ;
SELECT * FROM Aluno WHERE altura BETWEEN 1.5 AND 1.8;
SELECT * FROM Aluno WHERE altura NOT BETWEEEN 1.5 AND 1.8;
SELECT * FROM Aluno WHERE nome LIKE ’Rafael %’;
SELECT * FROM Aluno WHERE nome NOT LIKE ’Rafael %’;
SELECT * FROM Aluno WHERE altura IN (1.5 , 1.6 , 1.7 , 1.8) ;
SELECT * FROM Aluno WHERE altura NOT IN (1.5 , 1.6 , 1.7 , 1.8) ;
SELECT * FROM Aluno WHERE NOT altura = 1.80;
SELECT * FROM Aluno WHERE altura < 1.8 AND nome LIKE ’Rafael %’;
SELECT * FROM Aluno WHERE altura < 1.8 OR nome LIKE ’Rafael %’;
SELECT * FROM Aluno WHERE altura < 1.8 XOR nome LIKE ’Rafael %’;
	
	