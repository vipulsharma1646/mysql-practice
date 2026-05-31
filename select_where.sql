-- WHERE CLAUSE

SELECT *
FROM employee_salary
WHERE first_name='Leslie';



SELECT *
FROM employee_demographics
WHere gender ="Female"
AND first_name="April";

SELECT *
FROM employee_demographics
WHERE birth_date >"1985-01-01"
OR gender = "female";

SELECT *
FROM employee_demographics
WHERE birth_date >"1985-01-01"
OR NOT gender = "female";

SELECT *
FROM employee_salary
WHere salary >50000

SELECT *
FROM employee_demographics
WHERE (first_name="Leslie" AND age ="44") OR age>"55"




