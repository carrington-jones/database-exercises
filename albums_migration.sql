USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                        artist VARCHAR(50),
                        name  VARCHAR(100) NOT NULL,
                        release_date INT UNSIGNED NOT NULL,
                        sales DOUBLE UNSIGNED NOT NULL,
                        genre VARCHAR(25),
                        PRIMARY KEY (id)
);