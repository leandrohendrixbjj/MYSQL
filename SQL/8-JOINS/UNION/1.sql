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

-- UNION => Junta as tabelas e não apresenta os itens que se repetem 
SELECT nome FROM clientes
UNION
SELECT nome  FROM vendedores
ORDER BY nome;






