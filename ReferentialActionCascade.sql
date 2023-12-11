create table users_referential_action_1(
	user_id int primary key auto_increment,
    name varchar(100)
);


create table orders_referential_action_1(
	order_id int primary key auto_increment,
    user_id int,
    quantity int,
    amount int,
    foreign key(user_id) references users_referential_action_1(user_id)
);

insert into users_referential_action_1(name) value('Ashish');

select * from users_referential_action_1;

insert into orders_referential_action_1(user_id, quantity, amount) values(1, 2, 500);

select * from orders_referential_action_1;

update users_referential_action_1 set user_id = 3 where user_id = 1;


create table users_referential_action_2(
	user_id int primary key auto_increment,
    name varchar(100)
);


create table orders_referential_action_2(
	order_id int primary key auto_increment,
    user_id int,
    quantity int,
    amount int,
    foreign key(user_id) references users_referential_action_2(user_id)
    on delete cascade
    on update cascade
);

insert into users_referential_action_2(name) value('Ashish');

select * from users_referential_action_2;

insert into orders_referential_action_2(user_id, quantity, amount) values(1, 2, 500);

select * from orders_referential_action_2;

update users_referential_action_2 set user_id = 3 where user_id = 1;

delete from users_referential_action_2 where user_id = 3;





