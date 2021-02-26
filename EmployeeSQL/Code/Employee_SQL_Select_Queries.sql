-- sql-challenge - EmployeeSQL - Queries

-- ******************************************************************************
-- ** QUERY #01 - List employee number, last name, first name, sex, and salary.**
-- ******************************************************************************
Select e.Employee_Number, e.Last_Name, e.First_Name, e.Gender, s.Salary 
from Employee e, Salary s
where e.Employee_Number = s.Employee_Number
; 

-- ************************************************************************************************
-- ** QUERY #02 - List first name, last name, and hire date for employees who were hired in 1986.**
-- ************************************************************************************************
Select e.First_Name, e.Last_Name, e.Hire_Date 
from Employee e 
where date_part('year', e.Hire_Date) = 1986
;

-- ************************************************************************************************
-- ** QUERY #03 - List the manager of each department with the following information:            ** 
-- ** department number, department name, the manager's employee number, last name, first name.  **
-- ************************************************************************************************
Select d.Department_Number, d.Department_Name, e.Employee_Number, e.Last_Name, e.First_Name  
from Employee e, Department_Manager m, Department d  
where 	e.Employee_Number = m.Employee_Number and
	d.Department_Number = m.Department_Number
;

-- ************************************************************************************************
-- ** QUERY #04 - list the department of each employee with the following information:           **
-- ** employee number, last name, first name, and department name.                               **
-- ************************************************************************************************
Select e.Employee_Number, e.Last_Name, e.First_Name, d.Department_Name   
from Employee e, Department d, Department_Employee de  
where 	de.Employee_Number = e.Employee_Number and
	d.Department_Number = de.Department_Number
;

-- ************************************************************************************************
-- ** QUERY #05 - List first name, last name, and sex for employees whose                        **
-- ** first name is "Hercules" and last names begin with "B."                                    ** 
-- ************************************************************************************************
Select e.First_Name, e.Last_Name, e.Gender 
from employee e 
where 	e.First_Name = 'Hercules' and
	e.Last_Name LIKE 'B%'
;

-- ************************************************************************************************
-- ** QUERY #06 - List all employees in the Sales department, including                          **
-- ** their employee number, last name, first name, and department name                          **
-- ************************************************************************************************
Select e.Employee_Number, e.Last_Name, e.First_Name, d.Department_Name   
from Employee e, Department d, Department_Employee de  
where 	de.Employee_Number = e.Employee_Number and
	d.Department_Number = de.Department_Number and 
	d.Department_name = 'Sales'
;

-- ************************************************************************************************
-- ** QUERY #07 - List all employees in the Sales and Development departments,                   **   
-- ** including their employee number, last name, first name, and department name.               **
-- ************************************************************************************************
Select e.Employee_Number, e.Last_Name, e.First_Name, d.Department_Name   
from Employee e, Department d, Department_Employee de  
where 	de.Employee_Number = e.Employee_Number and
	d.Department_Number = de.Department_Number and 
	(d.Department_Name = 'Sales' or
         d.Department_Name = 'Development')
;

-- ************************************************************************************************
-- ** QUERY #08 - In descending order, list the frequency count of employee last names,          **   
-- ** i.e., how many employees share each last name.                                             **
-- ************************************************************************************************
Select Last_Name, count(Last_Name) as Family_Count from Employee
group by Last_Name
order by Family_Count desc
;