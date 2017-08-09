use employees;
SELECT CONCAT(COUNT(*), '', gender)
FROM employees
WHERE first_name IN('Irena', 'Vidya', 'Maya')
GROUP BY gender;

SELECT CONCAT(first_name, '', last_name)
FROM employees
WHERE last_name LIKE 'E%'
OR last_name LIKE '%E'
GROUP BY emp_no DESC;

SELECT CONCAT(first_name, '', last_name) AS 'Name', datediff(NOW(), hire_date) / 365
FROM employees
WHERE hire_date > '199%'
	AND birth_date LIKE '%12-25'
GROUP BY birth_date ASC, hire_date DESC;

SELECT * FROM employees
WHERE last_name NOT LIKE '%qu%'
	AND last_name LIKE '%q%'
GROUP BY first_name, last_name
ORDER BY first_name;

-- SELECT  concat(emp_no, '-', last_name, ',', first_name) AS fullname, birth_date AS DOB
-- FROM employees
-- GROUP BY first_name, last_name
-- ORDER BY first_name;

SELECT e.first_name
FROM employees AS e
JOIN titles ON titles.emp_no = employees.emp_no;

SELECT employees.first_name, employees.last_name, departments.dept_name 
FROM employees 
JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
JOIN departments ON departments.dept_no = dept_emp.dept_no;