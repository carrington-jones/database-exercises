USE codeup_test_db;

SELECT 'Pink Floyd Albums' AS 'Pink Floyd';
SELECT album_name FROM albums WHERE artist = 'Pink Floyd';
SELECT 'Release Date of Sgt. Pepper' AS 'Beatles';
SELECT release_date FROM albums WHERE album_name = 'Sgt. Pepper''s Lonely Hearts Club Band';
SELECT 'Nirvana''s Nevermind album''s genre' AS 'Nirvana';
SELECT genre FROM albums WHERE album_name = 'Nevermind';
SELECT 'Albums released between 1990 and 2000' AS '1990-2000';
SELECT album_name FROM albums WHERE release_date >= 1990 && release_date <= 2000;
SELECT 'Albums with sales over 20 Million' AS 'Cash';
SELECT album_name FROM albums WHERE sales = sales < 20.0;
SELECT 'Rock Albums' AS 'Van Halen not Van Hagar';
SELECT album_name FROM albums WHERE genre = 'Rock';