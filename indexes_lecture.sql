USE employees;
select database();
show indexes from employees;

select count(*)from titles;

show indexes from departments;

SHOW INDEXES FROM salaries;

select salary from salaries where salary < 70000 and  salary > 50000;

# ADD new  INDX INTO TO EXISTING TABLE
alter table salaries add index salary_index(salary);


# rerun to show how index is now running faster
select salary from salaries where salary < 70000 and  salary > 50000;


use codeup_test_db;

select * from quotes;


CREATE TABLE different_quotes (
                                  id INT NOT NULL AUTO_INCREMENT,
                                  content VARCHAR(240) NOT NULL,
                                  author VARCHAR(50) NOT NULL,
                                  PRIMARY KEY (id)
);

INSERT INTO different_quotes (content, author)
VALUES ('The real voyage of discovery consists not in seeking new landscapes, but in having new eyes.', 'Marcel Proust');


select * from different_quotes;

alter table different_quotes add unique (content);

INSERT INTO different_quotes (content, author)
VALUES ('The real voyage of discovery consists not in seeking new landscapes, but in having new eyes.', 'Marcel Proust');

show indexes from different_quotes;

use employees;
show indexes from salaries;
# to drop duplicate or anu index from a table
drop index salary_index on salaries;


use employees;

show tables;

DESCRIBE current_dept_emp;

DESCRIBE departments;
select * from departments;


DESCRIBE dept_emp;



DESCRIBE dept_emp_latest_date;

DESCRIBE dept_manager;

DESCRIBE employees;

DESCRIBE salaries;

DESCRIBE titles;
select *
from titles;

use codeup_test_db;


# ADD new  INDX INTO TO EXISTING TABLE
alter table albums add unique  unique_artist_and_name(artist,name);
select * from albums;


# INSERT INTO albums (artist, name, release_date, genre, sales)
# VALUES ('Michael Jackson', 'Thriller', 1982,'Pop, post-disco, funk, rock', 48.9);



CREATE TABLE persons (
              id INT unsigned not NULL AUTO_INCREMENT,
              first_name VARCHAR(25) NOT NULL,
              album_id int  unsigned NOT NULL,
              PRIMARY KEY (id),
              foreign key (album_id) references albums(id)

);
