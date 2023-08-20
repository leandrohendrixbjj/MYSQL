-- Count(case {rule}) => Podemos criar uma regra para obter a contagem dos valores
use estudos;
drop table if exists customer;
create table customer(
    id int auto_increment primary key,
    name varchar(10),
    age int
);
insert into customer(name, age)
values('leandro', 10),
    ('soares', 30),
    ('ribeiro', 5);
select (
        count(
            case
                when age < 20 then 1
            end
        )
    )
from customer;