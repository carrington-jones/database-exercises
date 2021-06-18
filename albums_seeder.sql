USE codeup_test_db;
TRUNCATE albums;

INSERT INTO albums(artist, album_name, release_date, sales, genre)
VALUES ('Michael Jackson', 'Thriller', 1982, 47.3, 'Pop'),
       ('AC/DC', 'Back in Black', 1980, 29.4, 'Hard Rock'),
       ('Meat Loaf', 'Bat Out of Hell', 1977, 21.7, 'Hard Rock'),
       ('Pink Floyd', 'The Dark Side of The Moon', 1973, 24.4, 'Progressive Rock'),
       ('Whitney Houston', 'The Bodyguard', 1992, 32.4, 'R&B'),
       ('Eagles', 'Greatest Hits', 1976, 41.2, 'Soft Rock'),
       ('Bee Gees', 'Saturday Night Fever', 1997, 21.6, 'Disco'),
       ('Fleetwood Mac', 'Rumors', 1977, 27.9, 'Soft Rock'),
       ('Shania Twain', 'Come on over', 1997, 29.6, 'Country'),
       ('Led Zeppelin', 'Led Zeppelin IV', 1971, 29.0, 'Hard Rock'),
       ('Michael Jackson', 'Bad', 1987, 22.2, 'Pop'),
       ('Alanis Morissette', 'Jagged Little Pill', 1995, 24.4, 'Alternative Rock'),
       ('Michael Jackson', 'Dangerous', 1991, 17.0, 'Pop'),
       ('Celine Dion', 'Falling into You', 1996, 21.2, 'Soft Rock'),
       ('Eagles', 'Hotel California', 1976, 31.5, 'Soft Rock'),
       ('The Beatles', 'Sgt. Pepper''s Lonely Hearts Club Band', 1967, 18.2, 'Rock'),
       ('Adele', '21',2011, 30.8,'Pop'),
       ('Madonna', 'The Immaculate Collection', 1990, 19.5, 'Pop'),
       ('Metallica', 'Metallica', 1991, 25.2, 'Heavy Metal'),
       ('The Beatles', '1', 2000, 234.4, 'Rock'),
       ('The Beatles', 'Abbey Road', 1969, 14.4, 'Rock'),
       ('Bruce Springsteen', 'Born in the USA', 1984, 19.6, 'Heartland Rock'),
       ('Pink Floyd', 'The Wall', 1979, 18.7, 'Progressive Rock'),
       ('Nirvana', 'Nevermind', 1991, 16.7, 'Grunge'),
       ('Santana', 'Supernatrual', 1999, 20.5, 'Hard Rock'),
       ('Guns N'' Roses', 'Appetite for Destruction', 1987, 21.9, 'Hard Rock');

