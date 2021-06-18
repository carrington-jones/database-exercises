USE codeup_test_db;

SELECT album_name AS 'Pink Floyd Albums' FROM albums WHERE artist = 'Pink Floyd';
SELECT release_date AS 'Release Date of Sgt. Pepper' FROM albums WHERE album_name = 'Sgt. Pepper''s Lonely Hearts Club Band';
SELECT genre AS'The genre for Nevermind' FROM albums WHERE album_name = 'Nevermind';
SELECT album_name AS 'Albums released between 1990 and 2000' FROM albums WHERE release_date >= 1990 && release_date < 2000;
SELECT album_name AS 'Albums with sales over 20 Million' FROM albums WHERE sales = sales < 20.0;
SELECT album_name AS 'Rock Albums' FROM albums WHERE genre = 'Rock';