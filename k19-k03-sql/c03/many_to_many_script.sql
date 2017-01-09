CREATE DATABASE db_rede_social;

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

-- Relacionamento muitos para muitos, no qual um aluno pode ter várias turmas e uma turma pode ter vários alunos
-- Sendo a tabela aluno_turma criada para armazenar tais valores
create table aluno_turma(
	aluno_id BIGINT NOT NULL,
	turma_id BIGINT NOT NULL,
	PRIMARY KEY(aluno_id, turma_id),
	FOREIGN KEY(aluno_id) REFERENCES aluno(aluno_id),
	FOREIGN KEY(turma_id) REFERENCES turma(turma_id),
)