# PRIMARY KEY AND AUTO INCREMENT
#FOREIGN KEYS
use shruu ;
drop table if exists addresses ; 

CREATE TABLE addres (
id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    street VARCHAR(255),
    city VARCHAR(100),
    state VARCHAR(100),
    pincode VARCHAR(10),
    constraint fs_user FOREIGN KEY (customer_id) REFERENCES customer(id) on delete cascade
);
insert into addres (customer_id , street , city , state , pincode ) values
(1, '221B MG Road', 'Mumbai', 'Maharashtra', '400001'),
(22, '14 Park Street', 'Kolkata', 'West Bengal', '700016'),
(3, '32 Residency Road', 'Bengaluru', 'Karnataka', '560025'),
(24, '5 North Usman Road', 'Chennai', 'Tamil Nadu', '600017'),
(5, '17 Hazratganj', 'Lucknow', 'Uttar Pradesh', '226001'),
(6, '55 Banjara Hills', 'Hyderabad', 'Telangana', '500034'),
(7, '88 Connaught Place', 'Delhi', 'Delhi', '110001'),
(8, '10 MG Marg', 'Dehradun', 'Uttarakhand', '248001'),
(9, '23 Brigade Road', 'Bengaluru', 'Karnataka', '560025'),
(10, '45 Marine Drive', 'Mumbai', 'Maharashtra', '400020'),
(11, '67 Ashoka Road', 'Delhi', 'Delhi', '110001'),
(12, '89 MG Road', 'Pune', 'Maharashtra', '411001'),
(13, '12 Brigade Road', 'Bengaluru', 'Karnataka', '560025'),
(14, '34 Park Street', 'Kolkata', 'West Bengal', '700016'),
(15, '56 Connaught Place', 'Delhi', 'Delhi', '110001'),
(16, '78 Marine Drive', 'Mumbai', 'Maharashtra', '400020'),
(17, '90 MG Marg', 'Dehradun', 'Uttarakhand', '248001'),
(18, '11 North Usman Road', 'Chennai', 'Tamil Nadu', '600017'),
(19, '33 Residency Road', 'Bengaluru', 'Karnataka', '560025'),
(20, '22 Hazratganj', 'Lucknow', 'Uttar Pradesh', '226001');

select * from customer ;
select * from addres ;
select * from admin_users ;
delete from customer where  id=22;
drop table addresses ;
drop table addresse ;
drop table address ;

#JOINS
SELECT customer.name,customer.gender , addres.city , addres.state , addres.id as addresses_id
FROM customer
INNER JOIN addres ON customer.id = addres.customer_id; # INNER JOIN

select customer.name , addres.city , addres.state
from customer
left join addres on customer.id = addres.customer_id ; # LEFT JOIN

select customer.name , customer.gender , addres.city , addres.state , addres.id as addresses_id
from customer
right join addres on customer.id = addres.customer_id ;

