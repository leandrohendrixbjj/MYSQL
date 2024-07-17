/*
  Customização via id do campo
*/

use estudos;
DROP TABLE IF EXISTS cidades;

CREATE TABLE cidades(
    id int auto_increment,
    nome varchar(30),    
    primary key (id) );
    
INSERT into cidades(nome) values('SP');
INSERT into cidades(nome) values('RO');
INSERT into cidades(nome) values('AM');
INSERT into cidades(nome) values('RN');
INSERT into cidades(nome) values('SC');

SELECT id, nome FROM cidades
ORDER BY FIELD(id, 4,3,2,5,1);