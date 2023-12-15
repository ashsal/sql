create table users_insert_1(
	user_id int primary key auto_increment,
    username varchar(100) not null,
    email varchar(100) unique not null,
    password_hash varchar(50) null,
    registration_date timestamp default current_timestamp
);

create table users_insert_2(
	user_id int primary key auto_increment,
    username varchar(100) not null,
    email varchar(100) unique not null
);

insert into users_insert_1(user_id, username, email, password_hash, registration_date) 
values(1, 'ashish', 'ashish@gmail.com', 'lkasdklasdkml', '2023-12-15');

insert into users_insert_1(username, email, password_hash, registration_date) 
values('shyam', 'shyam@gmail.com', 'lkasdklasdkml', '2023-12-15');

insert into users_insert_1(username, email) 
values('mohit', 'mohit@gmail.com');

insert into users_insert_1(email, username) 
values('rohit@gmail.com', 'rohit');

insert into users_insert_1(email, username) 
values
('shahrukh@gmail.com', 'shahrukh'),
('salman@gmail.com', 'salman'),
('aamir@gmail.com', 'aamir');


insert into users_insert_1(username, email, password_hash, registration_date) 
values('bobby', 'bobby@gmail.com', 'lkasdklasdkml', default);


insert ignore into users_insert_1(username, email, password_hash, registration_date) 
values
('bobby', 'bobby@gmail.com', 'lkasdklasdkml', default),
('sunny', 'sunny@gmail.com', 'lkasdklasdkml', default);

insert into users_insert_2(user_id, username, email) 
select user_id, username, email from users_insert_1 where user_id > 2;

select * from users_insert_1;

select * from users_insert_2;

insert into users_insert_1(username, email, password_hash, registration_date) 
values('ram', 'ram@gmail.com', 'newpassword', default)
on duplicate key update password_hash = values(password_hash);



