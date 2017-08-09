use employees;

SELECT emp_no, first_name, last_name, gender
FROM employees
WHERE (first_name = 'Irena' or first_name = 'Vidya' or first_name = 'Maya') and gender ='M';

SELECT *
from employees
where last_name like 'E%' AND last_name like '%E';

AND birth_date like '%-12-25';


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
