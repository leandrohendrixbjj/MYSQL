use estudos;
DROP TABLE IF EXISTS people;
-- Grava um array com json
CREATE TABLE people(id int auto_increment primary key, dados json);
INSERT INTO people(dados)
VALUES(JSON_ARRAY("Leandro", "Soares", "Ribeiro"));
SELECT dados
FROM people;