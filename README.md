# sql-challenge
Employee Database Queries and Tables
This repository provides SQL queries and scripts for an employee database. The queries offer insights into employee data, while the scripts create tables to manage information effectively.

Queries Overview:
Employee Information with Salary:

Lists employee number, last name, first name, sex, and salary.
Employees Hired in 1986:

Displays first name, last name, and hire date for employees hired in 1986.
Managers and Department Details:

Lists the manager of each department along with department number, name, employee number, last name, and first name.
Employee Department Information:

Provides department number for each employee along with employee number, last name, first name, and department name.
Hercules with Last Name Starting with B:

Shows first name, last name, and sex of employees with the first name Hercules and last name starting with B.
Employees in the Sales Department:

Lists each employee in the Sales department with employee number, last name, and first name.
Employees in Sales and Development Departments:

Displays each employee in Sales and Development departments with employee number, last name, first name, and department name.
Frequency Counts of Last Names:

Lists the frequency counts of employee last names in descending order.
Table Descriptions:
Departments:

Table Name: departments
Fields: dept_no (Primary Key), dept_name
Department Employees:

Table Name: dept_emp
Fields: emp_no, dept_no
Department Managers:

Table Name: dept_manager
Fields: dept_no, emp_no
Employees:

Table Name: employees
Fields: emp_no (Primary Key), emp_title_id, birth_date, first_name, last_name, sex, hire_date
Salaries:

Table Name: salaries
Fields: emp_no, salary
Titles:

Table Name: titles
Fields: title_id (Primary Key), title
Usage:
Execute the SQL scripts in your database management system to create the necessary tables.
Utilize the queries to extract valuable information from the employee database.
