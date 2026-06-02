SELECT gender,AVG(salary)
FROM employee_demographics AS ed
JOIN employee_salary AS es
	ON ed.employee_id=es.employee_id
GROUP BY gender
    


SELECT ed.first_name,ed.last_name,gender,SUM(salary) OVER(PARTITION BY gender ORDER BY ed.employee_id)
FROM employee_demographics AS ed
JOIN employee_salary AS es
 ON ed.employee_id=es.employee_id
 
 
--  NO REPETITION
 
 SELECT ed.first_name,ed.last_name,gender,salary ,
 ROW_NUMBER() OVER()
FROM employee_demographics AS ed
JOIN employee_salary AS es
 ON ed.employee_id=es.employee_id
 
--  REPITITION

 SELECT ed.first_name,ed.last_name,gender,salary ,
 ROW_NUMBER() OVER(PARTITION BY GENDER ORDER BY salary)
FROM employee_demographics AS ed
JOIN employee_salary AS es
 ON ed.employee_id=es.employee_id


SELECT ed.first_name,ed.last_name,gender,salary ,
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary),
RANK() OVER(PARTITION BY gender ORDER BY salary)
FROM employee_demographics AS ed
JOIN employee_salary AS es 
ON ed.employee_id=es.employee_id

 

