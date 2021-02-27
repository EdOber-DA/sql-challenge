-- Noticed that there were 31,579 duplicate entries in the department_employee table
-- Appears to be related to career paths for staff, should add start and end dates to that table to track effective time periods
Select e.Employee_Number, e.Last_Name, e.First_Name, d.department_name 
from Employee e  , department_employee de, department d
	where e.Employee_Number in 
(
select d2.employee_number 
		 from Department_Employee d2
		 group by d2.Employee_number
		 having count(d2.employee_number) > 1
)
and de.employee_number = e.employee_number
and d.department_number = de.department_number
;
