use estudos;
DROP TABLE IF EXISTS people;
CREATE TABLE people(id int auto_increment primary key, dados json);
INSERT INTO people(dados)
values('{"name":"Leandro", "phone":"123"}'),
    ('{"name":"Soares"}'),
    ('{"name":"Ribeiro", "state":"SP"}'),
    ('{"name":"Ana", "phone":"456", "state":"SP"}');
-- Usado para validar as estruturas do json
select JSON_CONTAINS_PATH(dados, "ONE", "$.phone") as 'Result'
from people;