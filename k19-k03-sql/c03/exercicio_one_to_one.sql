CREATE DATABASE db_escola;

SHOW DATABASES;

USE db_escola;

-- Na escola database, crie uma tabela chamada ficha para descrever o aluno com suas características.
-- Adicione atributos como: peso, data_nasc, altura, data de nascimento. Crie um relacionamento
-- 1 para 1 assim como no exemplo abaixo:
CREATE TABLE aluno(
	id_aluno BIGINT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(100),
	rg VARCHAR(10),
	sexo TINYINT(1),
	turma VARCHAR(255),
	PRIMARY KEY(id_aluno)
)ENGINE=INNODB;

CREATE TABLE ficha(
	id BIGINT NOT NULL AUTO_INCREMENT,
	data_nascimento DATE,
	altura VARCHAR(255),
	peso VARCHAR(255),
	aluno_id BIGINT NOT NULL,
	PRIMARY KEY(id),
	FOREIGN KEY(id) REFERENCES aluno(id)
)ENGINE=INNODB;

-- Crie uma tabela Livro que contenha apenas as colunas id, isbn e titulo. Caso a tabela já
-- exista, remova e crie ela novamente.
CREATE TABLE livro(
	id BIGINT NOT NULL AUTO_INCREMENT,
	titulo VARCHAR(255) NOT NULL,
	isbn VARCHAR(255) NOT NULL UNIQUE,
	PRIMARY KEY(id)
)ENGINE=INNODB;

-- Crie também uma tabela LivroDetalhe que contenha as informações adicionais dos livros.
-- Faça com que essa tabela contenha uma coluna que será a chave primária da tabela, assim como
-- uma chave estrangeira para relacionarmos esta tabela com a tabela Livro.
CREATE TABLE LivroDetalhe(
	id BIGINT NOT NULL AUTO_INCREMENT,
	paginas INT,
	data_lancamento DATE,
	autor_nome varchar(50) NOT NULL,	
	PRIMARY KEY(id),
	FOREIGN KEY(id) REFERENCES livro(id)
)ENGINE=INNODB;

-- Adicione alguns registros nas tabelas criadas para testar as restrições 
-- e o relacionamento one to one.
INSERT INTO livro(titulo, isbn) VALUES
	('Pense Java', '3214'),
	('Pense Java', '32145'),
	('Pense Java', '321454'),
	('Persistence Hibernate', '5488'),
	('Persistence JPA', '6547');

INSERT INTO LivroDetalhe(paginas, data_lancamento, autor_nome) VALUES
	(156, '1994-05-10', 'Jhonatan'),
	(156, '1994-05-10', 'Lucas'),
	(156, '1994-05-10', 'Douglas');