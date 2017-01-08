CREATE DATABASE db_rede_social;

SHOW DATABASES;

USE db_rede_social;

-- Relacionamento one to one, onde um usuário tem perfil e perfil tem um usuário
CREATE TABLE usuario(
	id BIGINT NOT NULL AUTO_INCREMENT,
	nome_usuario VARCHAR(10),
	senha VARCHAR(10),
	email VARCHAR(100),
	PRIMARY KEY(id_conta)
)ENGINE=INNODB;

-- O dono do relacionamento está em perfil, no qual tem um campo de referência a usuário.
CREATE TABLE perfil(
	id BIGINT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(10),
	sexo TINYINT(1),
	profissao VARCHAR(255),
	ode_estudou VARCHAR(255),
	hobbies VARCHAR(255),
	gosto_musical VARCHAR(255),
	PRIMARY KEY(id),
	FOREIGN KEY(id) REFERENCES usuario(id)
)ENGINE=INNODB;