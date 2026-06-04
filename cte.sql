WITH cte_example(Gender,avg_salary,max_salary,min_salary,count_salary) AS
(
SELECT gender,AVG(salary),MAX(salary),MIN(SALARY),COUNT(SALARY)
FROM employee_demographics AS ed
JOIN employee_salary AS es
	ON ed.employee_id=es.employee_id
    GROUP BY gender
    )
    
SELECT *
FROM cte_example
;
    
-- SELECT *
-- FROM (
-- SELECT gender,AVG(salary),MAX(salary),MIN(SALARY),COUNT(SALARY)
-- FROM employee_demographics AS ed
-- JOIN employee_salary AS es
-- 	ON ed.employee_id=es.employee_id
--     GROUP BY gender)
--     AS ed

WITH cte_example AS
(
SELECT employee_id,gender,birth_date
FROM employee_demographics AS ed
WHERE birth_date >'1985-01-01'
),
cte_example2 AS
(SELECT *
FROM employee_salary
WHERE salary>50000
)
SELECT *
FROM cte_example
JOIN cte_example2
	ON cte_example.employee_id=cte_example2.employee_id
