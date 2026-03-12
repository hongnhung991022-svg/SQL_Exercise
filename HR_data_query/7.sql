-- Write a query to find the number of employees in each department, sorted by employee count in descending order.

select * 
from departments ;
    
    
select 
	department_name,
	count(employee_id) as emp_count
from departments
left join employees
		on departments.department_id = employees.department_id
group by department_name
order by  emp_count desc;
        