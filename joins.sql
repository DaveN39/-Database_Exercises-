SELECT department.dept_name, concat(employees.first_name, " ", employees.last_name) AS "current manager"
FROM employees
JOIN dept_manager ON dept_manager.emp_no = employees.emp_no
JOIN departments ON departments.dept_no = dept_manager.dept_no
WHERE dept_manager.to_date > now();

SELECT concat(employees.first_name, " ", employees.last_name) AS "Manager name", departments.dept_name AS "Department name"
FROM employees
JOIN dept_manager ON dept_manager.emp_no = emp_no
JOIN departments ON departments.dept_no = dept_manager.dept_no
WHERE dept_manager.to_date > now()
AND employees.gender = "F";

SELECT titles.title AS "Title", count(*) AS "Count"
FROM departments
JOIN dept_emp ON dept_emp.dept_no = departments.dept_no
JOIN titles ON title.emp_no = dept_emp.emp_no
WHERE dept_emp.to_date > now()
AND titles.to_date > now()
AND departments.dept_name = "Customer Service"
GROUP BY titles.title;

SELECT departments.dept_name, concat(employee.first_name, " ", employees.last_name) AS "Manager", salaries.salary
FROM salaries
JOIN dept_manager ON dept_manager.emp_no = salaries.emp_no
JOIN employees ON employees.emp_no = dept_manager.emp_no
JOIN departments ON departments.dept_no = dept_manager.dept_no
WHERE dept_manager.to_date > now()
AND salaries.to_date > now()

SELECT concat(e.first_name, " ", e.last_name) AS "Employee Name", departments.dept_name AS "Department Name", concat()dept_manager.emp_no
FROM employees AS e
JOIN dept_emp ON dept_emp.emp_no = e.emp_no
JOIN departments ON departments.dept_no = dept_emp.dept_no
JOIN dept_manager ON dept_manager.dept_no = departments.dept_no
JOIN employees AS managers ON dept_manager.emp_no = managers.emp_no
WHERE dept_emp.to_date > now()
AND dept_manager.to_date > ();

