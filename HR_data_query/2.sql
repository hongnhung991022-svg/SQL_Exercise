-- Write a query to find the employee(s) with the highest salary
select *
from employees
where salary = (
		select max(salary) 
        from employees
)
;	

