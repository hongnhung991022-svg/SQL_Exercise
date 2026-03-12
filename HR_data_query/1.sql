-- Write a query to retrieve the first_name, last_name, job_id, 
-- and salary of employees whose first name starts with the letter “S.”

select 
	first_name, 
    last_name, 
    job_id,
    salary
from employees
where first_name like 's%'
; 