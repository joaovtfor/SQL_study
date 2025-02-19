CREATE TABLE categorias (
CODIGO INT NOT NULL PRIMARY KEY,
descricao VARCHAR(30)
);

CREATE TABLE produtos (
CODIGO INT NOT NULL PRIMARY KEY,
descricao VARCHAR(50),
unidade CHAR(3),
estoque NUMERIC(6,2),
preco NUMERIC(6,2),
categoria INT,
FOREIGN KEY (categoria) REFERENCES categorias(codigo)
);

INSERT INTO categorias (codigo, descricao) VALUES (1,'ferragens');
INSERT INTO categorias (codigo, descricao) VALUES (2,'tintas');
INSERT INTO categorias (codigo, descricao) VALUES (3,'ferramentas');
INSERT INTO categorias (codigo, descricao) VALUES (4,'material eletrico');
INSERT INTO categorias (codigo, descricao) VALUES (5,'material hidraulico');
INSERT INTO categorias (codigo, descricao) VALUES (6,'bazar');

insert into produtos (codigo, descricao, unidade, estoque, preco, categoria) 
values (100, 'martelo', 'uni', 10, 18.95, 3);
insert into produtos (codigo, descricao, unidade, estoque, preco, categoria) 
values (200, 'pregos', 'kg', 5, 3.90, 1);
insert into produtos (codigo, descricao, unidade, estoque, preco, categoria) 
values (300, 'tinta PVC', 'gal', 33, 75.65, 2);
insert into produtos (codigo, descricao, unidade, estoque, preco, categoria) 
values (400, 'tinta epoxi', 'gal', 17, 98.65, 2);
insert into produtos (codigo, descricao, unidade, estoque, preco, categoria) 
values (500, 'parafuso', 'uni', 100, 0.95, null);
insert into produtos (codigo, descricao, unidade, estoque, preco, categoria) 
values (600, 'alicate', 'uni', 20, 22.65, null);
