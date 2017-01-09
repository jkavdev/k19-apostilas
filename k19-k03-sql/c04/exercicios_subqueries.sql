CREATE DATABASE IF NOT EXISTS db_k19_k03_c04;

SHOW DATABASES;

USE db_rede_social;

CREATE TABLE turma(
	id BIGINT NOT NULL AUTO_INCREMENT,
	sala INT NOT NULL,
	capacidade INT NOT NULL,
	observacoes LONGTEXT,
	PRIMARY KEY(id)
)ENGINE=INNODB;

CREATE TABLE aluno(
	id_aluno BIGINT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(100),
	rg VARCHAR(10),
	sexo TINYINT(1),
	PRIMARY KEY(id_aluno)
)ENGINE=INNODB;

-- Utilizando a biblioteca escola , crie uma nova tabela chamada Nota . Após isso, crie e adicione
-- alguns registros para essa tabela.
CREATE TABLE nota(
	aluno_id BIGINT NOT NULL,
	turma_id BIGINT NOT NULL,
	nota DECIMAL(4, 2),
	PRIMARY KEY(aluno_id, turma_id),
	FOREIGN KEY(aluno_id) REFERENCES aluno(aluno_id),
	FOREIGN KEY(turma_id) REFERENCES turma(turma_id),
)ENGINE=INNODB;

INSERT INTO turma(sala, capacidade, observacoes) VALUES
	(25, 50, 'Turma de Biologia'),
	(27, 50, 'Turma de Matemática'),
	(29, 50, 'Turma de Português'),
	(26, 50, 'Turma de Ciência');
	
INSERT INTO aluno(nome, rg, sexo) VALUES
	('Jhonatan', '123', 1),
	('Maria', '125', 0),
	('Lucas', '124', 1),
	('Eilane', '126', 0);
	
INSERT INTO nota VALUES
	(1, 1, 5.3),
	(1, 2, 6.3),
	(1, 3, 5.1),
	(1, 4, 5.4),
	(2, 2, 7.6);	

-- Faça uma consulta que retorne apenas as notas que são maiores que a nota média da turma.
-- Observe os resultados.
SELECT n1.nota as notas_acima_media 
	FROM nota AS n1
	WHERE n1.nota > 
		(SELECT AVG(n2.nota)
			FROM nota n2
			WHERE n2.turma_id = n1.turma_id)

-- Faça uma consulta que retorne a maior nota da turma cujo id da turma seje igual a 1. Mostre
-- essa nota em uma nova coluna chamada maior_nota 	
SELECT n1.*, (SELECT max(n2.nota)
				FROM nota AS n2
				WHERE n2.turma_id = 2) AS maior_nota 
	FROM nota AS n1
	WHERE n1.turma_id = 1;			

-- Crie ou altere a tabela Livro . A tabela deve conter uma coluna preco que irá armazenar o preço
-- de cada livro. Crie uma consulta que devolva todas as colunas de todos os livros registrados. Além
-- das colunas normais da tabela, crie uma coluna virtual que irá conter a média dos preços dos livros.	

-- Ainda utilizando a tabela Livro , crie uma consulta que devolva todas as colunas de todos os
-- livros registrados cujos preços sejam superiores em relação aos livros mais baratos.	

-- Na tabela Livro crie a coluna autor_id caso ela ainda não exista. Também crie ou altere atabela
-- Autor com, pelo menos, as colunas id e nome . Crie uma consulta que devolva todos os livros escritos
-- por autores cujos nomes começam com a letra A.	
