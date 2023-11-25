use sql_learning;

create table boolean_test(
	column_1 boolean,
    column_2 bool
)

insert into boolean_test(column_1, column_2) values(true, true);
insert into boolean_test(column_1, column_2) values(1, 1);

insert into boolean_test(column_1, column_2) values(false, false);
insert into boolean_test(column_1, column_2) values(0, 0);

insert into boolean_test(column_1, column_2) values(127, 127);
insert into boolean_test(column_1, column_2) values(128, 128);

insert into boolean_test(column_1, column_2) values(-128, -128);
insert into boolean_test(column_1, column_2) values(-129, -129);

select * from boolean_test;