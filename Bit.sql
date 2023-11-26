create table bit_test(
	column_1 bit
);

create table bit_test_2(
	column_1 bit(6)
);

insert into bit_test(column_1) values(B'1');
insert into bit_test(column_1) values(B'0');

select * from bit_test;

insert into bit_test_2(column_1) values(B'101');

insert into bit_test_2(column_1) values(B'101101');

select bin(column_1) from bit_test_2;

