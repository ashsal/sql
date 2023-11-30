use sql_learning;

create table products_default_test(
	product_name varchar(100),
    stock_unit int default 0
);


insert into products_default_test(product_name, stock_unit)
values('iPhone', 5);

insert into products_default_test(product_name)
values('samsung phone');

select * from products_default_test;


create table default_dynamic(
	id int,
    createdOn datetime default current_timestamp
);

insert into default_dynamic(id) values(1);

select * from default_dynamic