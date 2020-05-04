
-- Subquery in select statement
select 
 s1.last_name,
 s1.salary,
 s1.department,
 (select round(avg(salary)) from staff s2 where s2.department = s1.department)
from
staff s1


-- Subquery in From cluase:
select 
s1.department,
round(avg(salary))
from 
	(
		select 
		department, 
		salary
		from staff
		where 
		salary> 100000
	) s1
 group by s1.department
 

 --Sub query in where clause:
select
	s1.department, s1.last_name, s1.salary
from 
	staff s1
where
	s1.salary =  (select  max(s2.salary) from  staff s2)