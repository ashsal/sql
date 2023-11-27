create table null_test (
	middleName varchar(20) null,
    phoneNumber varchar(12) 
);

insert into null_test(middleName, phoneNumber) values
('kumar', '1231231231');
insert into null_test(middleName, phoneNumber) values
(null, '1231231231');

insert into null_test(middleName, phoneNumber) values
('kumar', null);


select * from null_test;
select * from null_test where middleName = null;
select * from null_test where middleName is null;
select * from null_test where middleName is not null;


create table not_null_test(
	firstName varchar(20) not null
);

insert into not_null_test(firstName) values('ashish');
insert into not_null_test(firstName) values(null);
insert into not_null_test(firstName) values('');
insert into not_null_test(firstName) values('0');

select * from not_null_test;