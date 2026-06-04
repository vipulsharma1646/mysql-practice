-- stored procedures
-- USE Parks_and_Recreation

CREATE PROCEDURE large_salalries()
SELECT *
FROM employee_salary
WHERE salary >=50000

CALL large_salalries();

we can chnage the delimiter 

DELIMITER $$
CREATE PROCEDURE large_salalries3()
BEGIN
	SELECT *
	FROM employee_salary
	WHERE salary >=50000;
	SELECT *
	FROM employee_salary
	WHERE salary >=10000;
END $$

DELIMITER ;

CALL large_salalries3();

DELIMITER $$
CREATE PROCEDURE table5(p_employee_id INT)
BEGIN
	SELECT salary
    FROM employee_salary
    WHERE employee_id=p_employee_id;
END $$

DELIMITER ;
call table5(1)
