use sql_learning;

create table primary_key_test_1(
	email varchar(200) primary key,
    name varchar(200)
);

insert into primary_key_test_1(email, name) values('ashish@gmail.com', 'Ashish');
insert into primary_key_test_1(email, name) values('ashish@gmail.com', 'Saluja');

insert into primary_key_test_1(email, name) values(null, 'Saluja');

select * from primary_key_test_1;
select * from primary_key_test_1 where email = 'ashish@gmail.com';

create table primary_key_test_2(
	id int primary key auto_increment,
	email varchar(200),
    name varchar(200)
);

insert into primary_key_test_2(email, name) values('ashish@gmail.com', 'Saluja');
select * from primary_key_test_2;

select * from primary_key_test_2 where id = 2;

select * from primary_key_test_2 where email = 'ashish@gmail.com';

create table primary_key_test_3(
	email varchar(200),
    phone varchar(20),
    name varchar(200),
    primary key(email, phone)
);

insert into primary_key_test_3(email, phone, name) values('ashish@gmail.com', '989898998', 'Saluja');
insert into primary_key_test_3(email, phone, name) values('ashish@gmail.com', '989898999', 'Saluja');
insert into primary_key_test_3(email, phone, name) values('ashish1@gmail.com', '989898998', 'Saluja');


select * from primary_key_test_3;

