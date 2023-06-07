    use estudos;
    DROP TABLE IF EXISTS pessoas;
    CREATE TABLE pessoas(
        id int auto_increment,
        nome varchar(10),
        PRIMARY KEY(id)
    ) auto_increment = 1;
    INSERT INTO pessoas(nome) VALUE('Ana');
    INSERT INTO pessoas(nome) VALUE('Erica');
    INSERT INTO pessoas(nome) VALUE('Vanessa');
    INSERT INTO pessoas(nome) VALUE('Priscila');
    INSERT INTO pessoas(nome) VALUE('Erica');
    INSERT INTO pessoas(nome) VALUE('Jo');
    INSERT INTO pessoas(nome) VALUE('Carla');
    INSERT INTO pessoas(nome) VALUE('Amanda');
    INSERT INTO pessoas(nome) VALUE('Jessica');
    INSERT INTO pessoas(nome) VALUE('Roberta');
    SELECT nome
    FROM pessoas
    LIMIT 6, 3;