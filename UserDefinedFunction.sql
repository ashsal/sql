select * from users;
select now();
select now(), users.* from users;
select concat('ashish', ' ', 'saluja');

select concat('user-', username) as userConcatinated, users.* from users;

delimiter //

create function ConcatUser(postfix varchar(100))
returns varchar(105)
begin
	return concat('user-', postfix);
end//

delimiter ;

select ConcatUser('ashish');


select ConcatUser(username), users.* from users;

select * from users_udf;

select avg(age) from users_udf;

delimiter //

create function UserAverage()
returns float
begin
	declare averageFloat float;
    set averageFloat = (select avg(age) from users_udf);
    return averageFloat;
end //

delimiter ;

select UserAverage();

select UserAverage(), users_udf.* from users_udf;

select users_udf.*, (case when age > 17 then 'adult' else 'minor' end) as MinorOrAdult from users_udf;


delimiter //

create function MinorOrAdult(age int)
returns varchar(10)
begin 
	declare minor_or_adult varchar(10);
    set minor_or_adult = (case when age > 17 then 'adult' else 'minor' end);
    return minor_or_adult;
end //

delimiter ;

select MinorOrAdult(18);

select MinorOrAdult(age), users_udf.* from users_udf;



delimiter //

create function MinorOrAdult2(age int)
returns varchar(10)
deterministic
begin 
	declare minor_or_adult varchar(10);
    set minor_or_adult = (case when age > 17 then 'adult' else 'minor' end);
    return minor_or_adult;
end //

delimiter ;

select MinorOrAdult2(age), users_udf.* from users_udf;



