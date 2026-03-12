-- Write a query to find the number of employees managed by each manager, 
-- where the manager’s name is formed by concatenating first_name and last_name

select 
	e2.employee_id,
    concat(e2.first_name, ' ',e2.last_name) as manager,
    count(e1.employee_id) AS number_of_reportees
from employees as e1
left join employees as e2
		on e2.employee_id = e1.manager_id
group by e2.employee_id
;