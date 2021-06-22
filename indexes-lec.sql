USE employees;

# use of indexes is part of Query Optimization

SHOW INDEXES FROM employees;

SHOW INDEXES FROM departments;

#Lets say I want salaries
SELECT salary FROM salaries
WHERE salary BETWEEN 50000 AND 70000;

ALTER TABLE salaries ADD INDEX salary_index (salary);

DROP INDEX salary_index ON salaries;

#Indexes exercise

USE codeup_test_db;

ALTER TABLE albums ADD UNIQUE unique_artist_and_name (artist, album_name);

ALTER TABLE albums DROP INDEX unique_artist_and_name;