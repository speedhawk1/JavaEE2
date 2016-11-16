CREATE DATABASE IF NOT EXISTS dbj2;

USE dbj2;

DROP TABLE IF EXISTS dbj2.users;
CREATE TABLE dbj2.users(
  id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'idPK',
  email VARCHAR(255) NOT NULL COMMENT 'email',
  password VARCHAR(255) NOT NULL COMMENT 'password',
  subject VARCHAR(255) COMMENT 'subject'
);

SELECT * FROM dbj2.users;

SELECT user,host FROM mysql.user;

# 更改远程访问IP
UPDATE mysql.user
    SET host= '%'
where host = 'localhost';
FLUSH PRIVILEGES ;

