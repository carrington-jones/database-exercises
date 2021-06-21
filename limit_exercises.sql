USE employees;

SELECT DISTINCT last_name FROM employees WHERE last_name LIKE 'Z%' LIMIT 10;

SELECT emp_no FROM employees.salaries t ORDER BY salary DESC LIMIT 5;

SELECT emp_no FROM employees.salaries t ORDER BY salary DESC LIMIT 4 OFFSET 46;