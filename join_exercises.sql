use join_test_db;

SELECT *
FROM users as u
JOIN roles as r ON u.role_id = r.id;

SELECT *
FROM users AS u
LEFT JOIN roles AS r ON u.role_id = r.id;

SELECT *
FROM users AS u
RIGHT JOIN roles AS r on u.role_id = r.id;

SELECT COUNT(*) AS user_roles
FROM users AS u
LEFT JOIN roles AS r on u.role_id = r.id
GROUP BY r.id
ORDER BY r.id;


USE employees;

SELECT departments.dept_name as 'Department Name',
       CONCAT(employees.first_name, ' ', employees.last_name) AS 'Department Manager'
FROM departments
         JOIN dept_manager on departments.dept_no = dept_manager.dept_no #combines dept_manager table with departments table using dept_no
         JOIN employees on dept_manager.emp_no = employees.emp_no #combines employee number from dept_manager table and employee number from employees table
WHERE dept_manager.to_date = '9999-01-01'
ORDER BY departments.dept_name;

SELECT departments.dept_name as 'Department Name',
       CONCAT(employees.first_name, ' ', employees.last_name) AS 'Department Manager'
FROM departments
         JOIN dept_manager on departments.dept_no = dept_manager.dept_no #combines dept_manager table with departments table
         JOIN employees on dept_manager.emp_no = employees.emp_no
Where dept_manager.to_date = '9999-01-01' AND employees.gender = 'F'
ORDER BY departments.dept_name;

SELECT t.title, COUNT(t.title) AS Total
FROM titles as t
         JOIN dept_emp as de
              ON de.emp_no = t.emp_no
WHERE de.dept_no = 'd009' AND YEAR(t.to_date) = '9999' AND de.to_date LIKE '%9' #d009 is customer service department number
GROUP BY t.title;




