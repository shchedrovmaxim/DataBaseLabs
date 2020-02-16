call count_salary(@salary,30000,30000);
select @salary;
SELECT COUNT(salary)   FROM doctors  WHERE salary=30000;



call count_sum(@sum,10,3000);
select @sum;
SELECT COUNT(S_dog)   FROM dogovora  WHERE S_dog<3000