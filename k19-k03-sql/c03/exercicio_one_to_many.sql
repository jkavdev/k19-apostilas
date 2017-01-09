CREATE DATABASE db_escola;

SHOW DATABASES;

USE db_escola;

-- Na bilbioteca escola , crie uma tabela para a orientação e outra para as turmas. A tabela
-- orintacao deve possuir um relacionamento one to many com a tabela turma . Defina também suas
-- restrições. Turma
CREATE TABLE turma(
	id BIGINT NOT NULL AUTO_INCREMENT,
	sala INT NOT NULL,
	capacidade INT NOT NULL,
	PRIMARY KEY(id)
)ENGINE=INNODB;

CREATE TABLE orientacao(
	id BIGINT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(255),
	cpf VARCHAR(255),
	turma_id BIGINT NOT NULL,
	PRIMARY KEY(id),
	FOREIGN KEY(turma_id) REFERENCES turma(id)
)ENGINE=INNODB;

-- Crie ou altere duas tabelas: Editora e Livro . Crie as colunas e restrições necessárias para
-- obtermos um relacionamento one to many entre elas. Dica: uma editora pode publicar diversos
-- livros e um livro só pode pertencer à apenas uma editora.
CREATE TABLE editora(
	id_editora BIGINT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	email VARCHAR(255) NOT NULL,
	ano_criacao DATE NOT NULL,
	nacionalidade VARCHAR(255) NOT NULL,	
	PRIMARY KEY(id_editora)
)ENGINE=INNODB;

CREATE TABLE livro(
	matricula BIGINT NOT NULL AUTO_INCREMENT,
	titulo VARCHAR(255) NOT NULL,
	autor varchar(255) NOT NULL,
	editora_id BIGINT NOT NULL,
	PRIMARY KEY(matricula),
	FOREIGN KEY(editora_id) REFERENCES editora(id)
)ENGINE=INNODB;

-- Insira alguns valores para testar as restrições e relacionamentos. Observe os resultados.
INSERT INTO editora(nome , email , ano_criacao , nacionalidade) VALUES 
	('Editora São Paulo','hirata@k19.com.br', '10-05-1994', 'BR'),
	('Editora Booksans', 'cosentino@k19.com.br', '10-05-1996', 'USA');
	
INSERT INTO livro(titulo, autor, editora_id) VALUES
	('Pense Java', 'Jhonatan', 1),
	('Pense Java', 'Lucas', 1),
	('Pense Java', 'Lucas', 1),
	('Persistence Hibernate', 'Douglas', 2),
	('Persistence JPA', 'Lucas', 3);	