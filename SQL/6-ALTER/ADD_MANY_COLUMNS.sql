use estudos;
DROP DATABASE IF EXISTS estudos;
CREATE DATABASE estudos;
CREATE TABLE produtos(
  id int auto_increment primary key,
  descricao varchar(2)
);
ALTER TABLE produtos
ADD COLUMN preco double(12, 2),
  ADD COLUMN status TINYINT;
INSERT INTO produtos(descricao, preco, status)
VALUES('A', 12.30, 1);
SELECT descricao,
  preco,
  status
FROM produtos;