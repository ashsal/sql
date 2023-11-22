use sql_learning;


create table set_test (
	communications set('email', 'sms', 'push')

);

insert into set_test(communications) values('email');
insert into set_test(communications) values('email,push');
insert into set_test(communications) values('email,push,sms');
insert into set_test(communications) values('push,email');


insert into set_test(communications) values('ashish');

insert into set_test(communications) values(2);
insert into set_test(communications) values('2,1');


select * from set_test;

select communications, find_in_set('sms', communications) from set_test;

select * from set_test where find_in_set('sms', communications) > 0