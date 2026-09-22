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
where employee_id in (select employee_id from employee_salary where dept_id =1) ;

select * from parks_departments ;


