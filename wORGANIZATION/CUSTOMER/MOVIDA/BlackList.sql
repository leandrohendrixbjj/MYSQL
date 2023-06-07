DROP DATABASE IF EXISTS estudos;
CREATE DATABASE estudos;

USE estudos;

CREATE TABLE LIST_1(id int auto_increment primary key,
phone varchar(20));

CREATE TABLE BLACKLIST(id int auto_increment primary key,
phone varchar(20));

INSERT INTO LIST_1(phone) values('11995940671');
INSERT INTO LIST_1(phone) values('11995940672');
INSERT INTO LIST_1(phone) values('11995940673');
INSERT INTO LIST_1(phone) values('11995940674');

INSERT INTO BLACKLIST(phone) values('11995940671');


