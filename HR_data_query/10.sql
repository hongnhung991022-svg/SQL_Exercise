/* Write a query to divide employees into three groups based on their salary.
The employee name should be created by concatenating first_name and last_name, 
and the results should be sorted by name in ascending order.
Divide employees into three groups based on their salary as follows:
	•	Low group: salary ≥ 2000 and salary < 5000
	•	Mid group: salary ≥ 5000 and salary < 10000
	•	High group: all remaining employees
*/

select 
	concat(first_name,' ',last_name ) as employee,
    salary,
		case
			when salary >= 2000 and salary < 5000 then 'low'
            when salary >= 5000 and salary < 10000 then 'mid'
			else 'high'
		end as salary_level
from employees
order by salary asc;

