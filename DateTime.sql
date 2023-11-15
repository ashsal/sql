create schema sql_learning;

use sql_learning;

create table date_test(

	column_1 date
);

insert into date_test(column_1) values('2023-11-15');
insert into date_test(column_1) values('0-1-1');
insert into date_test(column_1) values('9999-12-31');


insert into date_test(column_1) values('-1-1-1');
insert into date_test(column_1) values('10000-01-01');

select * from date_test;


create table time_test(
	column_1 time
);

insert into time_test(column_1) values('16:09:15');

insert into time_test(column_1) values('-838:59:59');
insert into time_test(column_1) values('838:59:59');

insert into time_test(column_1) values('-839:00:00');
insert into time_test(column_1) values('839:00:00');

select * from time_test;


create table datetime_test(
	column_1 datetime
);

insert into datetime_test(column_1) values('2023-11-15 16:08:34');
insert into datetime_test(column_1) values('9999-12-31 23:59:59');


insert into datetime_test(column_1) values('10000-01-01 00:00:00');

insert into datetime_test(column_1) values('1001-01-01 00:00:00');
insert into datetime_test(column_1) values('0-01-01 00:00:00');
insert into datetime_test(column_1) values('-1-01-01 00:00:00');

select * from datetime_test;

create table year_test(
	column_1 year
);

insert into year_test(column_1) values(2023);

insert into year_test(column_1) values(0);
insert into year_test(column_1) values(1);
insert into year_test(column_1) values('0001');

insert into year_test(column_1) values(1901);
insert into year_test(column_1) values(1900);

insert into year_test(column_1) values(2155);
insert into year_test(column_1) values(2156);

select * from year_test



