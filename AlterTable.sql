use sql_learning;

create table users_alter_table(
	user_id int,
    username varchar(100) character set utf8mb4 collate utf8mb4_unicode_ci,
    email varchar(100),
    phone_number varchar(200),
    contact_number varchar(100),
    registration_date date,
    created_on timestamp default current_timestamp 
);

show columns from users_alter_table;

alter table users_alter_table
add column first_name varchar(200);

alter table users_alter_table
change column contact_number contact_number int;

alter table users_alter_table
change column contact_number contact_number_1 int;

alter table users_alter_table
add primary key(user_id);

alter table users_alter_table
drop column contact_number_1;

alter table users_alter_table
add constraint unique_username UNIQUE(username);

alter table users_alter_table
drop constraint unique_username;

alter table users_alter_table
alter column registration_date set default '2023-12-14';