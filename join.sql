SELECT *
FROM employee_demographics

SELECT *
FROM employee_salary


-- inner join


SELECT ds.employee_id,age,occupation
FROM employee_demographics AS ds
INNER JOIN employee_salary AS sa
	ON ds.employee_id=sa.employee_id
    
    -- outer join
    
 SELECT ds.employee_id,age,occupation
FROM employee_demographics AS ds
LEFT JOIN employee_salary AS sa
	ON ds.employee_id=sa.employee_id
    
    -- self join
    
SELECT emp1.employee_id AS emp_santa,
emp1.first_name AS name_santa,
emp2.employee_id AS emp_gift,
emp2.first_name AS name_gift

FROM employee_salary emp1
JOIN employee_demographics emp2
	ON emp1.employee_id+1=emp2.employee_id
    
   --  joining multiple tables together
   
SELECT *
FROM employee_salary

SELECT * 
FROM parks_departments

SELECT *
FROM employee_salary AS es
INNER JOIN parks_departments AS pd
	ON es.dept_id = pd.department_id


    
    
    
    