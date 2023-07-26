use estudos;
DROP TABLE IF EXISTS people;

CREATE TABLE people(id int auto_increment primary key, dados json);
INSERT INTO people(dados)
values('{"name":"Leandro", "phone":"123"}'),
	  ('{"name":"Soares"}'),
	  ('{"name":"Ribeiro", "state":"SP"}'),
      ('{"name":"Ana", "phone":"456", "state":"SP"}');
-- Filtra os atributos que possuem o valor de SP
SELECT JSON_EXTRACT(dados, "$.name") Name,
    JSON_SEARCH(dados, "ONE", "SP") State
FROM people;