use test;

DROP TABLE IF EXISTS clientes;

create table clientes( id int auto_increment primary key,
nome varchar(10),
status tinyint);

insert into clientes(nome,status) values('leandro',8);
insert into clientes(nome,status) values('ana',6);
insert into clientes(nome,status) values('jessica',7);
insert into clientes(nome,status) values('ellen',10);
insert into clientes(nome,status) values('pedro',9);
insert into clientes(nome,status) values('carlos',4);
insert into clientes(nome,status) values('Meire',5);
insert into clientes(nome,status) values('Lucia',1);

select 
	nome,
    case when (status >=8 and status <= 10)  then 'Otimo'
         when (status >=7	 and status < 8) then 'Bom'
         when (status >=5 and status <= 5)   then 'Medio'
         else 'Ruim'
    end as 'atatus'     
from clientes;
