CREATE USER 'root_keycloak'@'%' IDENTIFIED BY 'manager';
CREATE DATABASE IF NOT EXISTS keycloak CHARACTER SET utf8 COLLATE utf8_general_ci;
GRANT ALL PRIVILEGES ON `keycloak`.* TO 'root_keycloak'@'%';

FLUSH PRIVILEGES;