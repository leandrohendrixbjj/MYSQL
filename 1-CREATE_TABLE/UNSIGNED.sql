use estudos;
DROP TABLE IF EXISTS pessoas;
-- UNSIGNED oculpa menos espaços porem não aceita valores negativos
-- SIGNED permite valores negativos oculpa mais espaços
CREATE TABLE pessoas(
    id int auto_increment,
    idade TINYINT unsigned,
    temperatura int signed,
    PRIMARY KEY(id)
) auto_increment = 10;
INSERT INTO pessoas(idade) VALUE(10);
INSERT INTO pessoas(temperatura) VALUE(-1);
SELECT *
FROM pessoas;