use estudos;
DROP TABLE IF EXISTS cidades;
CREATE TABLE cidades(
    id int auto_increment,
    nome varchar(30),
    uf varchar(2),
    primary key (id)
);
INSERT into cidades(nome, uf)
values('Socorro', 'SP');
INSERT into cidades(nome, uf)
values('Osasco', 'SP');
INSERT into cidades(nome, uf)
values('Guarulhos', 'SP');
INSERT into cidades(nome, uf)
values('Aparecida', 'SP');
INSERT into cidades(nome, uf)
values('Monte Verde', 'MG');
INSERT into cidades(nome, uf)
values('Belo Horizonte', 'MG');
SELECT uf,
    nome
FROM cidades
ORDER BY uf DESC,
    nome ASC;