CREATE DATABASE IF NOT EXISTS garages;
USE garages;

CREATE TABLE IF NOT EXISTS garage (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    address VARCHAR(200) NOT NULL,
    contact VARCHAR(20) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    last_visit VARCHAR(20) NOT NULL,
    brands VARCHAR(200) NOT NULL,
    garage_num VARCHAR(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS user (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(18) NOT NULL,
    password VARCHAR(18) NOT NULL
);

INSERT INTO user (username, password) VALUES ('moti', '221519');

GRANT ALL PRIVILEGES ON garages.* TO 'moti'@'%';
FLUSH PRIVILEGES;
