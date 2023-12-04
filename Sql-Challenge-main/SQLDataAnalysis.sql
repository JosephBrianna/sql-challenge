-- List the employee number, last name, first name, sex, and salary of each employee.
SELECT 
	e.emp_no
	,e.last_name
	,e.first_name
	,e.sex,s.salary 
from employees as e 
join salaries as s 
	on s.emp_no = e.emp_no
;	

-- List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT 
	first_name,last_name,hire_date 
from employees 
WHERE hire_date >= '1986-01-01' 
	and hire_date <= '1986-12-31'
;

-- List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT 
	dm.dept_no
	,dp.dept_name
	,e.emp_no,
	e.last_name
	,e.first_name 
FROM employees as e 
join dept_manager as dm 
	on dm.emp_no = e.emp_no 
join departments as dp 
	on dp.dept_no = dm.dept_no
;

-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

SELECT 
dp.dept_no
,e.emp_no
,e.last_name
,e.first_name
,dp.dept_name 
FROM departments as dp 
join dept_emp as de 
	on dp.dept_no = de.dept_no 
join employees as e 
	on de.emp_no = e.emp_no
;
-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT 
	first_name
	,last_name
	,sex 
from employees 
WHERE first_name = 'Hercules' 
	and last_name like 'B%'
;

-- List each employee in the Sales department, including their employee number, last name, and first name.
SELECT 
	e.emp_no
	,e.last_name
	,e.first_name 
from departments  as dp 
join dept_emp as de 
	on dp.dept_no = de.dept_no 
join employees as e
	on de.emp_no = e.emp_no  
	WHERE dp.dept_name = 'Sales'
;

-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT 
	e.emp_no
	,e.last_name
	,e.first_name
	,dp.dept_name 
from departments as dp 
join dept_emp as de 
	on dp.dept_no = de.dept_no 
join employees as e 
	on de.emp_no = e.emp_no  
	WHERE dp.dept_name = 'Sales' 
		OR dp.dept_name = 'Development'
;

-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT 
	count(last_name)
	,last_name 
from employees
	GROUP BY last_name 
	ORDER BY  last_name desc
;