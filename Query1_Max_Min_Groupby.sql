SELECT
	gender, max(salary),min(salary)
FROM
	staff
group by gender;