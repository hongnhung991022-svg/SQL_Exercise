-- Write a query to display employee names in reverse order 
-- (the name is formed by concatenating first_name and last_name).

select 
	lower(first_name),
    reverse(lower(first_name))
from employees;

