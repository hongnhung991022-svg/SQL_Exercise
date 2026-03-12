-- Write a query to find the 5 employees with the lowest salaries.

select 
	first_name,
    last_name,
    employee_id,
    min(salary)
from employees
group by employee_id
order by min(salary) asc
limit 5 
; 