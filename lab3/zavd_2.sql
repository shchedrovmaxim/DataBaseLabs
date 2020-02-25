DELIMITER //

CREATE TRIGGER deltask AFTER delete ON doctors 
	 	FOR EACH ROW 
BEGIN 
	 	DELETE FROM dogovora WHERE N1_dog=old.N_dog; 
END//
DELIMITER ;
