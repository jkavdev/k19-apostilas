CREATE DATABASE db_loja;

SHOW DATABASES;

USE db_loja;

-- Uma tabela pode ter apenas 1 chave primária
-- id_aluno é a chave primária com campo numérico e auto incrementável
CREATE TABLE cliente(
	id_aluno BIGINT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(255),
	cpf VARCHAR(20) UNIQUE,
	PRIMARY KEY(id_aluno)
)ENGINE=INNODB;

-- id_aluno é a chave primária com campo numérico e não auto incrementável
-- obrigatório informar o valor da chave primária na inserção do registro
CREATE TABLE cliente(
	id_aluno BIGINT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(255),
	cpf VARCHAR(20) UNIQUE,
	PRIMARY KEY(id_aluno)
)ENGINE=INNODB;

-- id_aluno é a chave primária com campo string
-- obrigatório informar o valor da chave primária na inserção do registro
CREATE TABLE cliente(
	id_aluno VARCHAR(255),
	nome VARCHAR(255),
	cpf VARCHAR(20) UNIQUE,
	PRIMARY KEY(id_aluno)
)ENGINE=INNODB;