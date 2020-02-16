use mydb;
DELIMITER $$

CREATE PROCEDURE count_salary (INOUT no_project INT, IN salary INT, IN val INT)
BEGIN
	CASE
	WHEN (salary>val) 
		  THEN (SELECT COUNT(salary) INTO no_project  FROM doctors  WHERE doctors.salary>val);
	WHEN (salary<val) 
		   THEN (SELECT COUNT(salary) INTO no_project FROM doctors WHERE doctors.salary<val);
	ELSE (SELECT COUNT(salary) INTO no_project  	  FROM doctors WHERE doctors.salary=val);
END CASE;
END$$

DELIMITER ;

DELIMITER $$

CREATE PROCEDURE count_sum (INOUT no_project INT, IN sum INT, IN val INT)
BEGIN
	CASE
	WHEN (sum>val) 
		  THEN (SELECT COUNT(S_dog) INTO no_project  FROM dogovora  WHERE dogovora.S_dog>val);
	WHEN (sum<val) 
		   THEN (SELECT COUNT(S_dog) INTO no_project FROM dogovora WHERE dogovora.S_dog<val);
	ELSE (SELECT COUNT(S_dog) INTO no_project  	  FROM dogovora WHERE dogovora.S_dog=val);
END CASE;
END$$

DELIMITER ;

