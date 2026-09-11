# USING STARTER SQL
#create database startersql;
use startersql;

CREATE TABLE users (
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
#select name,salary from users ;

# QUERYING SQL
#select * from users where gender='female' ; # USING OF WHERE CLAUSE
#select * from users where gender='male' ; # <> , != SIGNS FOR NOT EQUALS TO
#select * from users where date_of_birth> '1997-09-05';
#select * from users where id >= '11';
#select * from users where date_of_birth is null;
#select * from users where date_of_birth between '1995-01-01' and ' 2001-09-12';
#select * from users where gender in ('male','female');
#select * from users where salary in (50000 , 60000) ;
#select * from users where gender='female'  and salary> '70000' ;
#select * from users where gender='male' or salary>'70000' ;
#select * from users where gender='male' or salary>'70000'  order by date_of_birth asc ; # WE CAN USE ORDER BY FOR THE CHANGE OF THE ORDER TO DIFF COL
#select * from users where gender='male' or salary>'70000'  order by date_of_birth desc limit 6 ; # ORDER BY CAN BE ASCENDING OR DESCENDINNG , WE CAN ALSO USE LIMITS 
#SELECT * FROM users WHERE name LIKE 'A%';-- Starts with A ;
#SELECT * FROM users WHERE name LIKE '%a';-- Ends with a ;
#SELECT * FROM users WHERE name LIKE '%li%';-- Contains 'li' ;  # LIKE CLAUSE
#SELECT * FROM users WHERE salary > 60000 ORDER BY created_at DESC LIMIT 5 ;
# select * from users where gender='female' or saalay>'80000' limit 10 offset 4 ; here offset means leaving the starting no. of rows given in offset  and giving the no. of rows mentioned in limit
# select * from users limit 5,10 ;  same as offset one
#SELECT * FROM users ORDER BY salary DESC; # WHERE CLAUSE IS NOT THAT IMP
#SELECT * FROM users WHERE salary BETWEEN 50000 AND 70000 ;



# UPDATING THE DATA

#update users set salary = 44000 where id=1;
#update users set salary = 44000 where name like 'a%' ;-- starts with a;
#update users set salary = 44000 ,email = 'aarav@aarav.com' where  id=1; # WE CAN CHAANGE MULTIPLE col  AT ONCE
#update users set gender ='female' ;# MAKE SURE TO ADD WHERE  CLAUE AS IF IT IS NOT ADDED THEN THE CHANGE WILL BE MADE IN EVERY ROW
# QUICK QUIZ QUESTIONS
#update users set salary = 70000 where id=5 ;
#update users set name='Aisha Khan' where email='aisha@example.com';
#update users set salary = salary+10000  where salary < 60000 ; # this needs to be checked
#UPDATE users SET salary = salary + 10000 WHERE salary < 60000;
update users set gender = 'other'  where name = 'ishaan' ; # again the same error
#update users set salary = 50000 ;
select * from users ;

# DELETINNG DATA 

delete from users where date_of_birth > '1997-01-01' ;
delete from users where id= 7;
#delete from users; #WHOLE rows WILL BE DELETED but table struct will be saved
delete from users where gender = 'other' ;
# drop table users ;# WHOLE TABLE WILL BE DELETED
# DELETE FROM users WHERE salary < 50000 ;
# DELETE FROM users WHERE salary IS NULL ;
select * from users ;
 
 
drop table users ;
