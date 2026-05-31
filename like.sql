-- LIKE STATEMENT 

-- we use "%" and  "_" this means exactly 1 character _

SELECT *
FROM employee_demographics
WHERE first_name LIKE '%rr%'

SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a__'