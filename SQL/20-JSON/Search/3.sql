use estudos;
DROP TABLE IF EXISTS people;

CREATE TABLE people(id int auto_increment primary key, dados json);
INSERT INTO people(dados)
values('{"name":"Leandro", "phone":"123"}'),
	  ('{"name":"Soares"}'),
	  ('{"name":"Ribeiro", "state":"SP"}'),
      ('{"name":"Ana", "phone":"456", "state":"SP"}'),
      ('{"name":"Ana", "phone":"456", "phone_2":"456", "state":"SP"}');
 
 -- Apresenta os atributos que possuem o valor 456, 
 SELECT 
    dados,
    JSON_SEARCH(dados, "ALL", "456")
 FROM people;     
