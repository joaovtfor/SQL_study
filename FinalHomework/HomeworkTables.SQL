CREATE TABLE Cliente (
	id INT NOT NULL PRIMARY KEY,
	nome VARCHAR(40) NOT NULL
);

CREATE TABLE Produto (
	codigo SERIAL NOT NULL PRIMARY KEY,
	preco FLOAT NOT NULL,
	nome VARCHAR(40) NOT NULL,
	quantidade INT NOT NUL
);

CREATE TABLE ClienteProduto (
	id_cliente INT NOT NULL,
	cod_produto INT NOT NULL,
	id INT NOT NULL PRIMARY KEY,

	FOREIGN KEY (id_cliente) 
		REFERENCES Cliente (id),

	FOREIGN KEY (cod_produto) 
		REFERENCES Cliente (id)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

CREATE TABLE Semente (
	tratamento BOOL DEFAULT False,
	tipo VARCHAR(20) NOT NULL
) INHERITS ( Produto );
CREATE TABLE Insumo (
	variedade VARCHAR(20)
) INHERITS ( Produto );