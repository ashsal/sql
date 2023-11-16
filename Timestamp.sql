use sql_learning;

create table timestamp_test_1(
	column_1 timestamp
);

insert into timestamp_test_1(column_1) values('2023-11-16 16:29:34');

insert into timestamp_test_1(column_1) values('1970-01-01 02:00:00');

insert into timestamp_test_1(column_1) values('2038-01-19 03:14:07');

insert into timestamp_test_1(column_1) values('2038-01-19 05:14:07');

select * from timestamp_test_1;

create table timestamp_test_2(
	column_1 int,
    column_2 timestamp default current_timestamp
);

insert into timestamp_test_2(column_1) values (1);

set sql_safe_updates = 0;
update timestamp_test_2 set column_1 = 2 where column_1 = 1;

select * from timestamp_test_2;

create table timestamp_test_3(
	column_1 int,
    column_2 timestamp default current_timestamp on update current_timestamp
);

insert into timestamp_test_3(column_1) values (1);
select * from timestamp_test_3;

update timestamp_test_3 set column_1 = 3 where column_1 = 2;
