-- A View é nada mais que uma consulta SQL
DROP DATABASE IF EXISTS estudos;
CREATE DATABASE estudos;
use estudos;
CREATE table autores(
    id int auto_increment,
    nome varchar(50),
    primary key(id)
);
INSERT INTO AUTORES(NOME)
valueS('Leandro');
INSERT INTO AUTORES(NOME)
valueS('Soares');
INSERT INTO AUTORES(NOME)
valueS('Ribeiro');
/*VIEW*/
DROP VIEW IF EXISTS vw_LivrosAutores;
CREATE VIEW vw_LivrosAutores AS
SELECT nome
FROM autores
WHERE nome = 'Leandro'
    OR nome = 'Soares';
SELECT nome
FROM vw_LivrosAutores
ORDER BY nome;