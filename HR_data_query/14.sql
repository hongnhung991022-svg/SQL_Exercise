/* Write a query to find the maximum salary in each department.
The result should be sorted in ascending order by department_id.*/

select 
	departments.department_id,
    department_name,
    max(salary)
from departments
left join employees
		on departments.department_id = employees.department_id
group by departments.department_id
order by departments.department_id asc 
;
