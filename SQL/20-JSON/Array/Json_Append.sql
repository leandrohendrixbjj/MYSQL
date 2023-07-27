use estudos;
DROP TABLE IF EXISTS people;
CREATE TABLE people(id int auto_increment primary key, dados json);
INSERT INTO people(dados)
VALUES(JSON_ARRAY("Leandro", "Soares", "Ribeiro"));
-- JSON_ARRAY_APPEND => Insere novos elementos dentro de um array
UPDATE people
set dados = JSON_ARRAY_APPEND(dados, "$[0]", "Santos")
where id = 1;
UPDATE people
set dados = JSON_ARRAY_APPEND(dados, "$[1]", "Silva")
where id = 1;
UPDATE people
set dados = JSON_ARRAY_APPEND(dados, "$[2]", "Barbosa")
where id = 1;
SELECT dados
FROM people;