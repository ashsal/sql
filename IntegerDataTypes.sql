create schema if not exists flopkart;

use flopkart;

create table tinyint_test(
	column_1 tinyint
);

insert into tinyint_test(column_1) values(12);
insert into tinyint_test(column_1) values(-12);
insert into tinyint_test(column_1) values(0);

insert into tinyint_test(column_1) values(-128);
insert into tinyint_test(column_1) values(127);

insert into tinyint_test(column_1) values(-129);
insert into tinyint_test(column_1) values(128);

select * from tinyint_test;


create table smallint_test(
	column_1 smallint
);

insert into smallint_test(column_1) values(-129);
insert into smallint_test(column_1) values(128);

insert into smallint_test(column_1) values(-32768);
insert into smallint_test(column_1) values(32767);

insert into smallint_test(column_1) values(-32769);
insert into smallint_test(column_1) values(32768);

select * from smallint_test;


create table mediumint_test(
	column_1 mediumint
);

insert into mediumint_test(column_1) values(-32769);
insert into mediumint_test(column_1) values(32768);

insert into mediumint_test(column_1) values(-8388608);
insert into mediumint_test(column_1) values(8388607);

insert into mediumint_test(column_1) values(-8388609);
insert into mediumint_test(column_1) values(8388608);

select * from mediumint_test;

create table int_test(
	column_1 int
);

insert into int_test(column_1) values(-8388609);
insert into int_test(column_1) values(8388608);

insert into int_test(column_1) values(-2147483648);
insert into int_test(column_1) values(2147483647);


insert into int_test(column_1) values(-2147483649);
insert into int_test(column_1) values(2147483648);

select * from int_test;


create table bigint_test(
	column_1 bigint
);

insert into bigint_test(column_1) values(-2147483649);
insert into bigint_test(column_1) values(2147483648);

insert into bigint_test(column_1) values(-9223372036854775808);
insert into bigint_test(column_1) values(9223372036854775807);

insert into bigint_test(column_1) values(-9223372036854775809);
insert into bigint_test(column_1) values(9223372036854775808);

select * from bigint_test;