use shruu ;
CREATE TABLE admin_users (
id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    gender ENUM('Male', 'Female', 'Other'),
    date_of_birth DATE,
    salary INT
);
INSERT INTO admin_users (id, name, email, gender, date_of_birth, salary) VALUES
(101, 'Anil Kumar', 'anil@example.com', 'Male', '1985-04-12', 60000),
(102, 'Pooja Sharma', 'pooja@example.com', 'Female', '1992-09-20', 58000),
(103, 'Rakesh Yadav', 'rakesh@example.com', 'Male', '1989-11-05', 54000),
(104, 'Fatima Begum', 'fatima@example.com', 'Female', '1990-06-30', 62000);
select * from admin_users;
select email,name from customer
union
select email,name from admin_users ; #UNION

select name from customer
union all
select name from admin_users ;

SELECT name, 'User' AS role FROM customer
UNION
SELECT name, 'Admin' AS role FROM admin_users; # ADDING SEPERATE ROLES 

select name from customer
union
select name from admin_users 
order by name ;

ALTER TABLE  customer
ADD COLUMN referred_by_id INT;
UPDATE customer SET referred_by_id = 1 WHERE id IN (2, 3,5,6,8,11,14);-- User 1 referred Users 2
UPDATE customer SET referred_by_id = 2 WHERE id = 4;-- User 2 referred User 4

select 
a.id,
a.name as user_name,
b.name as referred_by
from customer a
inner join customer b on a.referred_by_id = b.id ;

select 
a.id,
a.name as user_name,
b.name as referred_by
from customer a
left join customer b on a.referred_by_id = b.id ;

select * from customer ;

#VIEWS IN SQL
create view rich_customer as
select *  from customer
where salary>70000 ; 

update customer set salary = 35000 where id = 2;
select * from rich_customer ;
select name , email from rich_customer ;
#drop view rich_customer;

#INDEXES
show indexes from customer;
create index idx_salary on customer(salary); # SINGLE COL INDEX
create index idx_gender_name on customer(gender, name); # MULTI COL INDEX
select * from customer where gender='female' and name='aarohi'; # MULTI COL INDEXES ARE USED ON QUERIES LIKE THIS

show indexes from addres;
# drop index idx_salary on customer;

# SUBQUERIES
select avg(salary) from customer ;
#select * from customer where salary>61833;
select * from customer where salary>(select avg(salary) from customer );
select * from customer where salary<(select avg(salary) from customer );
select id,name,referred_by_id 
from customer 
where referred_by_id in(select id from customer where salary > (select avg(salary)from customer));

SELECT name, salary,
(SELECT AVG(salary) FROM customer) AS average_salary
FROM customer ;

#GROUP BY AND HAVING

select gender , avg(salary) as avg_salary
from users
group by gender ;

select gender , avg(salary) as avg_salary, count(*) as count
from customer
group by gender ;#GROUP BY WITH COUNT

select gender , avg(salary) as avg_salary, count(*) as count
from users
group by gender 
where avg(salary)>50000; # THIS WON'T WORK HERE

select gender , avg(salary) as avg_salary, count(*) as count
from customer
group by gender 
having avg(salary)>60000; #USING HAVING

SELECT referred_by_id, COUNT(*) AS total_referred
FROM CUSTOMER
WHERE referred_by_id IS NOT NULL
GROUP BY referred_by_id
HAVING COUNT(*)>1;
SELECT * FROM CUSTOMER;

select gender , count(*) as total_users
from customer
group by gender with rollup ;

select gender , avg(salary) as avg_salary , count(*) as total_count
from customer where id<5000 group by gender with rollup
having avg(salary)<60000;
