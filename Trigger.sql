CREATE TABLE user_trigger (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    age INT,
    created_at TIMESTAMP,
    last_updated TIMESTAMP
);

delimiter //

create trigger add_timestamps_trigger
before insert on user_trigger
for each row
begin 
	set New.created_at = Now(), New.last_updated = Now();
end //

delimiter ;

insert into user_trigger(username,age) values('shyam', 55);

select * from user_trigger;

delimiter //

create trigger age_validation_trigger
before insert on user_trigger
for each row
begin 
	if new.age < 18 then
		signal sqlstate '45000'
		set message_text = 'Minimum age should be 18';
    end if;
end //

delimiter ;


insert into user_trigger(username,age) values('ram', 17);



CREATE TABLE user_average (
    insertTime TIMESTAMP,
    average float
);


delimiter //

create trigger insert_into_average_age
after insert on user_trigger
for each row
begin 
	declare average_age float;
    set average_age = (select avg(age) from user_trigger);
    insert into user_average(insertTime, average) values(Now(), average_age);
end //

delimiter ;

insert into user_trigger(username,age) values('ram', 21);

insert into user_trigger(username,age) values('rahul', 39);

select * from user_average;


delimiter //

create trigger update_timestamp
before update on user_trigger
for each row
begin 
	set new.last_updated = Now();
end //

delimiter ;

select * from user_trigger;
update user_trigger set username = 'ashish' where user_id = 3;

-- 2024-03-15 17:38:02
-- 2024-03-15 17:41:16


CREATE TABLE user_name_history (
    update_time TIMESTAMP,
    old_name varchar(50),
    new_name varchar(50)
);



delimiter //

create trigger add_username_change_history
after update on user_trigger
for each row
begin 
	insert into user_name_history(update_time, old_name, new_name) values(Now(), old.username, new.username);
end //

delimiter ;


update user_trigger set username = 'shahrukh' where user_id = 3;

select * from user_name_history;
