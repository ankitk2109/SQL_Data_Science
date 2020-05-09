
-- Creating a view
create or replace view staff_div_reg_country as 
	select
		s.*, cd.company_division, cr.company_regions, cr.country
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


 --Select nubmer of employees by company_region and country 
select
   company_regions, country, count(*)
from
   staff_div_reg_country
group by
   company_regions, country
order by
   country, company_regions;


--Use rollup operation on the group by clause to create hierarchical sums 
select
   company_region, country, count(*)
from
   staff_div_reg_country
group by
   rollup (country, company_region)
order by
   country, company_region;


--Use cube operation on the group by clause to create all possible combination of sets of grouping columns 
select
   company_division, company_regions,  count(*)
from
   staff_div_reg_country
group by
   cube(company_division, company_regions);