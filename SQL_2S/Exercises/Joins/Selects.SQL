* INNER JOIN
Retorna só os produtos que possuem uma categoria na tabela Categorias.

    SELECT p.codigo AS cod_produto, p.descricao AS produto, p.unidade, p.estoque, p.preco,
c.codigo AS cod_categoria, c.descricao AS categoria
    FROM produtos p
    INNER JOIN categorias c ON p.categoria = c.codigo;

* LEFT JOIN
Retorna todos os produtos, incluindo aqueles sem categoria (categoria retorna NULL).

    SELECT p.codigo AS cod_produto, p.descricao AS produto, p.unidade, p.estoque, p.preco,
c.codigo AS cod_categoria, c.descricao AS categoria
    FROM produtos p
    LEFT JOIN categorias c ON p.categoria = c.codigo;

* RIGHT JOIN
Retorna todas as categorias juntos com as que não possuem produtos associados (produto
retorna NULL).

    SELECT p.codigo AS cod_produto, p.descricao AS produto, p.unidade, p.estoque, p.preco,
c.codigo AS cod_categoria, c.descricao AS categoria
    FROM produtos p
    RIGHT JOIN categorias c ON p.categoria = c.codigo;

* FULL JOIN
Retorna todos os produtos e todas as categorias, juntando o LEFT JOIN e RIGHT JOIN.

    SELECT p.codigo AS cod_produto, p.descricao AS produto, p.unidade, p.estoque, p.preco,
c.codigo AS cod_categoria, c.descricao AS categoria
    FROM produtos p
    FULL JOIN categorias c ON p.categoria = c.codigo;