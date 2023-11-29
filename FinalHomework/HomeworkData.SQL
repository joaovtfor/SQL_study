INSERT INTO Semente (preco, nome, quantidade, tipo) VALUES ( 12.50, "Café", 50, "Córnea");
INSERT INTO Semente (preco, nome, quantidade, tipo) VALUES ( 15.50, "Milho", 100, "Amilácea");
INSERT INTO Semente (preco, nome, quantidade, tipo, tratamento) VALUES ( 5.50, "Trigo", 250, "Amilácea", True);
INSERT INTO Semente (preco, nome, quantidade, tipo) VALUES ( 10.50, "Soja", 250, "Aleuro_Oleaginosa");
INSERT INTO Semente (preco, nome, quantidade, tipo, tratamento) VALUES ( 17.50, "Feijão", 150, "Aleuro_Amilácea", True);

INSERT INTO Insumo (preco, nome, quantidade, variedade) VALUES ( 20.00, "Herbicida", 15, "def_agrícola");
INSERT INTO Insumo (preco, nome, quantidade, variedade) VALUES ( 25.00, "Bactericida", 10, "def_agrícola");
INSERT INTO Insumo (preco, nome, quantidade, variedade) VALUES ( 20.00, "NPK", 15, "fertilizante");
INSERT INTO Insumo (preco, nome, quantidade, variedade) VALUES ( 20.00, "Cálcio", 15, "fertilizante");
INSERT INTO Insumo (preco, nome, quantidade, variedade) VALUES ( 20.00, "Fungicida", 15, "def_agrícola");

INSERT INTO Cliente (id, nome) VALUES (101, "Fernando");
INSERT INTO Cliente (id, nome) VALUES (102, "João");
INSERT INTO Cliente (id, nome) VALUES (103, "Tiago");
INSERT INTO Cliente (id, nome) VALUES (104, "Leandro");
INSERT INTO Cliente (id, nome) VALUES (105, "Danilo");

INSERT INTO ClienteProduto (id, id_cliente, cod_produto) VALUES (1000, 3, 103);
INSERT INTO ClienteProduto (id, id_cliente, cod_produto) VALUES (1001, 1, 102);
INSERT INTO ClienteProduto (id, id_cliente, cod_produto) VALUES (1002, 2, 101);
INSERT INTO ClienteProduto (id, id_cliente, cod_produto) VALUES (1003, 4, 105);
INSERT INTO ClienteProduto (id, id_cliente, cod_produto) VALUES (1004, 5, 102);