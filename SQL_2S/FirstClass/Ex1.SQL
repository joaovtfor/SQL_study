-- TABLES CREATION
CREATE TABLE cidades (
codigo NUMERIC(4) NOT NULL,
cidade VARCHAR(30) NOT NULL,
uf CHAR(2) NOT NULL,
PRIMARY KEY (codigo)
);

CREATE TABLE marcas (
codigo NUMERIC(4) NOT NULL,
marca VARCHAR(30) NOT NULL,
PRIMARY KEY (codigo)
);

CREATE TABLE modelos (
codigo NUMERIC(4) NOT NULL,
modelo VARCHAR(30) NOT NULL,
marca NUMERIC(4) NOT NULL,
PRIMARY KEY (codigo),
FOREIGN KEY (marca) REFERENCES marcas(codigo)
);

CREATE TABLE carros (
placa CHAR(8) NOT NULL,
chassis VARCHAR(11) NOT NULL,
modelo NUMERIC(4) NOT NULL,
ano NUMERIC(4),
cor VARCHAR(20),
PRIMARY KEY (placa),
FOREIGN KEY (modelo) REFERENCES modelos(codigo)
);

CREATE TABLE ocorrencias (
numero NUMERIC(5) NOT NULL,
data date,
descricao VARCHAR(30),
cidade NUMERIC(4) NOT NULL,
placa CHAR(8),
PRIMARY KEY (numero),
FOREIGN KEY (cidade) REFERENCES cidades (codigo),
FOREIGN KEY (placa) REFERENCES carros (placa)
);

-- ===================================================
-- DATA INSERTION

INSERT INTO cidades VALUES (1, 'Casca', 'RS');
INSERT INTO cidades VALUES (2, 'Bom Jesus', 'RS');
INSERT INTO cidades VALUES (3, 'Caxias do Sul', 'RS');
INSERT INTO cidades VALUES (4, 'Sao Paulo', 'SP');
INSERT INTO cidades VALUES (5, 'Porto Alegre', 'RS');

INSERT INTO marcas VALUES (1, 'GM');
INSERT INTO marcas VALUES (2, 'Fiat');
INSERT INTO marcas VALUES (3, 'Ford');
INSERT INTO marcas VALUES (4, 'Volkswagen');
INSERT INTO marcas VALUES (5, 'Toyota');

INSERT INTO modelos VALUES (1, 'Corolla', 5);
INSERT INTO modelos VALUES (2, 'Punto', 2);
INSERT INTO modelos VALUES (3, 'Vectra GT', 1);
INSERT INTO modelos VALUES (4, 'Focus', 3);
INSERT INTO modelos VALUES (5, 'Golf', 4);

-- ===================================================
-- Querys

SELECT DISTINCT Carros.placa, Marcas.codigo, Modelos.descricao
FROM Carros
INNER JOIN Modelos ON Carros.codigoModelo = Modelos.codigo
INNER JOIN Marcas ON Modelos.codigoMarca = Marcas.codigo
INNER JOIN Ocorrencias ON Carros.placa = Ocorrencias.placa
WHERE Ocorrencias.cidade IN (
                              SELECT cidade
                              FROM Ocorrencias
                              WHERE placa = 'MNM-5432'
                            )
AND Carros.placa <> 'MNM-5432';

SELECT DISTINCT Cidades.cidade, Cidades.uf
FROM cidades
INNER JOIN Ocorrencias on Ocorrencias.cidade = Cidades.codigo;

SELECT Cidades.cidade, Cidades.uf
FROM Cidades
WHERE Cidades.codigo NOT IN (
                              SELECT DISTINCT Cidades.cidade, Cidades.uf
                              FROM cidades
                              INNER JOIN Ocorrencias on Ocorrencias.cidade = Cidades.codigo
                            );
                            
SELECT Cidades.codigo, cidades.cidade, cidades.uf
FROM Cidades
MINUS
SELECT Cidades.codigo, Cidades.cidade, Cidades.uf
FROM Cidades, Ocorrencias
WHERE Ocorrencias.cidade = Cidades.codigo;

SELECT mo.MODELO, count(*) AS Contagem
FROM modelos mo, carros ca, ocorrencias oc
WHERE ca.MODELO = mo.codigo
AND ca.placa = co.placa
GROUP BY mo.modelo;