CREATE USER 'root_workplace'@'%' IDENTIFIED BY 'manager';
CREATE DATABASE IF NOT EXISTS workplace CHARACTER SET utf8 COLLATE utf8_general_ci;
GRANT ALL PRIVILEGES ON `workplace`.* TO 'root_workplace'@'%';

FLUSH PRIVILEGES;