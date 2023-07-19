CREATE TABLE tickets_exports_situations(
    situation_id int(11) auto_increment primary key,
    name varchar(15)
);
INSERT INTO tickets_exports_situations(name)
VALUES (('Pendente')),
    ('Em execução'),
    ('Erro');