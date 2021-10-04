USE codeup_test_db;
show tables ;


select * from albums;
# Create a file called update_exercises.sql.
#
# Write SELECT statements to output each of the following with a caption:
#
#     All albums in your table.*
#     All albums released before 1980*
#     All albums by Michael Jackson*
#     After each SELECT add an UPDATE statement to:
#
#     Make all the albums 10 times more popular (sales * 10)*
#     Move all the albums before 1980 back to the 1800s.*
#     Change 'Michael Jackson' to 'Peter Jackson'
#     Add SELECT statements after each UPDATE so you can see the results of your handiwork.


select 'all albums' as '';
select * from albums;

#     Make all the albums 10 times more popular (sales * 10)*
     update albums
     set sales = (sales * 10);

#     Move all the albums before 1980 back to the 1800s.
update albums set release_date=1800 where release_date <1980;
select * from albums where release_date<1900;


select 'albums released before 1980' as '';
select * from albums where release_date < 1980;


select * from albums where artist = 'Michael Jackson';


#
# use codeup_test_db;
#
 select 'all albums' as '';
select * from albums;
# update albums
# set sales = (sales * 10);
# select 'all albums 10x popularity' as '';
# select * from albums;
#
select 'albums released before 1980' as '';
select * from albums where release_date < 1980;
#
# select 'albums released before 1980 now set to 1800s' as '';
# update albums
# set release_date = 1800
# where release_date < 1980;
# select * from albums where release_date < 1900;
#
#
# select 'albums by michael jackson' as '';
# select * from albums where artist = 'Michael Jackson';
# select 'albums by michael jackson now named peter jackson' as '';
# update albums
# set artist = 'Peter Jackson'
# where artist = 'Michael Jackson';
# select * from albums where artist = 'Peter Jackson';