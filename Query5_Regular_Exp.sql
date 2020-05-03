
select 
    job_title
from
    staff
where
   job_title like '%Assistant%';


select 
    job_title
from
    staff
where
   job_title similar to '%Assistant%(III|IV)'; --Similar to gives us more specified search. Here we can search job titile with assistant keyword and having levels III or IV mentioned in them.


select 
    job_title
from
    staff
where
   job_title similar to '%Assistant I_'; -- underscore(_) is used to specify a single character match. Here we are matching ketword Assitant followd by I+any single character


select 
    job_title
from
    staff
where
   job_title similar to '[EPS]%'; -- Show job titles that start with E,P or S;

  