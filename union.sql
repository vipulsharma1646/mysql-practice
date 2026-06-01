-- union 
SELECT age,gender
FROM employee_demographics
UNION
SELECT first_name,last_name
FROM employee_salary

-- this is not a good way we cannot just union 2 diff

SELECT first_name,last_name
FROM employee_demographics
UNION
SELECT first_name,last_name
FROM employee_salary

-- union distinct it only takes unique values

SELECT first_name,last_name
FROM employee_demographics
UNION DISTINCT
SELECT first_name,last_name
FROM employee_salary

-- union all will list all 

SELECT first_name,last_name
FROM employee_demographics
UNION ALL
SELECT first_name,last_name
FROM employee_salary

SELECT first_name,last_name,"oldman" AS label
FROM employee_demographics  
where age>40
UNION
SELECT first_name,last_name,"oldladey" AS label
FROM employee_demographics 
where age>40
UNION
SELECT first_name,last_name,"highly paid" AS label
FROM employee_salary 
where salary>70000
ORDER BY first_name,last_name
