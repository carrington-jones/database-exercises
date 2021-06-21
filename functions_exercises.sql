USE employees;

SELECT CONCAT (first_name, ' ', last_name) FROM employees WHERE last_name LIKE 'E%' ORDER BY emp_no DESC;

SELECT * FROM employees WHERE MONTH(birth_date) = 12 AND DAY(birth_date) = 25;

SELECT * FROM employees  WHERE YEAR(birth_date) BETWEEN 1990 AND 2000 AND MONTH(birth_date) = 12 AND DAY(birth_date) = 25;

SELECT * FROM employees  WHERE YEAR(birth_date) BETWEEN 1990 AND 2000 AND MONTH(birth_date) = 12 AND DAY(birth_date) = 25 ORDER BY birth_date DESC;

SELECT *, DATEDIFF(CURDATE(), hire_date) AS 'Days worked at the company';

