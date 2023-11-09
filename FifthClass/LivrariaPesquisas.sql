--1- Listar o nome de todos os autores em ordem alfabética
--2- Listar o título dos livros que posuem situação de leitura SIM e tema com código entre 1 e 5
--3- Listar o títulos dos filmes e ano de estréia. Listar ordenado pelo lançamento mais recente.
--4- Listar o nome e Datas de Nasc. dos autores com nascimento em na década de 90
--5- Listar o nome e o dia de nascimentos de todos autores
--6- Listar o nome dos autores que já faleceram
--7- Listar o nome dos autores que nasceram no Brasil e nos Estados Unidos
--8- Listar o títulos dos livros que possuem o termo cachorra


-- 1
SELECT nome 
FROM autor 
ORDER BY nome;

--2
SELECT titulo
FROM livros
WHERE SituacaoLeitura = 'Sim' AND Codtema BETWEEN 1 AND 5;

--3
SELECT Titulo, AnoEstreia
FROM Filme
ORDER BY anoEstreia DESC;

--4
SELECT Nome, DataNasc
FROM Autor
WHERE   EXTRACT (YEAR FROM dataNasc) >= 1990 AND
        EXTRACT(YEAR FROM dataNasc) <= 1999;

--5
SELECT Nome, EXTRACT (DAY FROM DataNasc) 
FROM Autor;

--6
SELECT Nome
FROM Autor
WHERE DataMorte IS NOT NULL;

--7
SELECT Nome
FROM Autor
WHERE sigla = 'BRA' OR sigla = 'EUA';

--8
SELECT Titulo
FROM Livro
WHERE LOWER(titulo) LIKE '%cachorra%';

--9-  Listar NOME e a DATA DE NASCIMENTO dos AUTORES que estão vivos. Liste em ordem alfabética
--10- Listar os livros cadastrados do tema Romance
--11- Listar o nome do autor MAIS VELHO cadastrado na base de dados
--12- Listar o nome dos livros que tem filme. Listar o nome do Livro em maiúscula e o nome do Filme em minúsculo.
--13- Faça o comando SQL para listar o nome dos livros que já foram lidos.

--9
SELECT Nome, DataNasc 
FROM Autor 
WHERE DataMorte IS NULL
ORDER BY Nome;

--10
SELECT l.Titulo, t.descricao
FROM livro l INNER JOIN tema t ON 
    l.codTema = t.codigo
WHERE lower(t.descricao) = 'romance';

--11
SELECT nome
FROM Autor
ORDER BY dataNasc DESC
LIMIT 1;

--12
SELECT UPPER(l.titulo), LOWER(f.titulo)
FROM livro l INNER JOIN filme f ON
    l.codigo = f.CodLivro

--13
SELECT titulo 
FROM Livro
WHERE SituacaoLeitura = 'Sim'

