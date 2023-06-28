DROP DATABASE IF EXISTS estudos;
CREATE DATABASE estudos;
USE estudos;
CREATE TABLE pessoas(
    id int auto_increment primary key,
    nome varchar(20) NULL,
    sobrenome varchar(20)
);
INSERT INTO pessoas(nome, sobrenome)
VALUES('Leandro', 'Soares');
INSERT INTO pessoas(nome, sobrenome)
VALUES('Carla', 'Pachecco');
INSERT INTO pessoas(nome, sobrenome)
VALUES(NULL, 'Ribeiro');
/*Qualquer valor concatenado com null, o resultado será Sem nome*/
SELECT CONCAT(IFNULL(nome, 'Sem nome'), ' ', sobrenome) AS fullName
FROM pessoas;