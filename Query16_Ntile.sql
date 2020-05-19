/* Use ntiles to assign "buckets" to rows */
/* Include quartiles in list of salaries by department */
select
   department,
   salary,
   ntile(4) over (partition by department order by salary desc) as quartile
from
   staff;
