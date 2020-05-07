
-- Grouping and Ordering
select 
	company_regions,
	count(*)
from 
	staff_div_reg
group by
	company_regions
order by 
	company_regions;

-- Grouping Sets: When we want some operations on multiple groups
select 
	company_regions,
	company_division,
	gender,
	count(*)
from 
	staff_div_reg --Its a view created earlier
group by
	grouping sets(company_regions, company_division, gender)
order by 
	company_regions, company_division, gender;
