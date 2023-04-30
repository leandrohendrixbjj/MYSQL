use estudos;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS blackList;
-- TABLE CUSTOMER
CREATE TABLE customers(
       id int auto_increment,
       name varchar(20),
       phone int(3),
       primary key(id)
);
-- TABLE BLACKLIST
CREATE TABLE blackList(
       id int auto_increment,
       phone int(3),
       primary key(id)
);
-- ADD CUSTOMER
INSERT INTO customers(name, phone)
VALUES('leandro', 1);
INSERT INTO customers(name, phone)
VALUES('soares', 2);
INSERT INTO customers(name, phone)
VALUES('ribeiro', 3);
-- ADD BLACKLIST
INSERT INTO blackList(phone)
VALUES(3);
-- LEFT OUTER JOIN => NÃO VAI IMPRIMIR O QUE ESTÁ NA BLACKLIST 
SELECT *
FROM customers c
       LEFT OUTER JOIN blackList b ON b.phone = c.phone
WHERE b.id IS NULL;