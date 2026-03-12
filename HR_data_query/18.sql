/* Write a query to find managers and employees who work in different departments.
The employee name and manager name should be formed by concatenating first_name and last_name, 
and the result should be sorted in ascending order by the manager’s name.*/

select * from departments ;
select * from employees;

select 
    CONCAT(m.first_name, ' ', m.last_name) AS manager_name,
    CONCAT(e.first_name, ' ', e.last_name) AS employee_name,
    m.department_id AS manager_department,
    e.department_id AS employee_department
from employees e
join employees m 
	on e.manager_id = m.employee_id
where 
    e.department_id <> m.department_id
order by manager_name ASC
;