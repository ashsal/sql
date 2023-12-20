create schema drop_database;

use drop_database;

create table products (
	product_id int primary key,
    product_name varchar(100),
    price decimal(10, 2)

);

create index idx_product_name on products(product_name);

insert into products(product_id, product_name, price) values(1, 'Laptop', 55000);

select * from products;

show index from products;

drop index if exists idx_product_name on products;

drop table if exists products;

drop database if exists drop_database;
