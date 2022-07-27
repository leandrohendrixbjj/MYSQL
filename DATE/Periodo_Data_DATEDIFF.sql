drop database estudos;

create database estudos;
use estudos;

create table livros( id int auto_increment,
nome varchar(10),
email varchar(200),
status boolean default false,
criadoEm datetime default now(),
PRIMARY KEY(id));

insert into livros(nome,email,status) values('Gimba','gimba@gmail.com',1);

update livros set 
   criadoEm = '2021-11-25 08:00:00'
where id in (1)
and email in ('gimba@gmail.com');

select id, nome, email, DATEDIFF(now(), criadoEm) as periodo from livros;

