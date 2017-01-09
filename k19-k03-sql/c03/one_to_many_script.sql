CREATE DATABASE db_rede_social;

SHOW DATABASES;

USE db_rede_social;

-- Relacionamento um para muitos, onde um banco tem várias contas, e várias contas apenas um banco
CREATE TABLE conta(
	id BIGINT NOT NULL AUTO_INCREMENT,
	numero VARCHAR(10),
	saldo DECIMAL(14, 2),
	limite DECIMAL(14, 2),
	banco_id BIGINT NOT NULL,
	PRIMARY KEY(id),
	FOREIGN KEY(banco_id) REFERENCES banco(id)
)ENGINE=INNODB;

CREATE TABLE banco(
	id BIGINT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(255),
	endereco VARCHAR(255),
	PRIMARY KEY(id)
)ENGINE=INNODB;