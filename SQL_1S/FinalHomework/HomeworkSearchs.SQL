UPDATE ClienteProduto
SET id_cliente = 104
WHERE id = 1004;

SELECT pc.id, c.nome, p.nome
FROM ClienteProduto pc INNER JOIN Cliente c ON
    pc.id_cliente = c.id
INNER JOIN Produto p ON
    pc.cod_produto = p.id

SELECT c.nome, pc.id 
FROM Cliente c LEFT JOIN ClienteProduto pc ON
    c.id = pc.id

SELECT c.nome, p.preco
FROM Cliente c INNER JOIN ClienteProduto pc ON
    c.id = pc.id_cliente 
INNER JOIN Produto p ON
    pc.cod_produto = p.codigo
GROUP BY p.preco
HAVING p.preco > 10.0
ORDER BY p.preco DESC
