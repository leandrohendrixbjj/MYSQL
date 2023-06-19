use test;

DROP TABLE IF EXISTS produtos;
CREATE TABLE produtos(id int auto_increment primary key,
preco double(10,2),
data date);

insert into produtos(preco,data) values(10,'2020-01-01');
insert into produtos(preco,data) values(20,'2020-02-01');

insert into produtos(preco,data) values(1,'2021-03-01');
insert into produtos(preco,data) values(2,'2021-03-01');

insert into produtos(preco,data) values(50,'2022-03-01');
insert into produtos(preco,data) values(100,'2022-03-01');

SELECT 
	year(data) as ano,
    sum(preco) as total
FROM produtos
GROUP BY ano

