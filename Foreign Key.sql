use sql_learning;

create table users_foreign_key_test(
	user_id int primary key auto_increment,
    name varchar(100)
);

create table orders_foreign_key_test(
	order_id int primary key auto_increment,
    user_id int,
    item_name varchar(100),
    order_value int,
    foreign key(user_id) references users_foreign_key_test(user_id)
);

insert into orders_foreign_key_test(user_id, item_name, order_value)
values(1, 'Phone', 100);

insert into orders_foreign_key_test(user_id, item_name, order_value)
values(2, 'Phone', 100);

insert into orders_foreign_key_test(user_id, item_name, order_value)
values(null, 'Phone', 100);

select * from users_foreign_key_test;

select * from orders_foreign_key_test;

select * from users_foreign_key_test join orders_foreign_key_test
on users_foreign_key_test.user_id = orders_foreign_key_test.user_id


insert into users_foreign_key_test(name) values('Ashish');
