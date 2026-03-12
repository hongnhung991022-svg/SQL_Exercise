-- Write a query to find the number of employees hired in each year, 
-- sorted by employee count in descending order; if the counts are equal, sort by year in ascending order.

select * 
from employees ;

select 
	year(hire_date) as hire_year,
    count(employee_id) as employees_hired_count
from employees
group by hire_year
order by 
		employees_hired_count desc,
        hire_year asc
;