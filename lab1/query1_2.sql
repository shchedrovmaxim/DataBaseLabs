call maximum(@MaxSalary);
call maximum(@MaxSum);

select * from doctors where salary = @MaxSalary;
select * from dogovora where S_dog = @MaxSum;