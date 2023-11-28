create table unique_test_1(
	email varchar(50) unique
);

insert into unique_test_1(email) values('ash@aklsdk.com');
insert into unique_test_1(email) values('ash@aklsdk.com');

insert into unique_test_1(email) values('');

insert into unique_test_1(email) values(null);

select * from unique_test_1;

create table unique_test_2(
	firstName varchar(50),
    lastName varchar(50),
    unique key first_last_unique(firstName, lastName)
);


insert into unique_test_2(firstName, lastName) value
('ashish', 'saluja');

insert into unique_test_2(firstName, lastName) value
('ashish', 'saluja');

insert into unique_test_2(firstName, lastName) value
('ashish', 'ahuja');

insert into unique_test_2(firstName, lastName) value
('ram', 'saluja');

select * from unique_test_2;