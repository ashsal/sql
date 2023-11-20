use sql_learning;

create table tinyblob_test(
	column_1 tinyblob
);


insert into tinyblob_test(column_1) values('ashish');

select * from tinyblob_test;


create table blob_test(
	column_1 blob
);

insert into blob_test(column_1) values('ashish');

select * from blob_test;


create table mediumblob_test(
	column_1 mediumblob
);

insert into mediumblob_test(column_1) values('ashish');

select * from mediumblob_test;

create table longblob_test(
	column_1 longblob
);

insert into longblob_test(column_1) values('ashish');

select * from longblob_test;
