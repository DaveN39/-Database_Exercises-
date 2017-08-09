use employees;
SELECT emp_no, first_name, last_name
FROM employees
WHERE (first_name = 'Irena' or first_name = 'Vidya' or first_name = 'Maya');
