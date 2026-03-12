-- Write a query to find employees whose salary is higher than the average salary of all employees.
-- The result should be sorted in ascending order by department_id

select * from employees; 


SELECT 
    CONCAT(first_name, ' ', last_name) AS employee,
    employee_id,
    department_name AS department,
    departments.department_id,
    salary
FROM employees
JOIN 
    departments ON departments.department_id = employees.department_id
WHERE 
    salary > (SELECT AVG(salary) FROM employees)
ORDER BY 
     departments.department_id  ASC;