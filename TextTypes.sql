use flopkart;

create table tinytext_test(
	column_1 tinytext
);

insert into tinytext_test(column_1) values('a');
insert into tinytext_test(column_1) values('ashish');

select * from tinytext_test;

create table text_test(
	column_1 text
);

insert into text_test(column_1) values('a');
insert into text_test(column_1) values('ashish');

select * from text_test;


create table mediumtext_test(
	column_1 mediumtext
);

insert into mediumtext_test(column_1) values('a');
insert into mediumtext_test(column_1) values('ashish');

select * from mediumtext_test;


create table longtext_test(
	column_1 longtext
);


insert into longtext_test(column_1) values('a');
insert into longtext_test(column_1) values('ashish');

select * from longtext_test;