USE codeup_test_db;



# Remember to USE the codeup_test_db.
#
# In select_exercises.sql write queries to find the following information. Before each item, output a caption explaining the results:
#
# The name of all albums by Pink Floyd.*
# The year Sgt. Pepper's Lonely Hearts Club Band was released*
# The genre for Nevermind*
# Which albums were released in the 1990s*
# Which albums had less than 20 million certified sales
# All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?
# As always, commit your changes after each step and push them out to GitHub

Select * FROM albums;

select name AS 'Pink floyd albums'
from albums where artist='Pink Floyd';

        select name from albums
        where artist='Pink Floyd';

select  release_date as 'Sgt. Pepper''s Lonely Hearts Club Band Release Date'
from albums where name='Sgt. Pepper''s Lonely Hearts Club Band';

select genre as 'Genre for NeverMind' from albums
where name ='Nevermind';

select name as 'albums released in the 1990s'
from albums where release_date between  1990 and 1999;


select NAME AS 'the albums with less than 20 million Certified sales'
from albums where sales < 20;

select name as 'albums with genre of rock'
from albums where genre = 'Rock';





