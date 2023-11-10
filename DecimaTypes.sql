use flopkart;

create table float_test(
	column_1 float
);

insert into float_test (column_1) values(20.55);
insert into float_test (column_1) values(-20.55);


insert into float_test (column_1) values(-20.5678912345);


select * from float_test;


create table double_test(
	column_1 double
);

insert into double_test (column_1) values(-20.5678912345);
insert into double_test (column_1) values(52.796119005678506);
insert into double_test (column_1) values(0.12345678901234567890);

select * from double_test;

create table decimal_test(
	column_1 decimal(25,20)
);

insert into decimal_test (column_1) values(0.12345678901234567890);

insert into decimal_test (column_1) values(0.1234567890123456789012);
insert into decimal_test (column_1) values(0.1234567890123456789072);
insert into decimal_test (column_1) values(12345.12345678901234567890);
insert into decimal_test (column_1) values(123456.12345678901234567890);

select * from decimal_test;