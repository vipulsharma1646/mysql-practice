-- trigger
DROP TRIGGER IF EXISTS employee_insert;
DROP TRIGGER IF EXISTS employee_insert2;
DROP TRIGGER IF EXISTS employee_insert3; 
DROP TRIGGER IF EXISTS employee_insert4;
DELIMITER $$
CREATE TRIGGER employee_insert3
 AFTER INSERT ON employee_salary
 FOR EACH ROW 
 BEGIN
 INSERT INTO employee_demographics(employee_id,first_name,last_name)
 VALUES(NEW.employee_id,NEW.first_name,NEW.last_name);
 END $$
  DELIMITER ;


INSERT INTO employee_salary(employee_id,first_name,last_name,occupation,salary,dept_id)
VALUES(100,'vipul','sharma','student',100000000,2);

-- triger happens when an event take place
-- event happens whenit is scheduled

-- event 
SELECT *
FROM employee_demographics

DELIMITER $$

CREATE EVENT delete_retires
ON SCHEDULE EVERY 30 SECOND
DO
BEGIN
	DELETE
	FROM employee_demographics
	WHERE age>=60;
	

END $$

DELIMITER ;

SHOW VARIABLES LIKE 'event%'

