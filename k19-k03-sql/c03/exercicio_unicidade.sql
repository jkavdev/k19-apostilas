CREATE DATABASE db_escola;

SHOW DATABASES;

USE db_escola;

-- Utilizando a biblioteca escola, crie uma restrição para a tabela aluno, como mostra abaixo.
-- Após isso, tente inserir alguns registros com valores repetidos na coluna RG e observe o resultado.
CREATE TABLE cliente(
	id_aluno BIGINT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(255),
	cpf VARCHAR(9) UNIQUE,
	PRIMARY KEY(id_aluno)
)ENGINE=INNODB;

INSERT INTO cliente(nome, cpf) VALUES 
	('Jonas Hirata','123321'),
	('Lucas Marlon','123541'),
	('Sa Junior','123141'),
	('Samuel Junior','123141'),
	('Jhonatan Santos','123387'),
	('Rafael Cosentino', '123134');	

-- Reescreva o exercício anterior para que a tabela Aluno tenha um índice composto, como mostra
-- o exemplo abaixo. Insira alguns registros para testar a restrição UNIQUE. Observe os resultados.
CREATE TABLE cliente(
	matricula BIGINT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(255),
	sexo varchar(255) NOT NULL,
	UNIQUE INDEX(nome, sexo),
	PRIMARY KEY(matricula)
)ENGINE=INNODB;

INSERT INTO cliente(nome, cpf) VALUES 
	('Jonas Hirata', 'M'),
	('Lucas Marlon', 'M'),
	('Sa Junior', 'M'),
	('Jhonatan Santos', 'M'),
	('Maia Mei', 'F'),
	('Rafael Cosentino', 'M');

-- Crie ou atualize uma tabela Livro para que ela contenha, pelo menos, as colunas titulo e
-- autor, ambas VARCHAR(255).
CREATE TABLE livro(
	matricula BIGINT NOT NULL AUTO_INCREMENT,
	titulo VARCHAR(255) NOT NULL,
	autor varchar(255) NOT NULL,
	PRIMARY KEY(matricula)
)ENGINE=INNODB;

-- Insira alguns valores na tabela Livro. Tente inserir valores com títulos e autores repetidos e
-- observe os resultados.
INSERT INTO livro(titulo, autor) VALUES
	('Pense Java', 'Jhonatan'),
	('Pense Java', 'Lucas'),
	('Pense Java', 'Lucas'),
	('Persistence Hibernate', 'Douglas'),
	('Persistence JPA', 'Lucas');
	
-- Remova todos os registros da tabela Livro e faça uma alteração na mesma para que não seja
-- permitida a inserção de valores repetidos nas colunas titulo e autor.
DELETE FROM livro;
ALTER TABLE livro ADD UNIQUE INDEX(titulo, autor);

-- Tente inserir valores com títulos e autores repetidos e observe os resultados.
INSERT INTO livro(titulo, autor) VALUES
	('Pense Java', 'Jhonatan'),
	('Pense Java', 'Lucas'),
	('Pense Java', 'Lucas'),
	('Persistence Hibernate', 'Douglas'),
	('Persistence JPA', 'Lucas');