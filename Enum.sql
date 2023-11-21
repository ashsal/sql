use sql_learning;

create table enum_test(
	gender enum('male', 'female', 'other')
);


insert into enum_test(gender) values('male');
insert into enum_test(gender) values('female');
insert into enum_test(gender) values('other');

insert into enum_test(gender) values('Male');

insert into enum_test(gender) values('MALE');

insert into enum_test(gender) values('ASHISH');

insert into enum_test(gender) values(1);
insert into enum_test(gender) values(2);
insert into enum_test(gender) values(3);

insert into enum_test(gender) values(4);
select * from enum_test;