-- Window function keep eacg row intact and add aggregated columns. See here https://www.toptal.com/sql/intro-to-sql-windows-functions
select
	department,
	last_name,
	salary,
	avg(salary) OVER (partition by department)
from 
	staff
