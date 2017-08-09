use employees;

SELECT emp_no, first_name, last_name, gender 
FROM employees
WHERE (first_name = 'Irena' or first_name = 'Vidya' or first_name = 'Maya')
AND gender ='M'
ORDER BY last_name, first_name;

SELECT emp_no, first_name, last_name, gender 
FROM employees
WHERE last_name like 'E%' AND last_name like '%E';

SELECT *
FROM salaries
GROUP BY emp_no;

SELECT count(*) as 'number of employees by gender', gender
FROM employees
GROUP BY gender;
-- SELECT *
-- FROM employees
-- WHERE last_name LIKE 'e%';

-- SELECT *
-- FROM employees
-- WHERE hire_date LIKE '199%';

-- SELECT *
-- FROM employees
-- WHERE birth_date LIKE '%-12-25';

-- SELECT *
-- FROM employees
-- WHERE last_name LIKE '%q%';
