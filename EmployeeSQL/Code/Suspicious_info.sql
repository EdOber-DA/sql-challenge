-- Suspicious number of names - chart this - 1 April
Select  first_name, count(first_name) from employees
group by first_name
order by count(first_name)

Select  last_name, count(last_name) from employees
group by Last_name
order by count(last_name)

-- Suspicious number of birthdates - chart this
Select  birth_date, count(birth_date) from employees
group by birth_date
order by count(birth_date)

-- Suspicious Salary breakdown - most are 40,000


Select  salary, count(salary) from salaries
group by salary
having count(salary) > 1
order by count(salary) desc


!!! Employees in > 1 department???


