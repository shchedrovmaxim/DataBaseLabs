use mydb;
delimiter $$
CREATE PROCEDURE BigPosition()
BEGIN 
	UPDATE doctors SET position = UPPER(position);
END $$
delimiter ;
delimiter $$
CREATE PROCEDURE LowPosition()
BEGIN 
	UPDATE doctors SET position = lower(position);
END $$
delimiter ;

