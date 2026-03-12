-- Write a query to display each employee’s salary together with their corresponding manager.
-- The employee name and manager name should be formed by concatenating first_name and last_name.

select 
	concat(e1.first_name, ' ', e1.last_name) as employee,
    e1.salary as emp_sal,
    concat(e2.first_name, ' ',e2.last_name) as manager,
    e2.salary as mn_sal
from employees as e1
left join employees as e2
            on e1.employee_id = e2.manager_id
;

