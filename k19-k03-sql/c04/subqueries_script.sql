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
	turma VARCHAR(255),
	PRIMARY KEY(id_aluno)
)ENGINE=INNODB;

create table nota(
	aluno_id BIGINT NOT NULL,
	turma_id BIGINT NOT NULL,
	nota DECIMAL(4, 2),
	PRIMARY KEY(aluno_id, turma_id),
	FOREIGN KEY(aluno_id) REFERENCES aluno(aluno_id),
	FOREIGN KEY(turma_id) REFERENCES turma(turma_id),
)ENGINE=INNODB;

-- Se quisermos saber quais foram os alunos que tiraram uma nota maior que a média das notas de
-- cada turma, poderíamos realizar a seguinte consulta:
-- subquery dependente da query principal
SELECT * 
	FROM nota AS n1
	WHERE n1.nota > 
		(SELECT AVG(n2.nota)
			FROM nota n2
			WHERE n2.turma_id = n1.turma_id)

-- subquery independente da query principal			
SELECT n1.*, (SELECT max(n2.nota)
				FROM nota AS n2
				WHERE n2.turma_id = 2) AS maior_nota 
	FROM nota AS n1
	WHERE n1.turma_id = 1;			

