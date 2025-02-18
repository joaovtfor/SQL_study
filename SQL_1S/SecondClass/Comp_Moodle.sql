-- PROJETO FISICO --
-- BANCO DE DADOS COMP --

 CREATE TABLE Modalidade (
	codigo INTEGER PRIMARY KEY,
	descricao VARCHAR(40)
);

-- SELECT + FROM Modalidade--
 --DROP TABLE Modalidade--
 
 CREATE TABLE Equipe(
 	Codigo INTEGER,
	Nome VARCHAR(40) NOT NULL,
	dataFundacao DATE check(dataFundacao <= current_date),
	codModalidade INTEGER,
	PRIMARY KEY (codigo),
	FOREiGN KEY (codModalidade) REFERENCES Modalidade(codigo)
);

 CREATE TABLE Competicao(
	codigo INTEGER,
	nome VARCHAR(50) NOT NULL,
	premiacaototal NUmERIC(12, 2) check(premiacaototal >=0)
);

 ALTER TABLE Competicao add constraint pk_cod
 						PRIMARY KEY(codigo);
						
 CREATE TABLE EquipeCompeticao(
	id INTEGER PRIMARY KEY,
	ano INTEGER default 2023,
	classficacaoFinal INTEGER,
	codEquipe INTEGER,
	codcomp INTEGER,
	FOREIGN KEY(codEquipe)REFERENCES Equipe(codigo)
);

 ALTER TABLE EquipeCompeticao add constraint fk_comp
 			 FOREIGN KEY(codcomp) REFERENCES Competicao(codigo);
			 			 
-----------DML------------			 
INSERT INTO Modalidade (codigo, descricao) VALUES(1, 'Futebol');
INSERT INTO Modalidade (codigo, descricao) VALUES(2, 'Basquete');
INSERT INTO Modalidade (codigo, descricao) VALUES(3, 'Voleibol');
INSERT INTO Modalidade (codigo) VALUES(4);

DELETE FROM Modalidade WHERE codigo = 4;

INSERT INTO Modalidade (codigo, descricao) VALUES(4, 'Sinuca');
INSERT INTO Modalidade VALUES(5, 'Bocha'); --Plausível quando se sabe as colunas *SEQUENCIAL*

SELECT * FROM Modalidade;

INSERT INTO Equipe (codigo, nome, dataFundacao, codModalidade) VALUES(100, 'Gremio', '15/09/1903', 1);
INSERT INTO Equipe VALUES(101, 'Inter', '03/04/1909', 1);
INSERT INTO Equipe (codigo, nome, codModalidade) VALUES(102, 'Brasil', 3);
INSERT INTO Equipe VALUES(103, 'Flamengo', NULL, 1);
INSERT INTO Equipe VALUES(104, 'Fluminense', '18/10/2023', 1); --Current day ACCEPTABLE ( <= current_date )
INSERT INTO Equipe VALUES(105, 'Botafogo', current_date, 1);

SELECT * FROM Equipe;

INSERT INTO Competicao (codigo, nome, premiacaoTotal) VALUES(1000, 'Copa do Brasil', 80000);
INSERT INTO Competicao (codigo, nome) VALUES(1002, 'Campeonato Brsileiro');

SELECT * FROM Competicao;

INSERT INTO EquipeCompeticao (id, ano, classficacaoFinal, codEquipe, codComp) VALUES (200, 2021, 2, 102, 1000);
INSERT INTO EquipeCompeticao (id, ano, classficacaoFinal, codEquipe, codComp) VALUES (201, 2021, 1, 101, 1000);
INSERT INTO EquipeCompeticao (id, ano, classficacaoFinal, codEquipe, codComp) VALUES (203, 2022, 3, 103, 1000);
INSERT INTO EquipeCompeticao (id, ano, classficacaoFinal, codEquipe, codComp) VALUES (204, 2019, 4, 100, 1000);
INSERT INTO EquipeCompeticao (id, ano, classficacaoFinal, codEquipe, codComp) VALUES (205, 1992, 5, 104, 1000);

SELECT * FROM EquipeCompeticao;

DELETE FROM Equipe WHERE nome = 'Botafogo';

SELECT * FROM Equipe;

UPDATE EquipeCompeticao SET classficacaoFinal = 8 WHERE classficacaoFinal = 4;

SELECT * FROM EquipeCompeticao;

--Inserir a data de funcacao da Equipe Flamengo para 01/01/2000
--Deletar todas as competições da década de 2000
--Aumentar em 10% a premiação da Competicção da Copa do Brasil

UPDATE Equipe SET dataFundacao = '01/01/2000' WHERE nome = 'Flamengo';

DELETE FROM EquipeCompeticao WHERE ano >= 2000;

UPDATE Competicao SET premiacaoTotal = premiacaoTotal + (premiacaoTotal*10/100) WHERE nome = 'Copa do Brasil';

SELECT * FROM Equipe;

SELECT * FROM EquipeCompeticao;

SELECT * FROM Competicao;