CREATE DATABASE certification_info;
use test_db;
CREATE USER "newuser'@'localhost" IDENTIFIED BY 'newpassword';
GRANT ALL PRIVILEGES ON certification_info TO "newuser'@'%";
CREATE TABLE certification_data (firstName VARCHAR(20), skillType VARCHAR(20), skillLevel INT(5));
INSERT INTO certification_data VALUES ('RAJESH','PYTHON', 1);
INSERT INTO certification_data VALUES ('VENKAT','CYPRESS', 2);