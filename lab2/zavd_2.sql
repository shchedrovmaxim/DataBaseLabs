use mydb;
DELIMITER $$
CREATE PROCEDURE setDog (nameDoc text, numberNewDog int, sumNewDog int, dataNewDog date, timeVisit time)

BEGIN 
     DECLARE ifDogovor INT default 0; 
     declare position varchar(45);
     declare  number_cabinet INT;
     declare salary INT;
     declare pk int;
     select doctors.nameDoctor into ifDogovor from doctors
		join dogovora on (doctors.N_dog = dogovora.N1_dog)
		where doctors.N_dog = numberNewDog and dogovora.N1_dog = numberNewDog;
      IF (ifDogovor=0) /* если задание не назначено, то назначаем его*/ 
   THEN BEGIN 
               INSERT INTO dogovora VALUES (numberNewDog, dataNewDog,sumNewDog);
                SELECT "Договор успешно добавлен"; 
            END; 
    ELSE  
             SELECT concat("Данное задание выполняет сотрудник ", nameDoc); 
       END IF;  
     END$$ 
call setDog('Беляева Элоиза Вячеславовна',29,3,'12.12.2012','16:00:00');
