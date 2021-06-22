USE employees;

SELECT employees.last_name, salaries.salary FROM employees
JOIN salaries
ON employees.emp_no = salaries.emp_no
LIMIT 50;


#This gets average salary by gender
SELECT AVG(salary), gender FROM employees
JOIN salaries
ON employees.emp_no = salaries.emp_no
GROUP BY gender;

USE join_test_db;

#LEFT JOIN


SELECT users.name AS user_name, roles.name AS role_name
FROM users JOIN roles
ON users.role_id = roles.id;