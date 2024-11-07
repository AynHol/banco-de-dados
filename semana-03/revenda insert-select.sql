-- Mudar uuids nos inserts por uso em bancos de dados diferentes;

insert into fabricantes (nome, pais_origem, ano_fundacao) values ('FIAT', 'Italia', '1899');
insert into fabricantes (nome, pais_origem, ano_fundacao) values ('Renault', 'Franca', '1899');
insert into fabricantes (nome, pais_origem, ano_fundacao) values ('Volkswagen', 'Alemanha', '1937');
insert into fabricantes (nome, pais_origem, ano_fundacao) values ('Volvo', 'Suecia', '1927');
insert into fabricantes (nome, pais_origem, ano_fundacao) values ('Ford', 'Estados Unidos', '1903');

select * from fabricantes;

insert into veiculos (chassi, modelo, ano_fabricacao, cor, km, preco, fabricantes_id) values ('3N2 dWNbrC Jh 767420', 'Kwid', '2018', 'branco', '8000', '37000', '032e9728-c977-49f6-a20f-08ebefd0e193');
insert into veiculos (chassi, modelo, ano_fabricacao, cor, km, preco, fabricantes_id) values ('1EX PdVghE jj Lu2700', 'Ranger Raptor', '2024', 'branco', '0', '436000', 'eff7a51e-d0db-4dd3-a4cb-a3b1c62cc6d7');
insert into veiculos (chassi, modelo, ano_fabricacao, cor, km, preco, fabricantes_id) values ('8aM UYPkRv 9S A86215', 'Gol Rallye', '2013', 'preto', '16000', '28000', '1ac6ed0f-048b-4d6f-9312-2d08a077087f');
insert into veiculos (chassi, modelo, ano_fabricacao, cor, km, preco, fabricantes_id) values ('7aG FyuCgw H2 px3336', 'XC60 Momentum', '2018', 'vermelho', '0', '162000', 'bd7f0efe-a7e5-4fff-8687-debc26c9372d');
insert into veiculos (chassi, modelo, ano_fabricacao, cor, km, preco, fabricantes_id) values ('40C BUBWMC kT sE5540', 'Uno', '1994', 'vermelho', '40000', '10000', 'fdd8c895-cedf-4e17-ace3-ac82febd22b3');

select * from veiculos;

insert into manutencoes (data_manutencao, descricao, custo, veiculos_id) values ('2024-10-29','Troca da correia do alternador','540','b64b8240-a4a9-4857-bcf4-07d88a4d5c50'); --Kwid;
insert into manutencoes (data_manutencao, descricao, custo, veiculos_id) values ('2024-11-04','Torca de amortecedor traseiro','3400','4eecebc4-1de0-4262-b76f-a5582129c74d'); --Gol Rallye;

select * from manutencoes;

insert into clientes (nome, cpf, telefone, email, endereco) values ('Maria', '000.000.000-00', '(47) 9911-222', 'mariazinha@gmail.com', 'rua 14, bairro centro, cidade 1, SC');
insert into clientes (nome, cpf, telefone, email, endereco) values ('Joao', '000.764.234-01', '(47) 9911-111', 'joaojoao@gmail.com', 'rua pedro, bairro 4, cidade 2, SC');
insert into clientes (nome, cpf, telefone, email, endereco) values ('Eduardo', '001.123.456-00', '(48) 9911-333', 'eduardo11@hotmail.com', 'rua 709, bairro canto, cidade 3, SC');
insert into clientes (nome, cpf, telefone, email, endereco) values ('Pedro', '000.783.343-10', '(47) 9966-111', 'totalpedro@gmail.com', 'rua avenida, bairro estado, cidade 1, SC');

select * from clientes;

insert into vendedores (nome, cpf, telefone, email, data_contratacao) values ('Carlos', '000.000.000-00', '(47) 9986-322', 'carlosvenda@gmail.com', '2024-04-11');
insert into vendedores (nome, cpf, telefone, email, data_contratacao) values ('Manoel', '000.344.000-46', '(48) 9956-331', 'manoeltrabalho@gmail.com', '2023-02-23');
insert into vendedores (nome, cpf, telefone, email, data_contratacao) values ('Julia', '000.754.323-00', '(48) 9996-976', 'juliajulha@gmail.com', '2023-05-29');

select * from vendedores;

insert into vendas (data_venda, valor_total, metodo_pagamento, veiculos_id, clientes_id, vendedores_id) values ('2024-04-18', '40686', 'Financiamento', 'b64b8240-a4a9-4857-bcf4-07d88a4d5c50', '0505d979-2ae8-453c-bdd8-c6f38e5ea79e', '25231588-6222-473a-8fc8-71097e2c1769'); -- Kwid, Joao, Carlos ;
insert into vendas (data_venda, valor_total, metodo_pagamento, veiculos_id, clientes_id, vendedores_id) values ('2023-05-13', '25000', 'À vista', '4eecebc4-1de0-4262-b76f-a5582129c74d', '531e50c2-3add-41bb-be2b-ceedeba18031', '1f802893-94dc-496e-9d49-5ba4d6eaae4a'); -- Gol, Eduardo, Julia;
insert into vendas (data_venda, valor_total, metodo_pagamento, veiculos_id, clientes_id, vendedores_id) values ('2023-09-18', '8000', 'À vista', '6740f446-a669-444d-ba3d-3eae6f7888da', '1255976d-eb79-4af4-bfec-0a424b33b58f', '3ff73e24-6444-4db3-8043-522ee6f34dc1'); -- Uno, Pedro, Manoel;
insert into vendas (data_venda, valor_total, metodo_pagamento, veiculos_id, clientes_id, vendedores_id) values ('2022-07-04', '162000', 'Cartão de crédito', '00c90e65-b8d6-4421-8a84-68741ef843f6', 'e9904391-84a5-48de-ad85-91743d940cc0', '25231588-6222-473a-8fc8-71097e2c1769'); -- Xc60, Maria, Carlos;

select * from vendas;