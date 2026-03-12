-- Write a query to find the employee(s) with the second-highest salary.
-- Example: if five employees have salaries 4, 4, 3, 3, 2, the correct result for the second-highest salary should be 3, 3

select *
from employees
where salary  <  (
	select max(salary) 
    from employee)
order by salary desc
limit 2
;