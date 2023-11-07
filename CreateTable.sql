create database flopkart;

use flopkart;

create table users(
	first_name varchar(100),
    last_name varchar(100),
    date_of_birth date,
    email varchar(220)
);

INSERT INTO users(first_name, last_name, date_of_birth, email) 
values('Ashish', 'Saluja', '2000-04-12', 'random@gmail.com');

INSERT INTO users(first_name, last_name, date_of_birth, email) 
values
('Salman', 'Khan', '1980-04-12', 'random1@gmail.com'),
('Shahrukh', 'Khan', '1975-04-12', 'random2@gmail.com')
;


select * from users;