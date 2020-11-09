DROP DATABASE IF EXISTS adlister_db;
CREATE DATABASE adlister_db;

# CREATE USER 'adlisteruser'@'localhost' IDENTIFIED BY 'adlisterpassword';
# GRANT ALL ON adlister_db.* TO 'adlisteruser'@'localhost';

USE adlister_db;

DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS ads;

CREATE TABLE users (
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
username VARCHAR(25) NOT NULL,
email VARCHAR(200) NOT NULL,
password VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE ads (
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
user_id INT UNSIGNED NOT NULL,
title VARCHAR(240) NOT NULL,
description TEXT,
PRIMARY KEY (id),
FOREIGN KEY (user_id) REFERENCES users (id)
);

INSERT INTO users(username, email, password) VALUES
('lili','lili@gmail.com','lilipassword'),
('zoe','zoe@gmail.com', 'zoepassword');

INSERT INTO ads(user_id, title, description) VALUES
(1, 'playstation for sale', 'This is a slightly used playstation'),
(1, 'Super Nintendo', 'Get your game on with this old-school classic!'),
(2, 'Junior Java Developer Position', 'Minimum 7 years of experience required. You will be working in the scripting language for Java, JavaScript'),
(2, 'JavaScript Developer needed', 'Must have strong Java skills');