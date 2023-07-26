use estudos;
DROP TABLE if exists people;
DROP TABLE if exists employee;
CREATE TABLE people(
   id int auto_increment primary key,
   name char(10)
);
CREATE TABLE employee(
   id int auto_increment primary key,
   name char(10)
);
insert into people(name)
values('leandro');
insert into people(name)
values('soares');
insert into people(name)
values('ribeiro');
insert into employee(name)
values('ribeiro');
-- Busca apenas os registros que constam em People, 
-- Mas não estão em Employee
SELECT name
FROM people p
WHERE NAME = 'leandro'
   AND NOT EXISTS (
      select *
      from employee e
      where e.name = p.name
   )