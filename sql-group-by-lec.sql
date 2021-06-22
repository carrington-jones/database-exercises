USE employees;

#Cant group unless it is aggregated first.

SELECT COUNT(*) FROM employees; #Returns 1 cell with 300024

SELECT COUNT(*), gender FROM employees GROUP BY gender;

SELECT COUNT(*), last_name FROM employees GROUP BY last_name;


#Find the average age of hire for employees of the company
SELECT AVG (DATEDIFF(hire_date, birth_date)/365) FROM employees;

SELECT MAX(DATEDIFF(hire_date, birth_date)/365) FROM employees;

SELECT MIN(DATEDIFF(hire_date, birth_date)/365) FROM employees;

SELECT title FROM titles;

SELECT DISTINCT last_name FROM employees
WHERE last_name LIKE 'E%e'
ORDER BY last_name;

SELECT DISTINCT first_name, last_name FROM employees
WHERE last_name LIKE 'E%e';

SELECT COUNT(last_name), last_name FROM employees
WHERE last_name LIKE 'E%e'
GROUP BY last_name
ORDER BY last_name;

SELECT gender, COUNT(*) FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;