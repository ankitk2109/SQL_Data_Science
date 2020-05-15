--Note: The main difference between max and first_value is that, we can decide which value should be at the top in first_value using the order by clause.

select
   department,
   last_name,
   salary,
   first_value(salary) over (partition by department order by salary DESC)
   --The above line actually partion by department(group by department) and then order them by salary in decending order. first_value picks the top value after orering. 
from
   staff;
   
-- If we change the order by clause it will take first value based on ordering feature
select
   department,
   last_name,
   salary,
   first_value(salary) over (partition by department order by last_name ASC)
from
   staff;

