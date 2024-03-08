select * from users;
select * from orders

delimiter //
select * from users//
select * from orders//

delimiter ;
select * from users//
select * from orders


delimiter //
create procedure SelectUser()
begin
	select * from users;
end//

delimiter ;

call SelectUser;





delimiter //
create procedure SelectUsersAndOrders()
begin
	select * from users;
    select * from orders;
end//

delimiter ;

call SelectUsersAndOrders;


delimiter //
create procedure InserUsers(
	IN p_user_id int,
    IN p_username varchar(50),
    in p_email varchar(100)
)
begin
	insert into users(user_id, username, email) values(p_user_id, p_username, p_email);
end//

delimiter ;

select count(*) from users -- 128003
call InserUsers(456123, 'ashish', 'randomashish@gmail.com');


delimiter //
create procedure InserUsersAndReturnNewCount(
	IN p_user_id int,
    IN p_username varchar(50),
    in p_email varchar(100),
    out users_count int
)
begin
	insert into users(user_id, username, email) values(p_user_id, p_username, p_email);
    select count(*) into users_count from users;
end//

delimiter ;

call InserUsersAndReturnNewCount(456125, 'ashish', 'randomashish@gmail.com', @new_users);
select @new_users as new_count;


delimiter //
create procedure ReturnLastName(
    IN p_first_name varchar(50)
)
begin
	if p_first_name = 'ashish' then
		select 'saluja' as last_name;
	else
		select 'unknown' as last_name;
	end if;
end//

delimiter ;

call ReturnLastName('ashish');
call ReturnLastName('ashish1');


delimiter //
create procedure RepeatLoopExample(
)
begin
	declare counter int default 1;
    declare max_counter int default 10;
    
    repeat
		select concat('task-', counter);
		set counter = counter + 1;
	until counter > max_counter end repeat;
    
	
end//

delimiter ;


call RepeatLoopExample;


drop procedure RepeatLoopExample;