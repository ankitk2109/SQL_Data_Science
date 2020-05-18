/*  Use lag to reference rows behind */
select
   department,
   salary,
   lag(salary) over (partition by department order by salary desc)
from
   staff;
   
/* Use lead to reference rows ahead */
select
   department,
   salary,
   lead(salary) over (partition by department order by salary desc)
from
   staff
