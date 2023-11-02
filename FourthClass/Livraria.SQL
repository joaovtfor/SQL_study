CREATE TABLE IF NOT EXISTS Autor (
    codigo INT NOT NULL,
    nome VARCHAR(20),
    dataN DATE NOT NULL,
    dataM DATE,
    país CHAR(2),

    PRIMARY KEY (codigo),
	
    FOREIGN KEY(país)
        REFERENCES País (sigla)
);

CREATE TABLE IF NOT EXISTS País(
    sigla CHAR(2) NOT NULL,
    nome VARCHAR(15),
	
	PRIMARY KEY (sigla)
);

CREATE TABLE IF NOT EXISTS Filme (
    codigo INT NOT NULL,
    anoEstreia INT,
    título VARCHAR(20),
    codLivro INT,

    PRIMARY KEY(codigo),
    FOREIGN KEY(codLivro)
        REFERENCES Livro(codigo)
);

CREATE TABLE IF NOT EXISTS Tema(
    codigo INT NOT NULL,
    descricao VARCHAR(20),

    PRIMARY KEY(codigo)
);

CREATE TABLE IF NOT EXISTS Livro (
    codigo INT NOT NULL,
    título VARCHAR(20),
    situacao CHAR(1) DEFAULT 'N',
    tema INT,
    codAutor INT,

    PRIMARY KEY(codigo),
    FOREIGN KEY(codAutor)
        REFERENCES Autor(codigo),
    FOREIGN KEY(tema)
        REFERENCES Tema (codigo)
);

CREATE TABLE IF NOT EXISTS AutorLivro (
    codAutor INT,
    codLivro INT,

    PRIMARY KEY(codAutor, codLivro),
    FOREIGN KEY (codAutor)
        REFERENCES Autor (codigo),
    FOREIGN KEY (codLivro)
        REFERENCES Livro (codigo)
);

INSERT INTO País VALUES ('RS', 'Rio Grande do Sul');
INSERT INTO País VALUES ('SP', 'São Paulo');
INSERT INTO País VALUES ('ES', 'Espírito Santo');
INSERT INTO País VALUES ('RJ', 'Rio de Janeiro');

INSERT INTO Autor VALUES (1, 'Israel', '10/11/1996', null, 'RS');
INSERT INTO Autor VALUES (2, 'Mariane', '16/05/2003', null, 'ES');
INSERT INTO Autor VALUES (3, 'Gabriel', '19/07/1992', null, 'RJ');
INSERT INTO Autor VALUES (4, 'João', '06/11/2002', null, 'SP');

SELECT * FROM País;