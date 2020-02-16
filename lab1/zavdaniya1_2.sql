use mydb;
delimiter $$
create procedure maximum(OUT maximum INT)
begin 
	select min(salary) into maximum from doctors;
end$$

create procedure maximum_dog(OUT maximum INT)
begin
	select max(S_dog) into maximum from dogovora;
end$$
delimiter ;

