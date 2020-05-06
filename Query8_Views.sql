/*We want to group data from all three tables using joins. But doing so evry time we need such data is inefficient.
So we will create a view*/


create view staff_div_reg as
select
	s.*,
	cd.company_division,
	cr.company_regions
from
	staff s 
left join 
	company_divisions cd
on 
	s.department = cd.department
left join
	company_regions cr
on
	s.region_id = cr.region_id;


select * from staff_div_reg;