-- Count(distinct {nomeCampo}) => Podemos realizar a contahem dos não repetidos
use estudos;
drop table if exists customer;
create table customer(
    id int auto_increment primary key,
    name varchar(10),
    age int
);
insert into customer(name, age)
values('leandro', 10),
    ('soares', null),
    ('leandro', 10);
select (count(distinct name))
from customer;