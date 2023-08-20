-- Count(*) => Conta todas as linhas, incluso as que possuem null
-- Count(1) => Conta todas as linhas, incluso as que possuem null
-- Recomenda-se usar count(*) como uma boa prática
use estudos;
drop table if exists customer;
create table customer(
    id int auto_increment primary key,
    name varchar(10),
    age int
);
insert into customer(name, age)
values('leandro', 10),
    ('soares', null);
select count(*)
from customer;