-- Write a query to find the employee(s) with the third-highest salary, following the same logic as in requirement 3

select *
from employees
where salary  <  (
		select max(salary) 
        from employees)
order by salary desc
limit 1 offset 2
;
