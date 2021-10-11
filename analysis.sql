--List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
JOIN salaries AS S ON s.emp_no= e.emp_no;

--List first name, last name, and hire date for employees who were hired in 1986.
SELECT  first_name, last_name, hire_date
FROM EMPLOYEES
WHERE EXTRACT(YEAR FROM hire_date)= 1986;

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM employees AS e
JOIN dept_manager AS dm ON dm.emp_no= e.emp_no
JOIN departments AS d ON d.dept_no= dm.dept_no;

--List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
JOIN dept_emp AS demp ON e.emp_no= demp.emp_no
JOIN departments AS d ON d.dept_no= demp.dept_no;

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT e.first_name, e.last_name, e.sex
FROM employees AS e
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
JOIN dept_emp AS demp ON e.emp_no= demp.emp_no
JOIN departments AS d ON d.dept_no= demp.dept_no
WHERE d.dept_name= 'Sales';

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
JOIN dept_emp AS demp ON e.emp_no= demp.emp_no
JOIN departments AS d ON d.dept_no= demp.dept_no
WHERE d.dept_name= 'Sales' OR d.dept_name= 'Development';

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT COUNT(last_name) AS "frequency", LAST_NAME
FROM employees
GROUP BY LAST_NAME
ORDER BY "frequency" DESC ;