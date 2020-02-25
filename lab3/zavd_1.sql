DELIMITER //

CREATE TRIGGER restrict_empl BEFORE insert ON doctors 
   FOR EACH ROW 
BEGIN 
set new.nameDoctor =concat(upper(left(new.nameDoctor,1)), substring(new.nameDoctor,1)); 
set new.salary= new.salary*1.2; 
 
END//
delimiter ;
