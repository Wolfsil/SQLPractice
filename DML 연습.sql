#0
create database Wolrd;
create table Heaven (
	id int not null auto_increment primary key,
    name varchar(10) not null,
    good bool not null default True,
    key idx_name(name)
);


#1
insert into heaven values (1001, "강강강", 1), (1002, "강강나", 0), (1003, "강강다", 1);
insert into heaven values (1004, "강강라", 1);
insert into heaven(name) values ("강감찬");

#2
UPDATE heaven SET name = '' WHERE name = '개명';
INSERT INTO heaven(id, name) VALUES (1001, '개명') ON DUPLICATE KEY UPDATE name = '개명';

#3
DELETE FROM heaven where id =1001;
TRUNCATE TABLE Heaven;

#4
select * from heaven;
Select id from Heaven where name="강감찬";
explain select name,count(name) as count from Heaven group by name having count(name)>3;
Select * from Heaven order by name;

#5
EXPLAIN select * from heaven where name ="강감찬";
EXPLAIN analyze select * from heaven where name ="강감찬";



Drop Database wolrd;