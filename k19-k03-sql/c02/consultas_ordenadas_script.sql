USE db_livraria;

-- Exibindo os registro da tabela aluno ordenados por altura
SELECT *
	FROM aluno
	ORDER BY altura;

-- Exibindo os registro da tabela aluno ordenados por altura e nome
SELECT *
	FROM aluno
	ORDER BY altura, nome;
	
-- Exibindo os registro da tabela aluno ordenados por altura decrescente e nome crescente
SELECT *
	FROM aluno
	ORDER BY altura DESC, nome ASC;