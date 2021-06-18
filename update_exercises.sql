USE codeup_test_db;

SELECT 'All albums in table' AS 'All albums';
SELECT * FROM albums;
SELECT 'All albums released before 1980' AS 'Before 1980';
SELECT * FROM albums WHERE release_date < 1980;
SELECT 'Michael Jackson Albums' AS 'Michael Jackson';
SELECT * FROM albums WHERE artist = 'Michael Jackson';









-- ALREADY RAN
UPDATE albums
SET sales = (sales * 10);
-- WHERE id = 1;
SELECT sales FROM albums;


UPDATE albums
SET release_date = (release_date - 100)
WHERE release_date < 1980;
SELECT release_date FROM albums;

UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';
SELECT artist FROM albums WHERE artist = 'Peter Jackson';