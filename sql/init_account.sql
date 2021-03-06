CREATE DATABASE login_system;
/*---------------------------------------------------------*/
CREATE  TABLE users (
	username VARCHAR(60) NOT NULL ,
	password VARCHAR(60) NOT NULL ,
	enabled TINYINT NOT NULL DEFAULT 1 ,
	PRIMARY KEY (username));
/*---------------------------------------------------------*/
INSERT INTO users(username,password,enabled)
VALUES ('bart','$2a$10$04TVADrR6/SPLBjsK0N30.Jf5fNjBugSACeGv1S69dZALR7lSov0y', true);
INSERT INTO users(username,password,enabled)
VALUES ('phoenix','$2a$10$04TVADrR6/SPLBjsK0N30.Jf5fNjBugSACeGv1S69dZALR7lSov0y', true);
/*---------------------------------------------------------*/

CREATE TABLE user_roles (
	user_role_id int(11) NOT NULL AUTO_INCREMENT,
	username varchar(60) NOT NULL,
	role varchar(60) NOT NULL,
	PRIMARY KEY (user_role_id),
	UNIQUE KEY uni_username_role (role,username),
	KEY fk_username_idx (username),
	CONSTRAINT fk_username FOREIGN KEY (username) REFERENCES users (username));
/*---------------------------------------------------------*/
INSERT INTO user_roles (username, role)
VALUES ('bart', 'ROLE_USER');
INSERT INTO user_roles (username, role)
VALUES ('bart', 'ROLE_ADMIN');
INSERT INTO user_roles (username, role)
VALUES ('phoenix', 'ROLE_USER');
/*---------------------------------------------------------*/
  
  









