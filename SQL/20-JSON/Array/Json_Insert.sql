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
UPDATE people
set dados = JSON_ARRAY_INSERT(dados, "$[3]", "Paulo")
where id = 1;
-- Add novo elemento na penultima posição
UPDATE people
set dados = JSON_ARRAY_INSERT(dados, "$[0]", "Lauro")
where id = 1;
-- Add novo elemento no inicio
UPDATE people
set dados = JSON_ARRAY_INSERT(dados, "$[1][1]", "Soares")
where id = 1;
-- Add novo elemento, dentro de um array
SELECT dados
FROM people;