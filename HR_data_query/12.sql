/* Write a query to find employees who joined in August 1994.
The employee name should be formed by concatenating first_name and last_name.*/

select 
	concat(first_name,' ',last_name ) as employee,
    hire_date
from employees 
where hire_date like '1994-08%'
;