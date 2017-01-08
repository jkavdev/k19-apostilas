USE db_livraria;

-- Exibindo a quantidade de registro de aluno
SELECT COUNT(*) 
	FROM Aluno;

-- Exibindo a média das alturas de alunos	
SELECT AVG(altura) 
	FROM Aluno;

-- Exibindo a soma das alturas de alunos
SELECT SUM(altura) 
	FROM Aluno;

-- Exibindo a maior altura de alunos
SELECT MAX(altura) 
	FROM Aluno;

-- Exibindo a menor altura de alunos
SELECT MIN(altura) 
	FROM Aluno;

SELECT VARIANCE(altura) 
	FROM Aluno;

SELECT STD(altura) 
	FROM Aluno;
SELECT STDDEV(altura) 
	FROM Aluno;