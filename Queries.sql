
-- List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT data_employees.emp_no, data_employees.last_name, data_employees.first_name, data_employees.sex, data_salaries.salary
FROM data_employees
JOIN data_salaries ON data_employees.emp_no = data_salaries.emp_no;

--List first name, last name, and hire date for employees who were hired in 1986.
SELECT data_employees.last_name, data_employees.first_name, data_employees.hire_date
FROM data_employees
WHERE data_employees.hire_date BETWEEN '1986-01-01' AND '1987-01-01';

--List the manager of each department with the following information:
--department number, department name,the manager's employee number, last name, first name.
SELECT data_departments.dept_no, data_departments.dept_name, data_dept_manager.emp_no, data_employees.last_name, data_employees.first_name
FROM data_departments
JOIN data_dept_manager ON data_departments.dept_no = data_dept_manager.dept_no
Join data_employees ON data_dept_manager.emp_no = data_employees.emp_no;

--List the department of each employee with the following information:
--employee number, last name, first name, and department name.
SELECT data_dept_emp.emp_no, data_employees.last_name, data_employees.first_name, data_departments.dept_name
FROM data_dept_emp
JOIN data_employees ON data_dept_emp.emp_no = data_employees.emp_no
Join data_departments ON data_dept_emp.dept_no = data_departments.dept_no;

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT data_employees.first_name, data_employees.last_name, data_employees.sex
FROM data_employees
WHERE data_employees.first_name ='Hercules'
AND data_employees.last_name LIKE 'B%'

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT data_dept_emp.emp_no, data_employees.last_name, data_employees.first_name, data_departments.dept_name
FROM data_dept_emp
JOIN data_employees ON data_dept_emp.emp_no = data_employees.emp_no
Join data_departments ON data_dept_emp.dept_no = data_departments.dept_no
WHERE data_departments.dept_name = 'Sales' ;

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT data_dept_emp.emp_no, data_employees.last_name, data_employees.first_name, data_departments.dept_name
FROM data_dept_emp
JOIN data_employees ON data_dept_emp.emp_no = data_employees.emp_no
Join data_departments ON data_dept_emp.dept_no = data_departments.dept_no
WHERE data_departments.dept_name = 'Sales' 
OR data_departments.dept_name = 'Development';

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name) AS "frequency_count"
FROM data_employees
GROUP BY last_name
ORDER BY "frequency_count" DESC;
