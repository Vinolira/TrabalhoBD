INSERT INTO cliente (clienteid, nome)
VALUES
	(1,'Rafael'),
	(2,'Vanessa'),
	(3,'Vinicius'),
	(4,'Joao'),
	(5,'Pedro'),
	(6,'Miguel'),
	(7,'Gabriel'),
	(8,'Joao'),
	(9,'Maria'),
	(10,'Ana');
INSERT INTO endereco (enderecoid, CEP)
VALUES
	(1,'79051-251'),
	(2,'12345-678'),
	(3,'87654-321'),
	(4,'11111-111'),
	(5,'14557-868'),
	(6,'44038-123'),
	(7,'14038-124'),
	(8,'44047-369'),
	(9,'24680-135'),
	(10,'13579-246');
INSERT INTO cliente_endereco (clienteid, enderecoid, tipo)
VALUES
	(1,10,'Entrega'),
	(2,9,'Ambos'),
	(3,8,'Entrega'),
	(4,7,'Ambos'),
	(5,6,'Pagamento'),
	(6,5,'Entrega'),
	(7,4,'Entrega'),
	(8,3,'Pagamento'),
	(9,2,'Ambos'),
	(10,1,'Pagamento');
INSERT INTO categoria (categoriaid, nome)
VALUES
	(1,'eletrodoméstico'),
	(2,'tecnologia'),
INSERT INTO produto (produtoid, categoriaid, nome)
VALUES
	(1,1,'Geladeira Brastemp'),
	(2,1,'Notebook Dell'),
	(3,2,'Microondas LG'),
	(4,2,'Tablet Samsung'),
	(5,1,'Televisao Samsung'),
	(6,2,'Smartphone iPhone'),
	(7,2,'Geladeira Brastemp'),
	(8,2,'Televisao Samsung'),
	(9,1,'Notebook Dell'),
	(10,1,'Smartphone iPhone');
INSERT INTO pedido (pedidoid, clienteid, enderecoentregaid, data)
VALUES
	(1,3,2,10/07/2025),
	(2,7,4,29/06/2025),
	(3,4,6,01/07/2025),
	(4,1,8,30/09/2025),
	(5,2,10,16/04/2026),
	(6,8,1,12/05/2026),
	(7,9,3,01/01/2026),
	(8,5,5,04/02/2026),
	(9,10,7,11/03/2026),
	(10,6,9,25/12/2025);
INSERT INTO item_pedido (pedidoid, produtoid, quantidade, precoUnit)
VALUES
    (1,10,200,20.50)
    (2,9,100,30.60)
	(3,8,50,1.50),
	(4,7,25,2.50),
	(5,6,400,10.80),
	(6,5,40,0.99),
	(7,4,4,1.99),
	(8,3,1,1.98),
	(9,2,55,100.00),
	(10,1,105,1000.00);
INSERT INTO fornecedor (fornecedorid, enderecoid, nome, telefone, email, tipo)
VALUES
	(1,10,'Tech Supplies ltda','(11)3000-1000','vendas@techsupplies.com.br','Tecnologia'),
	(1,10,'Tech Supplies ltda','(11)3000-1000','vendas@techsupplies.com.br','Tecnologia'),
	(3,8,'Hone Goods Distribuidora','(67)9999-1111','comercial@honegoods.com.br','Casa'),
	(4,7,'Electronics World','(71)7777-8888','vendas@electronicsworld.com.br','Eletrônica'),
	(5,6,'KitchenWare Fornecimentos','(11)1234-5678','pedidos@kitchenware.com.br','Cozinha'),
	(5,6,'KitchenWare Fornecimentos','(11)1234-5678','pedidos@kitchenware.com.br','Cozinha'),
	(1,10,'Tech Supplies ltda','(11)3000-1000','vendas@techsupplies.com.br','Tecnologia'),
	(4,7,'Electronics World','(71)7777-8888','vendas@electronicsworld.com.br','Eletrônica'),
	(3,8,'Hone Goods Distribuidora','(67)9999-1111','comercial@honegoods.com.br','Casa'),
	(1,10,'Tech Supplies ltda','(11)3000-1000','vendas@techsupplies.com.br','Tecnologia');
INSERT INTO produto_fornecedor (produtoid, fornecedor, preco_compra, qtde_estoque)
VALUES
	(1,3,1.50,200),
	(2,3,2.50,300),
	(3,1,99.99,3000),
	(4,1,0.99,1000),
	(5,7,88.87,87),
	(6,7,77.78,78),
	(7,7,77.77,77),
	(8,4,48.84,88),
	(9,1,1.99,990),
	(10,10,10.00,10000);
