select * from veiculos;

select max(preco) from veiculos;
select max(preco) as maior_preco from veiculos;
select min(preco) from veiculos;
select min(preco) as menor_preco from veiculos;
select max(preco), min(preco) from veiculos;
select max(preco) as maior_preco, min(preco) as menor_preco from veiculos;
select * from veiculos where preco = 28000;
select avg(km) from veiculos;
select avg(km) as media_km from veiculos;
select round(avg(km), 2) from veiculos;
select sum(preco) from veiculos;
select round(sum(preco), 1) from veiculos;
select sum(preco) from veiculos where cor = 'branco';
select sum(preco) from veiculos where ano_fabricacao < 2010;

select * from vendas;

select sum(valor_total) from vendas where data_venda between '2020-01-01' and '2024-11-07';
select * from vendas order by valor_total;
select * from vendas order by valor_total asc;
select * from vendas order by valor_total desc;

select * from clientes;

select * from clientes order by nome;
select * from clientes order by nome asc;
select * from clientes order by nome desc;

select metodo_pagamento, count(id) as qtd from vendas
group by metodo_pagamento
order by qtd desc;

select * from clientes where nome like 'Joa%';
select * from clientes where email like '%gmail.com';

select * from veiculos;

select * from veiculos where modelo like '____';
select * from veiculos where modelo like '___g%';