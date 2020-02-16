DELIMITER $$
create procedure from_doctors_lines (IN var1 INT)
   begin
       SELECT * FROM doctors  limit var1;
   end $$


create procedure from_patientlist_lines (IN var1 INT)
   begin
       SELECT * FROM patientlist  limit var1; 
   end $$

create procedure from_dogovora_lines (IN var1 INT)
   begin
       SELECT * FROM dogovora limit var1; 
   end $$


create procedure from_services_list_lines (IN var1 INT)
   begin
       SELECT * FROM services_list  limit var1; 
   end $$
DELIMITER ;

call from_doctors_lines(5);
call from_patientlist_lines(5);
call from_dogovora_lines(5);
call from_services_list_lines(5);



