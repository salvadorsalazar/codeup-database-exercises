USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE IF NOT EXISTS albums(


    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR (128),
    name VARCHAR (128),
    release_date INT,
    sales FLOAT(6,2),
    genre VARCHAR(50),
    PRIMARY KEY(id)
);

select * from albums;
select * from books;