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
set dados = JSON_ARRAY_APPEND(dados, "$", "Caros")
where id = 1;
-- Add um novo elemento no final do Array
SELECT dados
FROM people;