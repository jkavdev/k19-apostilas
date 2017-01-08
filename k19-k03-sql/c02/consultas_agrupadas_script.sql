USE db_livraria;

CREATE TABLE aluno(
	id_aluno BIGINT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(255),
	email VARCHAR(255),
	telefone VARCHAR(255),
	sexo VARCHAR(255),
	altura DECIMAL(3, 2),
	aprovado tinyint(1),
	PRIMARY KEY(id_aluno)
)ENGINE=INNODB;

INSERT INTO aluno(nome, email, telefone, altura, sexo) VALUES 
	('Jonas Hirata','hirata@k19.com.br', 1123873791 , 1.76, 1, 'M'),
	('Lucas Marlon','lucas@k19.com.br', 1123873791 , 1.76, 1, 'M'),
	('Sa Junior','sa@k19.com.br', 1123873791 , 1.76, 1, 'M'),
	('Jhonatan Santos','jhonatan@k19.com.br', 1123873791 , 1.76, 1, 'M'),
	('Eilane Mendes','eilane@k19.com.br', 1123873791 , 1.76, 1, 'F'),
	('Rafael Cosentino', 'cosentino@k19.com.br', 1123873791, 1.87, 0, 'M');
	
-- Exibindo a quantidade de registro de aluno aprovados e reprovados
-- agrupados por aprovado
SELECT aprovado, COUNT(*) 
	FROM Aluno
	GROUP BY aprovado;

-- Exibindo a quantidade de registro de aluno aprovados e reprovados
-- agrupados homens e mulheres e por aprovado	
SELECT aprovado, COUNT(*) 
	FROM Aluno
	GROUP BY sexo, aprovado;