-- Write a query to find employees who joined after the 15th day of the month.

SELECT 
    CONCAT(first_name, ' ', last_name) AS employee,
    employee_id,
	hire_date
from employees
where day(hire_date) > 15
;


