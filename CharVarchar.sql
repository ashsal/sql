use flopkart;

create table char_test(
	column_1 char(6)
);

insert into char_test(column_1) values('ram');
insert into char_test(column_1) values('ashish');
insert into char_test(column_1) values('ashish1');

select * from char_test;


create table varchar_test(
	column_1 varchar(6)
);

insert into varchar_test(column_1) values('ram');
insert into varchar_test(column_1) values('ashish');
insert into varchar_test(column_1) values('ashish1');

select * from varchar_test;