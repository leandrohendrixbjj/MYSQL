DROP DATABASE IF EXISTS estudos;
CREATE DATABASE IF NOT EXISTS estudos;

use estudos;

-- UNSIGNED oculpa menos espaços porem não aceita valores negativos
-- SIGNED permite valores negativos oculpa mais espaços
CREATE TABLE pessoas(id int auto_increment,
idade tinyint unsigned,
primary key(id));

INSERT INTO pessoas(idade) VALUE(10);
INSERT INTO pessoas(idade) VALUE(-1);


SELECT * FROM pessoas;