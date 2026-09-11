# FUNCTIONS transform , analyze , summarize data
#create database shruu ; 
use shruu ;
create table users (
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    gender ENUM('Male', 'Female', 'Other'),
    date_of_birth DATE,
    salary DECIMAL(10, 2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    );
INSERT INTO users (name, email, gender, date_of_birth, salary) VALUES
('Aarav', 'aarav@example.com', 'Male', '1995-05-14', 65000.00),
('Ananya', 'ananya@example.com', 'Female', '1990-11-23', 72000.00),
('Raj', 'raj@example.com', 'Male', '1988-02-17', 58000.00),
('Sneha', 'sneha@example.com', 'Female', '2000-08-09', 50000.00),
('Farhan', 'farhan@example.com', 'Male', '1993-12-30', 61000.00),
('Priyanka', 'priyanka@example.com', 'Female', '1985-07-12', 84000.00),
('Aisha', 'aisha@example.com', 'Female', '1997-03-25', 56000.00),
('Aditya', 'aditya@example.com', 'Male', '1992-06-17', 69000.00),
('Meera', 'meera@example.com', 'Female', '1989-09-05', 77000.00),
('Ishaan', 'ishaan@example.com', 'Male', '2001-10-02', 45000.00),
('Tanvi', 'tanvi@example.com', 'Female', '1994-04-18', 62000.00),
('Rohan', 'rohan@example.com', 'Male', '1986-12-01', 75000.00),
('Zoya', 'zoya@example.com', 'Female', '1998-01-15', 54000.00),
('Karan', 'karan@example.com', 'Male', '1990-08-22', 68000.00),
('Nikita', 'nikita@example.com', 'Female', '1987-03-10', 71000.00),
('Manav', 'manav@example.com', 'Male', '1996-11-29', 61000.00),
('Divya', 'divya@example.com', 'Female', '1991-02-28', 57000.00),
('Harshit', 'harshit@example.com', 'Male', '1993-09-09', 65000.00),
('Ritika', 'ritika@example.com', 'Female', '1999-05-05', 52000.00),
('Imran', 'imran@example.com', 'Male', '1995-07-30', 63000.00),
('Juhi', 'juhi@example.com', 'Female', '1992-10-14', 59000.00),
('Tushar', 'tushar@example.com', 'Male', '1990-01-08', 73000.00),
('Lata', 'lata@example.com', 'Female', '1984-11-11', 78000.00),
('Yash', 'yash@example.com', 'Male', '1997-06-06', 64000.00),
('Fatima', 'fatima@example.com', 'Female', '1993-03-03', 55000.00);
select * from users;
# AGGREGATE FUNCTION
#select count(*) from users ; # FOR COUNTING
#select count(*) from users where gender = 'female'; # USING WHERE CLAUSE
#select min(salary) as min_salary , max(salary) as max_salary from users; # USING OF MIN MAX AND AS 
select sum(salary) as total_pay from users ; #  SUM
select avg(salary) as avg_salary from users ; # USING AVERAGE
select gender , avg(salary) as avg_salary from users  group by gender ; # USING GROUP BY
select id,gender , avg(salary) as avg_salary from users  group by id ;
select gender , sum(salary) as avg_salary from users  group by gender ;

# STRING FUNCTION
select name , length(name) as len_name from users ;# USING LENGTH
select id,gender,name ,length(name) as name_len from users
#select id,gender,lower(name) as lower_name , length(name) as name_len from users ;
SELECT name, LOWER(name) AS lowercase_name FROM users; # USING LOWER
select id,gender,name, lower(name) as lower_name , length(name) as len_name from users ;
select name , upper(name) as upper_name from users ;# USING UPPER
select id , lower(name) as lower_case ,concat(lower(name),"555") as username , length(name) as name_len from users ; #USING CONCAT

# DATE FUNCTIONS
select id , gender , lower(name) as lower_case , concat(lower(name), "111") as userame ,now() as time,length(name) as name_len from users ; #ADDING A NEW COL TIME
select id , gender , lower(name) as lower_case , concat(lower(name), "111") as userame ,day(date_of_birth) as day ,length(name) as name_len from users ; 
select id , gender , lower(name) as lower_case , concat(lower(name), "111") as userame ,year(date_of_birth) as year ,length(name) as name_len from users ; 
select id , gender , lower(name) as lower_case , concat(lower(name), "111") as userame ,month(date_of_birth) as month ,length(name) as name_len from users ;
select name, datediff(curdate(), date_of_birth) as days from users; # USING DATEDIFF AND KNOW HOW MUCH THAT PERSON HAS LIVED

# MATHEMATICAL FUNCTIONS
select salary ,round(salary) as round_salary , floor(salary) as floored_salary, ceil(salary) as ceiled_salary  from users ;
select id , mod(id,2) as remainder from users; # HERE ID ID DIVIDED BY 2 MODULO FUNCTION

#CONDITIONAL STAEMENTS
#IF
select id,name,gender , if(gender ='female' , 'yes' , 'no') as is_female from users ;

#AUTOCOMMIT AND TRANSACTIONS
#set autocommit = 0;
set autocommit = 1;
select * from users ;
commit;
delete from users where id=6;
rollback;
delete from users where id=5;
commit;
rollback;

 