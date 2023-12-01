create table user_unique_id_1(
	user_id int primary key auto_increment,
    user_name varchar(100)
);

insert into user_unique_id_1(user_name) values('ashish')
insert into user_unique_id_1(user_name) values('ram')

insert into user_unique_id_1(user_id, user_name) values(7, 'ram')

select * from user_unique_id_1;

select last_insert_id();


create table user_unique_id_2(
	user_id tinyint primary key auto_increment,
    user_name varchar(100)
);

insert into user_unique_id_2(user_name) values('ashish');
select * from user_unique_id_2;

set sql_safe_updates = 0;
delete from user_unique_id_1;

alter table user_unique_id_1 auto_increment = 25;