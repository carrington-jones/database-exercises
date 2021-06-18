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
SELECT 'Multiplied sales by 10' AS 'Sales';


UPDATE albums
SET release_date = (release_date - 100)
WHERE release_date < 1980;
SELECT 'Changed all release dates before 1980 to 100 years in the past' AS 'Release Date';

UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';
SELECT 'Changed Michael Jackson''s name to Peter Jackson' AS 'Peter Jackson';