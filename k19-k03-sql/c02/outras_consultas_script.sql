USE db_livraria;

-- Exibindo apenas nome únicos e email de aluno
SELECT DISTINCT(nome), email 
	FROM aluno;
	
-- Limitando a exibição dos registro de alunos para até 10 registros
SELECT *
	FROM aluno
	LIMIT 10;
	
-- Limitando a exibição dos registro de alunos para até 5 registros
-- Descartando os 5 primeiros registros
SELECT *
	FROM aluno
	LIMIT 5, 5;