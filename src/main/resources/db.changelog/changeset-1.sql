--liquibase formatted sql

--changeset Mariana:createRoles
DROP TABLE IF EXISTS role;

CREATE TABLE role (
  role_id int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  role_name varchar(255) DEFAULT NULL
) ENGINE=InnoDB;

INSERT INTO role (role_id, role_name) VALUES (1,'ADMIN');