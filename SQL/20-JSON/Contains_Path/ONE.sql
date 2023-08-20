use estudos;
DROP TABLE IF EXISTS people;

CREATE TABLE people(id int auto_increment primary key, dados json);
INSERT INTO people(dados)
values('{"name":"Leandro", "phone":"123"}'),
	  ('{"name":"Soares"}'),
	  ('{"name":"Ribeiro", "state":"SP"}'),
      ('{"name":"Ana", "phone":"456", "state":"SP"}');-- ONE é igul a um OR, ou seja apresenta quem tem phone ou state
select JSON_EXTRACT(dados, "$.name") name,
    JSON_CONTAINS_PATH(dados, "ONE", "$.phone", "$.state") as 'Result'
from people;