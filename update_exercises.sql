USE codeup_test_db;

-- SELECT * FROM albums;
-- SELECT * FROM albums WHERE release_date < 1980;
-- SELECT * FROM albums WHERE artist = 'Michael Jackson';









-- ALREADY RAN
UPDATE albums
SET sales = (sales * 10);
-- WHERE id = 1;
SELECT 'Multiplied sales by 10' AS 'Sales';


UPDATE albums
SET release_date = 1871
WHERE release_date < 1980;
SELECT 'Changed all release dates before 1980 to 1871' AS 'Release Date';

UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';
SELECT 'Changed Michael Jackson''s name to Peter Jackson' AS 'Peter Jackson';