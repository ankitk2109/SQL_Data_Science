
select 
	s.last_name,
	s.department,
	cd.company_division
from
	staff s join company_divisions cd
on 
	s.department = cd.department
-- Resultant output on has 953rows, however staff table actually has 1000 rows. To include all rows from staff table we need to use different joins.


select 
	s.last_name,
	s.department,
	cd.company_division
from
	staff s left join company_divisions cd
on 
	s.department = cd.department
--where cd.company_division is null --to check the null rows
