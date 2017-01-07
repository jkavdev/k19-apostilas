USE db_livraria;

-- Criando tabela com campo 'titulo' sendo único e não vazio
-- e 'preço' não vazio
CREATE TABLE livro(
	titulo VARCHAR(255) NOT NULL UNIQUE,
	preco DOUBLE NOT NULL
)ENGINE=MYISAM;

