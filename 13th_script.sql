select * from employee_demographics ;
select * from employee_salary ;

select * from employee_demographics 
inner join employee_salary  on employee_demographics.employee_id = employee_salary.employee_id;

select * from employee_demographics 
left join employee_salary  on employee_demographics.employee_id = employee_salary.employee_id;

select * from employee_demographics 
right join employee_salary  on employee_demographics.employee_id = employee_salary.employee_id;

select * from employee_salary emp1
join employee_salary emp2
on  emp1.employee_id = emp2.employee_id ; # self join

select emp1.employee_id as emp_santa,
emp1.first_name as first_name_santa,
emp1.last_name as last_name_santa,
emp2.employee_id as emp_name,
emp2.first_name as first_name_emp,
emp2.last_name as last_name_emp
from employee_salary emp1
join employee_salary emp2
on emp1.employee_id+1 = emp2.employee_id;

select * from employee_salary emp1
join employee_salary emp2
on  emp1.employee_id + 1 = emp2.employee_id ;

# joining multiple table at once
select * from employee_demographics as dem
inner join employee_salary as sal
   on dem.employee_id = sal.employee_id
inner join parks_departments pd
     on sal.dept_id = pd.department_id;

select * from parks_departments ;

# UNION
select * from employee_demographics
union 
select * from employee_salary;

select first_name , last_name from employee_demographics
union 
select first_name , last_name from employee_salary ;

select first_name , last_name from employee_demographics
union all
select first_name , last_name from employee_salary ;

select first_name , last_name ,'old man' as lable
from employee_demographics
where age>40 and gender = 'male'
union
select first_name , last_name ,'old lady' as lable
from employee_demographics
where age>40 and gender = 'female'
union
select first_name , last_name ,'highly_paid_emp' as lable
from employee_salary
where salary>70000
order by first_name , last_name ;

# STRING FUNCTIONS
select  length('skyfall');

select * from employee_demographics ;
select first_name , length(first_name) from employee_demographics
order by 2;

select upper('bhavna');
select lower('bhavna');
select trim('        bhavna      ');
select ltrim('        bhavna     yy ');
select rtrim('        bhavna     yy ');

select first_name ,
left(first_name,3),
right(first_name,3),
substring(first_name,3,3),
birth_date,
substring(birth_date,6,2) as birth_month
from employee_demographics ;

select first_name , replace(first_name ,'a','x')
from employee_demographics ;

select locate('x','alexender');
select first_name , locate('an',first_name )
from employee_demographics ;

select first_name , last_name,
concat(first_name ,'   ',last_name) as full_name
from employee_demographics ;