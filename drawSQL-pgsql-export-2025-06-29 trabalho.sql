CREATE TABLE "cliente"(
    "clienteid" INTEGER NOT NULL,
    "nome" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "cliente" ADD PRIMARY KEY("clienteid");
CREATE TABLE "endereco"(
    "enderecoid" INTEGER NOT NULL,
    "CEP" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "endereco" ADD PRIMARY KEY("enderecoid");
ALTER TABLE
    "endereco" ADD PRIMARY KEY("CEP");
CREATE TABLE "cliente_endereco"(
    "clienteid" INTEGER NOT NULL,
    "enderecoid" INTEGER NOT NULL,
    "tipo" VARCHAR(255) NOT NULL,
    "new_column" BIGINT NOT NULL
);
ALTER TABLE
    "cliente_endereco" ADD PRIMARY KEY("clienteid");
ALTER TABLE
    "cliente_endereco" ADD PRIMARY KEY("enderecoid");
CREATE TABLE "categoria"(
    "categoriaid" INTEGER NOT NULL,
    "nome" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "categoria" ADD PRIMARY KEY("categoriaid");
CREATE TABLE "produto"(
    "produtoid" INTEGER NOT NULL,
    "categoriaid" INTEGER NOT NULL,
    "nome" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "produto" ADD PRIMARY KEY("produtoid");
ALTER TABLE
    "produto" ADD PRIMARY KEY("categoriaid");
CREATE TABLE "pedido"(
    "pedidoid" INTEGER NOT NULL,
    "clienteid" INTEGER NOT NULL,
    "enderecoentregaid" INTEGER NOT NULL,
    "data" DATE NOT NULL
);
ALTER TABLE
    "pedido" ADD PRIMARY KEY("pedidoid");
ALTER TABLE
    "pedido" ADD PRIMARY KEY("clienteid");
ALTER TABLE
    "pedido" ADD PRIMARY KEY("enderecoentregaid");
CREATE TABLE "item_pedido"(
    "pedidoid" INTEGER NOT NULL,
    "produtoid" INTEGER NOT NULL,
    "quantidade" INTEGER NOT NULL,
    "precoUnit" DECIMAL(8, 2) NOT NULL
);
ALTER TABLE
    "item_pedido" ADD PRIMARY KEY("pedidoid");
ALTER TABLE
    "item_pedido" ADD PRIMARY KEY("produtoid");
CREATE TABLE "fornecedor"(
    "fornecedorid" INTEGER NOT NULL,
    "enderecoid" INTEGER NOT NULL,
    "nome" VARCHAR(255) NOT NULL,
    "telefone" VARCHAR(255) NOT NULL,
    "email" VARCHAR(255) NOT NULL,
    "tipo" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "fornecedor" ADD PRIMARY KEY("fornecedorid");
ALTER TABLE
    "fornecedor" ADD PRIMARY KEY("enderecoid");
CREATE TABLE "produto_fornecedor"(
    "produtoid" INTEGER NOT NULL,
    "fornecedor" INTEGER NOT NULL,
    "preco_compra" DECIMAL(8, 2) NOT NULL,
    "qtde_estoque" INTEGER NOT NULL
);
ALTER TABLE
    "produto_fornecedor" ADD PRIMARY KEY("produtoid");
ALTER TABLE
    "produto_fornecedor" ADD PRIMARY KEY("fornecedor");
CREATE TABLE "metodo_pagamento"(
    "metodopagamentoid" INTEGER NOT NULL,
    "descricao" VARCHAR(255) NOT NULL,
    "metodopagamento" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "metodo_pagamento" ADD PRIMARY KEY("metodopagamentoid");
CREATE TABLE "pagamento"(
    "pagamentoid" INTEGER NOT NULL,
    "pedidoid" INTEGER NOT NULL,
    "metpagamentoid" INTEGER NOT NULL,
    "data" DATE NOT NULL,
    "valor" DECIMAL(8, 2) NOT NULL
);
ALTER TABLE
    "pagamento" ADD PRIMARY KEY("pagamentoid");
ALTER TABLE
    "pagamento" ADD PRIMARY KEY("pedidoid");
ALTER TABLE
    "pagamento" ADD PRIMARY KEY("metpagamentoid");
CREATE TABLE "metodo_envio"(
    "metodoenvioid" BIGINT NOT NULL,
    "descricao" VARCHAR(255) NOT NULL,
    "metodoenvio" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "metodo_envio" ADD PRIMARY KEY("metodoenvioid");
CREATE TABLE "envio"(
    "envioid" INTEGER NOT NULL,
    "metenvioid" INTEGER NOT NULL,
    "pedidoid" INTEGER NOT NULL,
    "dt_envio" DATE NOT NULL,
    "dt_estimada" DATE NOT NULL,
    "preco" DECIMAL(8, 2) NOT NULL,
    "endereco_entrega" INTEGER NOT NULL
);
ALTER TABLE
    "envio" ADD PRIMARY KEY("envioid");
ALTER TABLE
    "envio" ADD PRIMARY KEY("metenvioid");
ALTER TABLE
    "envio" ADD PRIMARY KEY("pedidoid");
CREATE TABLE "dados_cartao"(
    "cartaoid" INTEGER NOT NULL,
    "num" VARCHAR(255) NOT NULL,
    "nome" VARCHAR(255) NOT NULL,
    "dt_validade" VARCHAR(255) NOT NULL,
    "cvv" VARCHAR(255) NOT NULL,
    "pagamentoid" INTEGER NOT NULL
);
ALTER TABLE
    "dados_cartao" ADD PRIMARY KEY("cartaoid");
ALTER TABLE
    "dados_cartao" ADD PRIMARY KEY("pagamentoid");
CREATE TABLE "CEP"(
    "cepnum" INTEGER NOT NULL,
    "estado" VARCHAR(255) NOT NULL,
    "cidadebigint" VARCHAR(255) NOT NULL,
    "ruabigint" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "CEP" ADD PRIMARY KEY("cepnum");
ALTER TABLE
    "pedido" ADD CONSTRAINT "pedido_pedidoid_foreign" FOREIGN KEY("pedidoid") REFERENCES "envio"("pedidoid");
ALTER TABLE
    "produto" ADD CONSTRAINT "produto_produtoid_foreign" FOREIGN KEY("produtoid") REFERENCES "item_pedido"("produtoid");
ALTER TABLE
    "cliente" ADD CONSTRAINT "cliente_clienteid_foreign" FOREIGN KEY("clienteid") REFERENCES "cliente_endereco"("enderecoid");
ALTER TABLE
    "CEP" ADD CONSTRAINT "cep_cepnum_foreign" FOREIGN KEY("cepnum") REFERENCES "endereco"("CEP");
ALTER TABLE
    "metodo_pagamento" ADD CONSTRAINT "metodo_pagamento_metodopagamentoid_foreign" FOREIGN KEY("metodopagamentoid") REFERENCES "pagamento"("metpagamentoid");
ALTER TABLE
    "endereco" ADD CONSTRAINT "endereco_enderecoid_foreign" FOREIGN KEY("enderecoid") REFERENCES "fornecedor"("enderecoid");
ALTER TABLE
    "categoria" ADD CONSTRAINT "categoria_categoriaid_foreign" FOREIGN KEY("categoriaid") REFERENCES "produto"("categoriaid");
ALTER TABLE
    "produto" ADD CONSTRAINT "produto_produtoid_foreign" FOREIGN KEY("produtoid") REFERENCES "produto_fornecedor"("produtoid");
ALTER TABLE
    "pedido" ADD CONSTRAINT "pedido_pedidoid_foreign" FOREIGN KEY("pedidoid") REFERENCES "item_pedido"("pedidoid");
ALTER TABLE
    "pagamento" ADD CONSTRAINT "pagamento_pagamentoid_foreign" FOREIGN KEY("pagamentoid") REFERENCES "dados_cartao"("pagamentoid");
ALTER TABLE
    "endereco" ADD CONSTRAINT "endereco_enderecoid_foreign" FOREIGN KEY("enderecoid") REFERENCES "cliente_endereco"("clienteid");
ALTER TABLE
    "cliente" ADD CONSTRAINT "cliente_clienteid_foreign" FOREIGN KEY("clienteid") REFERENCES "pedido"("clienteid");
ALTER TABLE
    "metodo_envio" ADD CONSTRAINT "metodo_envio_metodoenvioid_foreign" FOREIGN KEY("metodoenvioid") REFERENCES "envio"("metenvioid");
ALTER TABLE
    "fornecedor" ADD CONSTRAINT "fornecedor_fornecedorid_foreign" FOREIGN KEY("fornecedorid") REFERENCES "produto_fornecedor"("fornecedor");
ALTER TABLE
    "pedido" ADD CONSTRAINT "pedido_pedidoid_foreign" FOREIGN KEY("pedidoid") REFERENCES "pagamento"("pedidoid");
ALTER TABLE
    "envio" ADD CONSTRAINT "envio_endereco_entrega_foreign" FOREIGN KEY("endereco_entrega") REFERENCES "endereco"("enderecoid");
ALTER TABLE
    "endereco" ADD CONSTRAINT "endereco_enderecoid_foreign" FOREIGN KEY("enderecoid") REFERENCES "pedido"("enderecoentregaid");