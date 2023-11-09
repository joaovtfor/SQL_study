   CREATE TABLE Pais(
     sigla  VARCHAR(3) PRIMARY KEY,
	 nome   VARCHAR(30) NOT NULL  
   );
   
   CREATE TABLE Tema(
     codigo     INT PRIMARY KEY,
	 descricao  VARCHAR(30) NOT NULL  
   );
   
   CREATE TABLE Livro(
     codigo   INT  PRIMARY KEY,
	 titulo   VARCHAR(200)  NOT NULL,
	 SituacaoLeitura VARCHAR(3) default 'Não' 
	     CHECK (SituacaoLeitura = 'Sim' or SituacaoLeitura = 'Não'),
	 codTema   INT,
	 FOREIGN KEY(codTema) REFERENCES Tema(codigo)  
   );
   
   CREATE TABLE Filme(
    codigo    INT,
	titulo    VARCHAR(100) NOT NULL,
	anoEstreia INT,
	codLivro  INT,   
    PRIMARY KEY(codigo),
	FOREIGN KEY(codLivro) REFERENCES Livro(codigo)   
   );
   
   CREATE TABLE Autor(
     id        serial PRIMARY KEY,
	 nome      VARCHAR(40) NOT NULL,
	 dataNasc  DATE NOT NULL,
	 dataMorte DATE,  
     sigla     VARCHAR(3),
	 FOREIGN KEY(sigla) REFERENCES Pais(sigla)  
   );
   
   CREATE TABLE AutorLivro(
     codAutor INT,
	 codLivro INT,
	 FOREIGN KEY(codAutor) REFERENCES Autor(id),  
	 FOREIGN KEY(codLivro) REFERENCES Livro(codigo),  
	 PRIMARY KEY(codAutor,codLivro)  
   );
   
   
 