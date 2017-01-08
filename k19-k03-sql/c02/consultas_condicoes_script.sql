USE db_livraria;

-- Exibindo todos os registro com altura > 1.8
SELECT * 
	FROM aluno
	WHERE altura > 1.8;
	
-- Exibindo todos os registro de acordo com altura
SELECT * FROM aluno WHERE altura > 1.8;	
SELECT * FROM Aluno WHERE altura = 1.8;
SELECT * FROM Aluno WHERE altura <> 1.8;
SELECT * FROM Aluno WHERE altura != 1.8;
SELECT * FROM Aluno WHERE altura <= 1.8;
SELECT * FROM Aluno WHERE altura < 1.8;
SELECT * FROM Aluno WHERE altura >= 1.8;
SELECT * FROM Aluno WHERE altura > 1.8;
-- Exibindo todos os registro de acordo se está aprovado ou não
SELECT * FROM Aluno WHERE aprovado IS TRUE ;
SELECT * FROM Aluno WHERE aprovado IS NOT TRUE ;
-- Exibindo todos os registro de acordo nome vazio ou não
SELECT * FROM Aluno WHERE nome IS NULL ;
SELECT * FROM Aluno WHERE nome IS NOT NULL ;
-- Exibindo todos os registro entre dois valores
SELECT * FROM Aluno WHERE altura BETWEEN 1.5 AND 1.8;
SELECT * FROM Aluno WHERE altura NOT BETWEEEN 1.5 AND 1.8;
-- Exibindo todos os registro de acordo início do nome dado
SELECT * FROM Aluno WHERE nome LIKE 'Rafael %';
SELECT * FROM Aluno WHERE nome NOT LIKE 'Rafael %';
-- Exibindo todos os registro de acordo com dados valores de altura
SELECT * FROM Aluno WHERE altura IN (1.5 , 1.6 , 1.7 , 1.8) ;
SELECT * FROM Aluno WHERE altura NOT IN (1.5 , 1.6 , 1.7 , 1.8) ;

-- Eis uma lista dos operadores lógicos do MySQL Server que também podem ser utilizados com o
-- comando WHERE.
SELECT * FROM Aluno WHERE NOT altura = 1.80;
SELECT * FROM Aluno WHERE !(altura = 1.80);
SELECT * FROM Aluno WHERE altura < 1.8 AND nome LIKE 'Rafael %';
SELECT * FROM Aluno WHERE altura < 1.8 && nome LIKE 'Rafael %';
SELECT * FROM Aluno WHERE altura < 1.8 OR nome LIKE 'Rafael %';
SELECT * FROM Aluno WHERE altura < 1.8 || nome LIKE 'Rafael %';
SELECT * FROM Aluno WHERE altura < 1.8 XOR nome LIKE 'Rafael %';	
