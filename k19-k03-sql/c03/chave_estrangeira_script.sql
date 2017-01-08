CREATE DATABASE db_loja;

SHOW DATABASES;

USE db_loja;

CREATE TABLE banco(
	id_banco BIGINT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(255),
	PRIMARY KEY(id_banco)
)ENGINE=INNODB;

-- Criação de campo id_banco referenciando registro na tabela banco
CREATE TABLE conta(
	id_conta BIGINT NOT NULL AUTO_INCREMENT,
	numero VARCHAR(255),
	saldo VARCHAR(20) UNIQUE,
	id_banco BIGINT NOT NULL,
	PRIMARY KEY(id_conta),
	FOREIGN KEY(id_banco) REFERENCES Banco(id_banco)
)ENGINE=INNODB;
