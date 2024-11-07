create extension if not exists "pgcrypto";

create table fabricantes (
	id uuid default gen_random_uuid() primary key,
	nome varchar(100) not null,
	pais_origem varchar(30) not null,
	ano_fundacao integer not null
);
	
create table veiculos (
	id uuid default gen_random_uuid() primary key,
	chassi varchar(20) unique not null,
	modelo varchar(50) not null,
	ano_fabricacao integer not null,
	cor varchar(50) not null,
	km integer not null,
	preco decimal not null,
	fabricantes_id uuid null,
	foreign key (fabricantes_id) references fabricantes(id)
);

create table manutencoes (
	id uuid default gen_random_uuid() primary key,
	data_manutencao date not null,
	descricao varchar(5000) not null,
	custo decimal not null,
	veiculos_id uuid not null,
	foreign key (veiculos_id) references veiculos(id)
);

create table clientes (
	id uuid default gen_random_uuid() primary key,
	nome varchar(100) not null,
	cpf varchar(15) unique not null,
	telefone varchar(30) not null,
	email varchar(100) unique not null,
	endereco varchar(500) not null
);

create table vendedores (
	id uuid default gen_random_uuid() primary key,
	nome varchar(50) not null,
	cpf varchar(15) unique not null,
	telefone varchar(30) not null,
	email varchar(100) unique not null,
	data_contratacao date not null
);

create table vendas (
	id uuid default gen_random_uuid() primary key,
	data_venda date not null,
	valor_total decimal not null,
	metodo_pagamento varchar(30) not null,
	veiculos_id uuid not null,
	clientes_id uuid not null,
	vendedores_id uuid not null,
	foreign key (veiculos_id) references veiculos(id),
	foreign key (clientes_id) references clientes(id),
	foreign key (vendedores_id) references vendedores(id)
);