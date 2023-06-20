use test;
drop table if exists pais;
drop table if exists filhos;
CREATE TABLE pais(
    id int auto_increment,
    nome varchar(10),
    primary key(id)
);
CREATE TABLE filhos(
    id int auto_increment,
    nome varchar(10),
    primary key(id)
);
INSERT INTO pais(nome)
values('Leandro');
INSERT INTO pais(nome)
values('Soares');
INSERT INTO filhos(nome)
values('Sabriba');
INSERT INTO filhos(nome)
values('Eduarda');
INSERT INTO filhos(nome)
values('Carla');
-- CROSS JOIN
SELECT p.nome,
    f.nome
FROM pais p,
    filhos f
order by p.nome,
    f.nome;