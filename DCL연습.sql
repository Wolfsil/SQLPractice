CREATE USER '아이디'@'localhost' IDENTIFIED BY '비밀번호';
flush privileges;
GRANT ALL PRIVILEGES ON test.a TO '아이디'@'localhost';
show grants for '아이디'@'localhost';
flush privileges;
REVOKE update ON test.a from '아이디'@'localhost';
show grants for '아이디'@'localhost';
flush privileges;
ALTER USER '아이디'@'localhost' IDENTIFIED BY '0000';
flush privileges;
DROP USER '아이디'@'localhost';
flush privileges;


