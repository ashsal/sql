create table users_referential_action_3(
	user_id int primary key auto_increment,
    name varchar(100)
);

create table orders_referential_action_3(
	order_id int primary key auto_increment,
    user_id int,
    quantity int,
    amount int,
    foreign key(user_id) references users_referential_action_3(user_id)
    on delete set null
    on update set null
);

insert into users_referential_action_3(name) values('Ashish');


select * from users_referential_action_3;

insert into orders_referential_action_3(user_id, quantity, amount) values(3, 1, 200);

select * from orders_referential_action_3;

update users_referential_action_3 set user_id = 3 where user_id = 1;

delete from users_referential_action_3 where user_id = 3;

create table users_referential_action_4(
	user_id int primary key auto_increment,
    name varchar(100)
);

create table orders_referential_action_4(
	order_id int primary key auto_increment,
    user_id int,
    quantity int,
    amount int,
    foreign key(user_id) references users_referential_action_4(user_id)
    on delete restrict
    on update restrict
);



insert into users_referential_action_4(name) values('Ashish');


select * from users_referential_action_4;

insert into orders_referential_action_4(user_id, quantity, amount) values(1, 1, 200);

select * from orders_referential_action_4;

update users_referential_action_4 set user_id = 3 where user_id = 1;

delete from users_referential_action_4 where user_id = 1;

