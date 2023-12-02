create table user_character_1(
	name varchar(100) character set ascii
);

insert into user_character_1(name) values('ashish');
insert into user_character_1(name) values('आशीष');
insert into user_character_1(name) values('ÆØÅæøå');

select * from user_character_1;

create table user_character_2(
	name varchar(100) character set utf8mb4
);

insert into user_character_2(name) values('ashish');
insert into user_character_2(name) values('आशीष');
insert into user_character_2(name) values('ÆØÅæøå');

select * from user_character_2;


















