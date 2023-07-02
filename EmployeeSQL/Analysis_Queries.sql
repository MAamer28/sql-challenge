/* List the employee number, last name, first name, sex, and salary of each employee. */
SELECT emp.emp_no, emp.last_name, emp.first_name, emp.sex, sal.salary
FROM employees as emp
JOIN salaries as sal
ON emp.emp_no = sal.emp_no
;

/* List the first name, last name, and hire date for the employees who were hired in 1986. */
SELECT first_name, last_name, hire_date
FROM employees
WHERE EXTRACT (YEAR from hire_date) = 1986
;

/* List the manager of each department along with their department number, department name, employee number, last name, and first name. */
SELECT dept.dept_no, dept.dept_name, emp.emp_no, emp.last_name, emp.first_name,
FROM departments AS dept
	JOIN dept_manager AS mgmt
	ON dept.dept_no = mgmt.dept_no
		JOIN employees AS emp
		ON mgmt.emp_no = emp.emp_no
;

/* List the department number for each employee along with that employee’s employee number, last name, first name, and department name. */
SELECT dept.dept_no, dept.dept_name, emp.emp_no, emp.last_name, emp.first_name
FROM departments AS dept
	JOIN dept_emp AS de
	ON dept.dept_no = de.dept_no
		JOIN employees AS emp
		ON de.emp_no = emp.emp_no
;

/* List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B. */
SELECT  first_name, last_name, sex
FROM employees
WHERE (first_name = 'Hercules') AND (LOWER(last_name) LIKE 'b%')
;

/* List each employee in the Sales department, including their employee number, last name, and first name. */
SELECT emp_no, last_name, first_name
FROM employees 
WHERE emp_no IN (
	SELECT emp_no
	FROM dept_emp 
	WHERE dept_no IN (
		SELECT dept_no
		FROM departments 
		WHERE dept_name = 'Sales')
	)
;

/* List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name. */
SELECT dept.dept_name, emp.emp_no, emp.last_name, emp.first_name
FROM departments AS dept
	JOIN dept_emp AS de
	ON dept.dept_no = de.dept_no
		JOIN employees AS emp
		ON de.emp_no = emp.emp_no
WHERE dept.dept_name IN ('Development', 'Sales')
;

/* List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name). */
SELECT emp.last_name, COUNT(emp.last_name) AS freq
FROM employees AS emp
GROUP BY emp.last_name
ORDER BY freq DESC
;