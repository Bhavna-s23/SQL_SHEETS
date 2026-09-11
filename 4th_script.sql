#create database startesql;
use startesql;

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


# MY SQL CONSTRAINTS (UNIQUE , NOT NULL , PRIMARY KEY , CHECK , DEFAULT , AUTO_INNCREMENT )

#UNIQUE
#INSERT INTO users (name, email, gender, date_of_birth, salary) VALUES
#('Aarav', 'aarav@example.com', 'Male', '1995-05-14', 65000.00),
#('Ananya', 'ananya@example.com', 'Female', '1990-11-23', 72000.00); # AS AARAV'S EMAIL IS ALREADY PRESENT SO IT WILL WRITTEN AN ERROR FOR THE DUPLICATE ENTRY 
# alter table users add constraint unique_email unique (email); # we can add a constraint as well in our table

# NOT NULL
#INSERT INTO users (name, email, gender, date_of_birth, salary) VALUES
#(NULL, 'aarav@example.com', 'Male', '1995-05-14', 65000.00);
#alter table users modify column name varchar(100) not null ; # WITH THE HELP OF THIS NOW NAMES CAN ALSO BE NULL


# check 
#  Allow only dates of birth after Jan 1, 2000
#ALTER TABLE users
#ADD CONSTRAINT chk_dob CHECK (date_of_birth > '1920-01-01') ;
#INSERT INTO users (name, email, gender, date_of_birth, salary) VALUES
#('Aarav', 'aarRav@example.com', 'Male', '1995-05-14', 65000.00);

# DEFAULT
# PRIMARY KEY
# AUTO_INCREMENT



# FUNCTIONS IN MY SQL