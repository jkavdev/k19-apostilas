USE db_livraria;

-- Exibindo nome e email de aluno
SELECT nome, email 
	FROM aluno;
	
-- Exibindo todos os registro de aluno
SELECT *
	FROM aluno;
	
-- Exibindo todos os registro de aluno e editora
SELECT *
	FROM aluno, editora;
	
-- Exibindo todos nome de aluno e editora e específicando de qual tabela retorna
SELECT aluno.nome, editora.nome
	FROM aluno, editora;
	
-- Exibindo todos nome de aluno e editora e usando apelidos para cada statement
SELECT a.nome as aluno_nome, e.nome as editora_nome
	FROM aluno as a, editora as e;