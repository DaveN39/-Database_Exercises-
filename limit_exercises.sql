SELECT *
FROM employees
WHERE birth_date LIKE '199%'
	AND hire_date LIKE '%-12-25'
LIMIT 5;