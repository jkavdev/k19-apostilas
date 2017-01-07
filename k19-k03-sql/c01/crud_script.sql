USE db_livraria;

-- Inserindo registros em uma tabela
INSERT INTO livro(titulo, preco) VALUES
	('Java', 19.50),
	('SQL', 2.50),
	('Design Pattern', 99.50);
	
-- Exibindo todos os registro de uma tabela
SELECT * FROM livro;

-- Qualquer operação que envolva alteração ou remoção de dados deve ser feita 
-- com cuidado pois se não especificarmos qual registro alterar ou remover,
-- poderá ser afetados a todos os registros do banco

-- Removerá todos os registros de livro
DELETE FROM livro;
-- Removerá apenas os registros de acordo com a condição
DELETE FROM livro WHERE titlo = 'Java';

-- Alterando os dados de um registro de acordo com valor de um campo
UPDATE livro SET preco = 115.9 WHERE titulo = 'Design Pattern'


