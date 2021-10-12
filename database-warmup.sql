CREATE DATABASE candy_db;
SHOW databases;
USE candy_db;
SHOW tables;
DROP TABLE IF EXISTS candies;
CREATE TABLE IF NOT EXISTS candies (
#     NOT NULL??
                                       id INT UNSIGNED AUTO_INCREMENT,
                                       name VARCHAR(64) NOT NULL,
                                       price_in_cents INT NOT NULL,
                                       description VARCHAR(128),
                                       type_id INT NOT NULL,
                                       PRIMARY KEY (id),
                                       FOREIGN KEY (type_id) REFERENCES types (id)
);
DROP TABLE IF EXISTS types;
CREATE TABLE IF NOT EXISTS types (
                                     id INT AUTO_INCREMENT,
                                     name VARCHAR(64) NOT NULL,
                                     description VARCHAR(128),
                                     PRIMARY KEY (id)
);
SHOW TABLES;
# Seeders
INSERT INTO types (name, description) VALUES
                                          ('Chewing Gum', 'Great for chewing!'),
                                          ('Chocolate', 'Great for chocolate goodness!'),
                                          ('Hard Candy', 'Don’‘t bite too hard!'),
                                          ('Gummy Candy', 'Not too hard; not too soft.');
INSERT INTO candies (name, price_in_cents, description, type_id) VALUES
                                                                             ('Doublemint Gum', 159, 'Standard chewing gum', 1),
                                                                             ('Orbit Gum', 110, 'Another standard chewing gum', 1),
                                                                             ('Hershey Bar', 210, 'Standard chocolate bar', 2),
                                                                             ('Gushers', 312, 'Nice and sour!', 4),
                                                                             ('Sour Patch Kids', 206, 'Quite sour!', 4),
                                                                             ('M&Ms', 199, 'Crunchy and chocolatey', 2);
# -------------
SELECT * FROM candies;
SELECT * FROM types;


select t.name , c.name from candies c join types t on c.type_id = t.id where price_in_cents > 200;



