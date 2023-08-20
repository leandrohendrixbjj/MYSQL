-- Count({nomeCampo}) => Nesse caso os null não serão considerados
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
select count(age)
from customer;