use sstartsql ;
create table users (
id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    gender ENUM('Male', 'Female', 'Other'),
    date_of_birth DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
select * from users ;  # selecting data from a table
#select id,name,email from users ; # selecting specific data from users , specific columns
rename table users to customers ; # renaming a table
#select * from customers ;
 rename table customers to users ;
 select * from users ; 
 
 # ALTERING A TABLE
 alter table users add column is_active boolean default true ; #  for addinng a col    ADD COLUMN
 alter table users drop column is_active ; # for dropping a column    DROP COLUMN
 alter table users modify column name varchar(111); # for modifyinng a col  MODIFY COLUMN
 alter table users modify column email varchar(50) after id;
 alter table users modify column date_of_birth date first ; # always add col name + datatype
 
 # INSERTING DATA
-- insert into users values
 #('2003-02-09' ,1,'harry@gmail.com', 'alice' ,'male' , default );
 select * from users ; 
 insert into users  (name , email , gender , date_of_birth ) values
 ('bhavv' , 'bhavvvn@gmail.com' , 'female' , '2007-05-03'),
 ('bhavna' , 'bhav33n@gmail.com' , 'female' , '2005-05-07'),
 ('shru' , 'shru@gmail.com' , 'female' , '2005-03-03');
 select * from users ;
  insert into users  (name , email , gender , date_of_birth ) values
 ('Bob', 'bob@example.com', 'Male', '1990-11-23'),
 ('Charlie', 'charlie@example.com', 'Other', '1988-02-17'),
 ('David', 'david@example.com', 'Male', '2000-08-09'),
('Eva', 'eva@example.com', 'Female', '1993-12-30'),
( 'Aliceee', 'aliccce@example.com', 'Female', '1995-05-14');
select * from users ;

 
 