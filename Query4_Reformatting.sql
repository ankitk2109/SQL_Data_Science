
SELECT DISTINCT
LOWER(DEPARTMENT)
FROM STAFF

SELECT 
JOB_TITLE || '-' || DEPARTMENT AS TITLE_DAPARTMENT
FROM STAFF;

SELECT 
LENGTH('  SOFTWARE  ');

SELECT
LENGTH(TRIM('  SOFTWARE  '));


SELECT 
JOB_TITLE, (JOB_TITLE LIKE 'Assistant%') AS IS_ASST
FROM 
STAFF
WHERE 
JOB_TITLE LIKE 'Assistant%';


SELECT 
JOB_TITLE, (JOB_TITLE LIKE 'Assistant%') AS IS_ASST
FROM 
STAFF;


SELECT 'ASDJAKSDBASD' AS TEST_STRING;
	
SELECT SUBSTRING('ASDJAKSDBASD' FROM 1 FOR 4)AS TEST_STRING;
	
SELECT SUBSTRING('ASDJAKSDBASD' FROM 5 FOR 3)AS TEST_STRING_2;

SELECT SUBSTRING('ASDJAKSDBASD' FROM 5)AS TEST_STRING_2; --AKSDBASD


-- Converting Assistant to Asst. using overlay method
SELECT 
OVERLAY(JOB_TITLE PLACING 'Asst. ' FROM 1 FOR 10)
FROM 
STAFF
WHERE 
JOB_TITLE LIKE 'Assistant%'

	