CREATE DATABASE b2fcev1eevxoxvzog5bi;


USE b2fcev1eevxoxvzog5bi;
CREATE TABLE users (
    id INT(11) NOT NULL,
    username VARCHAR(16) NOT NULL,
    password VARCHAR(60) NOT NULL,
    fullname VARCHAR(100) NOT NULL
);

ALTER TABLE users
    ADD PRIMARY KEY (id);

ALTER TABLE users
    MODIFY id INT(11)NOT NULL AUTO_INCREMENT, AUTO_INCREMENT =2;

DESCRIBE users;    


CREATE TABLE  links (
    id INT(11) NOT NULL,
    title VARCHAR(150) NOT NULL,
    url VARCHAR(250) NOT NULL,
    description TEXT,
    user_id INT(11),
    create_at TIMESTAMP NOT NULL DEFAULT current_timestamp,
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES users(id)
);
ALTER TABLE links 
    ADD PRIMARY KEY (id);

ALTER TABLE links
    MODIFY id INT(11)NOT NULL AUTO_INCREMENT, AUTO_INCREMENT =2;


    CREATE TABLE  img (
    id INT(11) NOT NULL,
    title VARCHAR(150) NOT NULL,    
    file VARCHAR(250) NOT NULL,    
    user_id INT,
    create_at TIMESTAMP NOT NULL DEFAULT current_timestamp,
    CONSTRAINT file_user FOREIGN KEY (user_id) REFERENCES users(id)
);
ALTER TABLE img 
    ADD PRIMARY KEY (id);

ALTER TABLE img
    MODIFY id INT NOT NULL AUTO_INCREMENT;