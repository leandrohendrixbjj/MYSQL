
use estudos;

set @criadoEm = '2021-06-05 04:12:30';

SELECT date_format(@criadoEm, '%d-%m-%Y %H:%i:%s') AS "pt-br";

select date_format(date_add(@criadoEm, interval 12 hour), '%d-%m-%Y %H:%i:%s') AS 'Criado em PT-BR'
  
