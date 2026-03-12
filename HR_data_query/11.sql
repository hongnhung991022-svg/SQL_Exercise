/* Write a query to display the employee’s full name and phone number formatted as (_ _ )-( _ )-( _ _ _).
The employee name should be formed by concatenating first_name and last_name.*/

select * from employees;

select 
	concat(first_name,' ',last_name ) as employee,
	REPLACE(phone_number, '.', '-') as phone_num
from employees
;