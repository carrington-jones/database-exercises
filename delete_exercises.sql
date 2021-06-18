USE codeup_test_db;

DELETE FROM albums WHERE release_date > 1991;
SELECT 'Deleted all albums with release dates after 1991' AS 'K BYE!';
DELETE FROM albums WHERE genre = 'Disco';
SELECT 'Deleted all disco music' AS 'Disco';
DELETE FROM albums WHERE artist = 'Whitney Houston';
SELECT 'Deleted all albums by Whitney Houston' AS 'Whitney Houston Delete';
SELECT * FROM albums;