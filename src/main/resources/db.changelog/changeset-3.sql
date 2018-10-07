--liquibase formatted sql

--changeset Mariana:createUsersRoles
DROP TABLE IF EXISTS user_role;

CREATE TABLE user_role (
  user_id int(11) NOT NULL,
  role_id int(11) NOT NULL,
  PRIMARY KEY (user_id,role_id),
  FOREIGN KEY (user_id) REFERENCES User (user_id),
  FOREIGN KEY (role_id) REFERENCES Role (role_id)
) ENGINE=InnoDB;

INSERT INTO user_role(user_id, role_id) VALUES (1,1), (2, 1);