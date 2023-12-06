create table case_sensitive_test(
	name varchar(50) collate utf8mb4_bin
);

create table case_insensitive_test_1(
	name varchar(50) collate utf8mb4_unicode_ci
);

insert into case_sensitive_test(name) values('ashish saluja');
insert into case_sensitive_test(name) values('Ashish saluja');
insert into case_sensitive_test(name) values('ashish Saluja');
insert into case_sensitive_test(name) values('Ashish Saluja');


select * from case_sensitive_test;

select * from case_sensitive_test where name = 'Ashish Saluja';


insert into case_insensitive_test_1(name) values('ashish saluja');
insert into case_insensitive_test_1(name) values('Ashish saluja');
insert into case_insensitive_test_1(name) values('ashish Saluja');
insert into case_insensitive_test_1(name) values('Ashish Saluja');

select * from case_insensitive_test_1;
select * from case_insensitive_test_1 where name = 'Ashish Saluja';