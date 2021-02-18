CREATE TABLE employees (
	emp_no			int,
	emp_title_id	char(5),
	birth_date		date,
	first_name		varchar(30),
	last_name		varchar(30),
	sex				char(1),
	hire_date		date
	);
	
CREATE TABLE dept_emp (
	emp_no			int,
	dept_no			char(4)
	);

CREATE TABLE departments (
	dept_no			char(4),
	dept_name		varchar(30)
	);
	
CREATE TABLE dept_manager (
	dept_no			char(4),
	emp_no 			int
	);

CREATE TABLE salaries (
	emp_no 			int,
	salary			int
	); 
	
CREATE TABLE titles (
	title_id		char(5),
	title			varchar(20)
	); 