INSERT INTO metodo_pagamento (metodopagamentoid, metodopagamento, descricao)
VALUES
	(1,'Boleto','Boleto Itaú'),
	(2,'Boleto','Boleto Caixa'),
	(3,'Boleto','Boleto BB'),
	(4,'Financiamento','Crediário Loja'),
	(5,'Pix','Pix Instantâneo'),
	(6,'Cartão de Crédito','American Express'),
	(7,'Cartão de Crédito','Visa Crédito'),
	(8,'Cartão de Débito','Visa Débito'),
	(9,'Cartão de Crédito','Mastercard Crédito'),
	(10,'Cartão de Débito','Mastercard Débito');
INSERT INTO pagamento(pagamentoid, pedidoid, metpagamentoid, data, valor)
VALUES
	(1,10,2,29/06/2025,800.40),
	(2,9,4,29/06/2025,400.90),
	(3,8,2,28/06/2025,500.90),
	(4,7,8,30/06/2025,5874.98),
	(5,6,8,29/06/2025,3924.93),
	(6,5,5,27/06/2025,1393.32),
	(7,4,9,30/06/2025,0.99),
	(8,3,7,29/06/2025,3739.84),
	(9,2,10,25/06/2025,234.49),
	(10,1,10,30/06/2025,493.83);
INSERT INTO metodo_envio (metodoenvioid, descricao, metodoenvio)
VALUES
	(1,'Entrega Expressa 2 Dias','Expressa'),
	(2,'Entrega Expressa 3 Dias','Expressa'),
	(3,'Entrega Expressa 5 Dias','Expressa'),
	(4,'Entrega Padrão 5 Dias','Padrão'),
	(5,'Entrega Padrão 7 Dias','Padrão'),
	(6,'Entrega Padrão 10 Dias','Padrão'),
	(7,'Entrega Padrão 14 Dias','Padrão'),
	(8,'Entrega Motoboy Mesmo Dia','Motoboy'),
	(9,'Entrega Transportadora 5 Dias','Transportadora'),
	(10,'Entrega Transportadora 5 Dias','Transportadora');
INSERT INTO envio (envioid, metenvioid, pedidoid, dt_envio, dt_estimada, preco, endereco_entrega)
VALUES
	(1, 2, 10, 10/07/2025,13/07/2025,1000.50, 1),
	(2, 4, 9, 04/07/2025, 09/07/2025,10000.00, 2),
	(3, 5, 8, 06/07/2025, 13/07/2025,9999.99, 3),
	(4, 7, 7, 03/07/2025, 21/07/2025,6253.87, 4),
	(5, 2, 6, 11/07/2025, 14/07/2025,37627.98, 5),
	(6, 4, 5, 02/07/2025, 07/07/2025,6235.73, 6),
	(7, 3, 4, 08/07/2025, 13/07/2025,2673.72, 7),
	(8, 2, 3, 05/07/2025, 08/07/2025,327.73, 8),
	(9, 4, 2, 04/07/2025, 09/07/2025,263.36, 9),
	(10, 8, 1, 03/07/2025, 03/07/2025,372.63, 10);
INSERT INTO dados_cartao (cartaoid, num, nome, dt_validade, cvv, pagamentoid)
VALUES
	(1,'1234567890123456','João','05/26','133',1),
	(2,'6543210987654321','Pedro','04/28','233',3),
	(3,'2468024680246802','Ana','08/27','333',2),
	(4,'1357913579135791','Miguel','12/29','433',4)
	(5,'3693693693693693','Rafael','11/30','533',6),
	(6,'4848484848484848','Maria','01/27','633',5),
	(7,'3435343534353435','Vanessa','02/31','744',8),
	(8,'1928374650192837','Gabriel','02/32','844',7),
	(9,'9182736450918273','Gabriel','12/25','944',10),
	(10,'987654321098765','Vanessa','12/28','655',9);
INSERT INTO CEP (cepnum, estado, cidade, rua)
VALUES
	('79051-251','MS','Campo-Grande','Três Barras'),
	('12345-678','MS','Campo-Grande','Bom Pastor'),
	('87654-321','MS','Campo-Grande','Ernesto Geisel'),
	('11111-111','MS','Campo-Grande','Afonso Pena'),
	('14557-868','MS','Campo-Grande','Rua da Ciência'),
	('44038-123','MS','Campo-Grande','Marquês de Lavradil'),
	('14038-124','SP','São Paulo','Paulista'),
	('44047-369','SP','São José dos Campos','2 de Junho'),
	('24680-135','MG','Belo Horizonte','7 de Setembro'),
	('13579-246','RJ','Rio de Janeiro','15 de Novembro');
