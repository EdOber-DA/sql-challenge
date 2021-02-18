-- Select * from departments;
-- Select * from dept_emp; 
-- Select * from dept_manager; 
-- Select * from employees; 
-- Select * from salaries; 
-- Select * from titles; 

-- Research #01
Select e.emp_no, e.last_name, e.first_name, e.hire_date, e.sex, s.salary 
from employees e, salaries s
where e.emp_no = s.emp_no
and 	e.emp_no = 499942
; 

-- QUERY #02
-- Select e.first_name, e.last_name, e.hire_date 
-- from employees e 
-- where date_part('year', e.hire_date) = 1986
-- ;

-- QUERY #03
-- Select d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name  
-- from employees e, dept_manager m, departments d  
-- where 	e.emp_no = m.emp_no and
--  		d.dept_no = m.dept_no
-- ;

-- QUERY #04
-- Select e.emp_no, e.last_name, e.first_name, d.dept_name   
-- from employees e, departments d, dept_emp de  
-- where 	de.emp_no = e.emp_no and
-- 		d.dept_no = de.dept_no
-- ;

-- QUERY #05
-- Select e.first_name, e.last_name, e.sex 
-- from employees e 
-- where 	e.first_name = 'Hercules' and
--  		e.last_name LIKE 'B%'
-- ;

-- QUERY #06
-- Select e.emp_no, e.last_name, e.first_name, d.dept_name   
-- from employees e, departments d, dept_emp de  
-- where 	de.emp_no = e.emp_no and
-- 		d.dept_no = de.dept_no and 
-- 		d.dept_name = 'Sales'
-- ;

-- QUERY #07
-- Select e.emp_no, e.last_name, e.first_name, d.dept_name   
-- from employees e, departments d, dept_emp de  
-- where 	de.emp_no = e.emp_no and
-- 			d.dept_no = de.dept_no and 
--	 		(d.dept_name = 'Sales' or
--	 	 	d.dept_name = 'Development')
-- ;

-- QUERY #08
-- select last_name, count(last_name) as family_count from employees
-- group by last_name
-- order by family_count desc
