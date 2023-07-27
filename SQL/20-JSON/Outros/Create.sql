use estudos;
DROP TABLE IF EXISTS people;
CREATE TABLE people(
    id int auto_increment primary key,
    name varchar(10),
    details json
);
insert into people(name, details)
values('leandro', '{"age":"30", "type":"active"}');
insert into people(name, details)
values('soares', '{"age":"35", "type":"invalid"}');
select name,
    json_pretty(details)
from people;