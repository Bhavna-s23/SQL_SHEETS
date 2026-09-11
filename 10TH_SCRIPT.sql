#TRIGGERS
use shruu;

 create table user_logg(
 id int auto_increment primary key,
 user_id int,
 name varchar(100) ,
 created_on timestamp default current_timestamp 
 );
 
 delimiter $$
 create trigger trigger_userr
 after insert on customer 
 for each row 
 begin
      insert into user_logg(user_id , name)
      values(new.id , new.name);
 end$$
 
 delimiter ;
 insert into customer (name, email , gender , date_of_birth , salary)
 values ('ruhan' , 'ruhann@gmail.com' , 'male', '2002-05-07', 81000);
 select * from user_logg ;
 
 CALL AddUser('Ritikaa Jain', 'ritika3@example.com', 'Female', '1999-03-12', 74000);
 
 SELECT * FROM user_logg;
 
 #DROP TRIGGER IF EXISTS after_user_insert;
 
 #MORE THINGS
 #1) LOGICAL OPERATORS - AND , OR , NOT
 #2) ADD ACOL INTO EXISTING TABLE
     ALTER TABLE USERS 
     ADD COLUMN CITY VARCHAR(100);
 #3) WILD CARD OPERATORS  - % , _
     SELECT * FROM USERS WHERE NAME LIKE '_A_H%';
 #4) LIMIT WITH OFFSET
     SELECT * FROM USERS
     ORDER BY ID
     LIMIT 5 OFFSET 10;
     
     SELECT * FROM USERS
     ORDER BY ID
     LIMIT 10,5;
 
#5) DISTINCT KEYWORD
     SELECT DISTINCT GENDER FROM USERS ;
#6) TRUNCATE KEYWORD
	TRUNCATE TABLE USERS; #(THIS WILL EMPTY THE TABLE AND KEEO IT'S STRUCT CANOT BE ROLLED BACK)
#7)CHANGE V/S MODIFY COL
   ALTER TABLE USERS
   CHANGE COLUMN CITY LOCATION VARCHAR(200); #USED TO RENAME
   ALTER TABLE USERS
   MODIFY COLUMN SALARY BIGINT;# USED TO CHANGE DATATYPE
   
      
 
     