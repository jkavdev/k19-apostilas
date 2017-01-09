CREATE DATABASE db_loja; 

SHOW DATABASES;

USE db_loja;

-- Criando cpf como campo único, não sendo permitido campo repetidos
CREATE TABLE cliente(
	id_aluno BIGINT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(255),
	cpf VARCHAR(20) UNIQUE,
	PRIMARY KEY(id_aluno)
)ENGINE=INNODB;

INSERT INTO cliente(nome, cpf) VALUES 
	('Jonas Hirata','123321'),
	('Lucas Marlon','123541'),
	('Sa Junior','123141'),
	('Jhonatan Santos','123387'),
	('Rafael Cosentino', '123134');

-- Alterando estrutura da tabela caso já exista	
ALTER TABLE cliente ADD UNIQUE(cpf);	

-- Criando um index como campo único, não sendo permitido que haja registros repetidos
-- com nome, sexo e cpf iguais
CREATE TABLE cliente(
	id_aluno BIGINT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(255),
	cpf VARCHAR(20) UNIQUE,
	sexo varchar(255) NOT NULL,
	UNIQUE INDEX(nome, sexo, cpf),
	PRIMARY KEY(id_aluno)
)ENGINE=INNODB;

INSERT INTO cliente(nome, cpf) VALUES 
	('Jonas Hirata','123321', 'M'),
	('Lucas Marlon','123541', 'M'),
	('Sa Junior','123141', 'M'),
	('Jhonatan Santos','123387', 'M'),
	('Maia Mei','114387', 'F'),
	('Rafael Cosentino', '123134', 'M');