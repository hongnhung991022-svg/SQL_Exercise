-- Write a query to retrieve the maximum salary, minimum salary, and average salary of all employees,
-- where the average salary is rounded to the nearest integer.

select 
	min(salary),
    max(salary),
    round(avg(salary))
from employees;