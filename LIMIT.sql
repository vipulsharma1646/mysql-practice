-- LIMIT

SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 3


SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 2,1

-- ALISING

 SELECT gender ,AVG(age) as avg_age
 from employee_demographics
 GROUP BY gender
 HAVING avg_age >40
