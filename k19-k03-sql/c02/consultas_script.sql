USE db_livraria;

-- Exibindo vários campos de uma tabela
-- no caso 'nome', e 'email' de aluno
SELECT nome, email 
	FROM aluno; 
	
-- Exibindo todos os campos da tabela 
SELECT * 
	FROM aluno;

-- Exibindo todos os registros de várias tabelas
SELECT * 
	FROM aluno, editora;	
	
-- Exibindo campos específicos de cada tabela
SELECT aluno.nome , editora.nome 
	FROM aluno, editora;
	
-- Dando apelidos aos campos
SELECT a.nome as aluno_nome, e.nome as editora_nome 
	FROM aluno as a, editora as e;



