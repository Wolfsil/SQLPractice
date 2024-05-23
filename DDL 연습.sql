create database Wolrd;
show databases;
use wolrd;
create table Heaven (
	id int not null auto_increment primary key,
    name varchar(10) not null,
    good bool not null default True,
    key idx_name(name)
);
show tables;
show index from heaven;
ALTER TABLE Heaven ADD COLUMN friend  varchar(40) default '';
create index idx_friend on Heaven(friend);
DROP INDEX idx_friend ON Heaven;
show index from heaven;

TRUNCATE TABLE Heaven;
Drop Table Heaven;
Drop Database wolrd;

FLUSH PRIVILEGES;
