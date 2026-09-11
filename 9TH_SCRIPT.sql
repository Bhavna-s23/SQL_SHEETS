use shruu ;
select * from customer;

# STORED PROCEDURE
delimiter $$
create procedure select_users()
begin
      select * from customer ;
end $$
delimiter ;

call select_users() ;

delimiter $$
create procedure adduser(
in p_name varchar(100),
in p_email varchar(100),
in p_gender enum("male","female","others"),  # PROCEDURE WITH INPUT PARAMETERS
in p_dob date ,
in p_salary int
)
begin
      insert into customer (name , email , gender , date_of_birth ,salary)
      values (p_name , p_email , p_gender , p_dob , p_salary);
      select * from customer;
end $$
delimiter ;

call adduser('john2' , 'john2@123.com' , 'male' , '2001-05-06' , 65000);
SHOW PROCEDURE STATUS WHERE Db = 'shruu';

#DROP PROCEDURE IF EXISTS AddUser;

#TRIGGERS

