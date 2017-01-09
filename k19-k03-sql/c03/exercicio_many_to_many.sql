CREATE DATABASE db_escola;

SHOW DATABASES;

USE db_escola;

-- Crie ou altere duas tabelas: Autor e Livro . Defina algumas colunas em ambas tabelas tendo
-- em mente que um autor pode escrever diversos livros e um livro pode ser escrito por um ou mais autores
CREATE TABLE livro(
	id BIGINT NOT NULL AUTO_INCREMENT,
	titulo VARCHAR(255) NOT NULL,
	autor_id BIGINT NOT NULL,
	PRIMARY KEY(id),
	FOREIGN KEY(autor_id) REFERENCES autor(id)
)ENGINE=INNODB;

CREATE TABLE autor(
	id BIGINT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(255),
	cpf VARCHAR(255),
	livro_id BIGINT NOT NULL,
	PRIMARY KEY(id),
	FOREIGN KEY(livro_id) REFERENCES livro(id)
)ENGINE=INNODB;

-- Crie uma tabela de relacionamento entre as tabelas Autor e Livro . Não se esqueça das restrições
CREATE TABLE livro(
	id BIGINT NOT NULL AUTO_INCREMENT,
	titulo VARCHAR(255) NOT NULL,
	PRIMARY KEY(id)
)ENGINE=INNODB;

CREATE TABLE autor(
	id BIGINT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(255),
	cpf VARCHAR(255),
	PRIMARY KEY(id)
)ENGINE=INNODB;

CREATE TABLE autor_livro(
	autor_id BIGINT NOT NULL,
	livro_id BIGINT NOT NULL,
	PRIMARY KEY(autor_id, livro_id),
	FOREIGN KEY(autor_id) REFERENCES autor(id),
	FOREIGN KEY(livro_id) REFERENCES livro(id)
)ENGINE=INNODB;	

-- Insira alguns valores para testar as restrições e relacionamentos. Observe os resultados.
INSERT INTO livro(titulo) VALUES
	('Pense Java'),
	('Pense Java'),
	('Pense Java'),
	('Persistence Hibernate'),
	('Persistence JPA');
	
INSERT INTO autor(nome, cpf) VALUES
	('Jhonatan', '04444'),
	('Maria', '04sd4'),
	('Douglas', '045s4'),
	('Lucas', '043a4');
	
INSERT INTO autor_livro(autor_id, livro_id) VALUES
	(1, 1),
	(2, 1),
	(3, 1),
	(3, 1),
	(4, 1);
	
