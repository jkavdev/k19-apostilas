USE db_livraria;

-- Criando uma tabela com dois campos
CREATE TABLE livro(
	titulo VARCHAR(255),
	preco DOUBLE
)ENGINE=MYISAM;

-- Exibindo todas as tabelas do banco selecionado
SHOW TABLES;

-- Removendo um tabela 
DROP TABLE livro;

-- Alterando a estrutura da tabela
ALTER TABLE livro RENAME livros;
-- Adicionando campo a tabela
ALTER TABLE livro ADD paginas INTEGER;
-- Removendo campo da tabela
ALTER TABLE livro DROP paginas;



