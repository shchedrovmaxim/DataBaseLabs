use mydb;
SET GLOBAL log_bin_trust_function_creators = 1;
delimiter $$
CREATE FUNCTION countDog (DocName text) returns INT
BEGIN 
   DECLARE n INT; 
    SELECT count(nameDoctor) INTO n FROM doctors 
	JOIN dogovora ON ( dogovora.N1_dog=doctors.N_dog)
        WHERE   nameDoctor=DocName; 
return n;
END $$
delimiter ;
select countDog('Сысоева Ярослава Германновна');
