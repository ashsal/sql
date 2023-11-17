use sql_learning;

create table binary_test(
	column_1 binary(6)

);

insert into binary_test(column_1) values('ashish');
insert into binary_test(column_1) values('ash');
insert into binary_test(column_1) values('ashish1');

select * from binary_test;

create table varbinary_test(
	column_1 varbinary(6)

);


insert into varbinary_test(column_1) values('ashish');
insert into varbinary_test(column_1) values('ash');
insert into varbinary_test(column_1) values('ashish1');

select * from varbinary_test;