use estudos;
DROP TABLE IF EXISTS people;
CREATE TABLE people(id int auto_increment primary key, dados json);
INSERT INTO people(dados)
values('{"name":"Leandro", "phone":"123"}'),
    ('{"name":"Soares"}'),
    ('{"name":"Ribeiro", "state":"SP"}'),
    ('{"name":"Ana", "phone":"456", "state":"SP"}');
-- ALL é igul a um AND, ou seja apresenta quem tem phone E state
select JSON_EXTRACT(dados, "$.name") name,
    JSON_CONTAINS_PATH(dados, "all", "$.phone", "$.state") as 'Result'
from people;