use test;

drop table if exists clientes;
drop table if exists vendedores;

CREATE TABLE clientes(id int auto_increment,
nome varchar(10),
primary key(id));

CREATE TABLE vendedores(id int auto_increment,
nome varchar(10),
primary key(id));

INSERT INTO clientes(nome) values('Leandro');
INSERT INTO clientes(nome) values('Soares');

INSERT INTO vendedores(nome) values('Sabriba');
INSERT INTO vendedores(nome) values('Eduarda');
INSERT INTO vendedores(nome) values('Carla');
INSERT INTO vendedores(nome) values('Leandro');

-- UNION 
SELECT nome, "Cliente" AS Tipo FROM clientes
UNION
SELECT nome, "Vendedor" AS Tipo  FROM vendedores
ORDER BY Tipo;