-- Limit first decrease the data and then perform operation
-- fetch first need an ordering before applying and it fetches top results after ordering is done on complete data.

-- Use order by and fetch first to limit the number of rows returned *
select
   last_name, job_title, salary
from
   staff
order by
   salary desc
fetch first
   10 rows only;

/* Select with a sort order */
select
   company_division, count(*)
from
   staff_div_reg
group by
   company_division
order by
   count(*);