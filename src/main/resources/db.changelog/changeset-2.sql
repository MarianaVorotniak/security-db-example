--liquibase formatted sql

--changeset Mariana:createUsers
DROP TABLE IF EXISTS user;

CREATE TABLE user (
  user_id int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  active int(11) DEFAULT NULL,
  email varchar(255) NOT NULL,
  last_name varchar(255) NOT NULL,
  name varchar(255) NOT NULL,
  password varchar(255) NOT NULL
) ENGINE=InnoDB;

INSERT INTO user(user_id, active, email, last_name, name, password)
VALUES (1,1,'admin@gmail.com','s','Sam','sam'), (2,1,'admin@gmail.com','s','youtube','youtube');