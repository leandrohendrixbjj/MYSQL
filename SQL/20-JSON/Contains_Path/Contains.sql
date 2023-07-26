use estudos;
DROP TABLE IF EXISTS people;

CREATE TABLE people(id int auto_increment primary key, dados json);
INSERT INTO people(dados)
values('{"name":"Leandro", "phone":"123"}'),
	  ('{"name":"Soares"}'),
	  ('{"name":"Ribeiro", "state":"SP"}'),
      ('{"name":"Ana", "phone":"456", "state":"SP"}');
-- JSON_CONTAINS => Podemos filtrar pelo valor do atributo
SELECT JSON_EXTRACT(dados, "$.name") name,
    JSON_CONTAINS(dados, '"123"', "$.phone") phone
FROM people;
-- OR
-- Filtro dentro do WHERE
SELECT *
FROM people
where JSON_CONTAINS(dados, '"123"', "$.phone")