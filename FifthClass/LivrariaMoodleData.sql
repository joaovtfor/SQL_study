   INSERT INTO PAIS(sigla,nome)VALUES('BRA','Brasil');
   INSERT INTO PAIS(sigla,nome)VALUES('JAP','Japão');
   INSERT INTO PAIS(sigla,nome)VALUES('EUA','Estados Unidos da America');
   INSERT INTO PAIS(sigla,nome)VALUES('GUA','Guatemala');
   INSERT INTO PAIS(sigla,nome)VALUES('ITA','Itália');
   INSERT INTO PAIS VALUES ('COL', 'Colombia');
   INSERT INTO PAIS VALUES ('CHI', 'Chile');
      
 INSERT INTO Tema (codigo, descricao) VALUES (1, 'Romance');
 INSERT INTO Tema (codigo, descricao) VALUES (2, 'Poesia');
 INSERT INTO Tema (codigo, descricao) VALUES (3, 'Regionalismo');

 INSERT INTO livro (Codigo, Titulo, SituacaoLeitura, Codtema) VALUES (1, 'Memórias Póstumas de Brás Cubas','Sim', 1);
 INSERT INTO livro (Codigo, Titulo, SituacaoLeitura, Codtema) VALUES (2, 'O Almada', 'Não', 2);
 INSERT INTO livro (Codigo, Titulo, SituacaoLeitura, CodTema) VALUES (3, 'O Cortiço', 'Sim', 1);
 INSERT INTO livro (Codigo, Titulo, SituacaoLeitura, Codtema) VALUES (4, 'Os Sertões', 'Não', 3);
 INSERT INTO livro (Codigo, Titulo, SituacaoLeitura, Codtema) VALUES (5, 'Triste Fim de Policarpo Quaresma', 'Não', 1);
 INSERT INTO livro (Codigo, Titulo, SituacaoLeitura, Codtema) VALUES (6, 'A filha perdida', 'Não', 1);
 INSERT INTO livro (Codigo, Titulo, SituacaoLeitura, Codtema) VALUES (7, 'A cachorra', 'Não', 1);
 INSERT INTO livro (Codigo, Titulo, SituacaoLeitura, Codtema) VALUES (8, 'A cachorra que assoviava', 'Não', 1);
 INSERT INTO livro (Codigo, Titulo, SituacaoLeitura, Codtema) values (9, 'O Carteiro e o Poeta', 'Sim', 1);

 INSERT INTO filme (Codigo, Titulo, AnoEstreia, CodLivro) values (1, 'Memórias Póstumas de Brás Cubas', 2001, 1);
 INSERT INTO filme (Codigo, Titulo, AnoEstreia, CodLivro) values (2, 'O Cortiço', 1977, 3);
 INSERT INTO filme (Codigo, Titulo, AnoEstreia, CodLivro) values (3, 'A Filha perdida', 2021, 6);
 INSERT INTO filme (Codigo, Titulo, AnoEstreia, CodLivro) values (4, 'O Carteiro e o Poeta', 1994, 8);

 INSERT INTO autor (Nome, DataNasc, DataMorte, sigla) values ('Aluísio Azevedo', '14/04/1857', '21/01/1913', 'BRA');
 INSERT INTO autor (Nome, DataNasc, DataMorte, sigla) values ('Machado de Assis', '21/06/1839', '29/09/1908', 'BRA');
 INSERT INTO autor (Nome, DataNasc, DataMorte, sigla)  values ('Euclides da Cunha', '20/01/1866', '15/08/1909', 'BRA');
 INSERT INTO autor (Nome, DataNasc, DataMorte, sigla) values ('Lima Barreto', '20/01/1866', '15/08/1909', 'BRA');
 INSERT INTO autor (Nome, DataNasc, DataMorte, sigla) values ('Elena Ferrante', '5/4/1943', NULL, 'ITA');
 INSERT INTO autor (Nome, DataNasc, sigla) values ('Pilar Quintana','07/12/1972','COL');
 INSERT INTO autor (Nome, DataNasc, DataMorte, sigla) values ('Pablo Neruda', '12/07/1904', '23/09/1973', 'COL');

INSERT INTO autorlivro (codAutor, CodLivro) values (1, 1);
INSERT INTO autorlivro (codAutor, CodLivro) values (1, 2);
INSERT INTO autorlivro (codAutor, CodLivro) values (2, 3);
INSERT INTO autorlivro (codAutor, CodLivro) values (3, 4);
INSERT INTO autorlivro (codAutor, CodLivro) values (4, 5);
INSERT INTO autorlivro (codAutor, CodLivro) values (5, 6);
INSERT INTO autorlivro (codAutor, CodLivro) values (6, 7);
INSERT INTO autorlivro (codAutor, CodLivro) values (7, 8);