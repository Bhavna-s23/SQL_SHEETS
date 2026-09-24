#INTERMEDIATE LEVEL
#CASE STATEMENTS
select * from employee_demographics ;
select first_name ,
last_name  ,
age,
case
    when age <=30 then 'Young'
    when age between 31 and 45 then 'middle'
    when age >45 then 'old'
end as age_bracket
from employee_demographics ;

#pay increase and bouns
#<50000 = 5%
#>50000 = 7%
#finance = 10% bonus

select first_name , last_name ,  salary ,
case 
    when salary <50000 then salary +(salary* 0.05)
    when salary >50000 then salary +(salary*0.07)
end   as new_salary,
case
    when dept_id = 6  then salary *.10
end    as bonus
from employee_salary;

# SUBQUERIES  -- query in another query
select * from employee_Salary ;

select * from employee_demographics 
where employee_id in (select employee_id from employee_salary where dept_id =1) ;  #in is a operator here

select * from parks_departments ;
select * from employee_salary;

select first_name , salary , avg(salary) 
from employee_salary 
group by first_name , salary;

select first_name , salary , 
(select avg(salary)  from employee_salary )
from employee_salary 
;
use parks_and_recreation;
select  gender, avg(age) , max(age) , min(age), count(age)
from employee_demographics 
group by gender ;

select  avg(max_age)
from 
(select  gender, avg(age) as avg_age ,
 max(age) as max_age ,
 min(age) as min_age,
 count(age) as count_age
from employee_demographics 
group by gender) as agg_table
;