insert into fabricantes (nome, pais_origem, ano_fundacao) values ('FIAT', 'Italia', '1899');
insert into fabricantes (nome, pais_origem, ano_fundacao) values ('Renault', 'Franca', '1899');
insert into fabricantes (nome, pais_origem, ano_fundacao) values ('Volkswagen', 'Alemanha', '1937');
insert into fabricantes (nome, pais_origem, ano_fundacao) values ('Volvo', 'Suecia', '1927');
insert into fabricantes (nome, pais_origem, ano_fundacao) values ('Ford', 'Estados Unidos', '1903');

select * from fabricantes;

insert into veiculos (chassi, modelo, ano_fabricacao, cor, km, preco, fabricantes_id) values ('3N2 dWNbrC Jh 767420', 'Kwid', '2018', 'branco', '8000', '37000', '8003b85c-595f-45ce-b1cc-3eb67a41e330');
insert into veiculos (chassi, modelo, ano_fabricacao, cor, km, preco, fabricantes_id) values ('1EX PdVghE jj Lu2700', 'Ranger Raptor', '2024', 'branco', '0', '436000', '648b06b8-8c1d-446b-a629-f03a33d63a14');
insert into veiculos (chassi, modelo, ano_fabricacao, cor, km, preco, fabricantes_id) values ('8aM UYPkRv 9S A86215', 'Gol Rallye', '2013', 'preto', '16000', '28000', '5cc19237-9ef4-4348-9e0a-69734c8ba65f');
insert into veiculos (chassi, modelo, ano_fabricacao, cor, km, preco, fabricantes_id) values ('7aG FyuCgw H2 px3336', 'XC60 Momentum', '2018', 'vermelho', '0', '162000', '39a9da15-3165-4aa6-bd47-637e2df119ee');
insert into veiculos (chassi, modelo, ano_fabricacao, cor, km, preco, fabricantes_id) values ('40C BUBWMC kT sE5540', 'Uno', '1994', 'vermelho', '40000', '10000', '1a9030a2-f203-4f42-929d-4c09e73fbea2');

select * from veiculos;

insert into manutencoes (data_manutencao, descricao, custo, veiculos_id) values ('2024-10-29','Troca da correia do alternador','540','05683748-d71b-4060-8b09-b8a41f040662'); --Kwid
insert into manutencoes (data_manutencao, descricao, custo, veiculos_id) values ('2024-11-04','Torca de amortecedor traseiro','3400','4562a68e-b867-4d5e-ac21-291cc9801310'); --Gol Rallye

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

insert into vendas (data_venda, valor_total, metodo_pagamento, veiculos_id, clientes_id, vendedores_id) values ('', '', '', '', '', '');
insert into vendas (data_venda, valor_total, metodo_pagamento, veiculos_id, clientes_id, vendedores_id) values ('', '', '', '', '', '');
insert into vendas (data_venda, valor_total, metodo_pagamento, veiculos_id, clientes_id, vendedores_id) values ('', '', '', '', '', '');
insert into vendas (data_venda, valor_total, metodo_pagamento, veiculos_id, clientes_id, vendedores_id) values ('', '', '', '', '', '');