select * from users_index;
select count(*) from users_index;


#0.041 - before applying index
#0.0033 - after applying index
Explain
select * from users_index where username = 'kpounds2'

create index users_index_username on users_index(username);

create index users_index_username_email on users_index(username, email);

explain
select * from users_index where username = 'kpounds2' and email = 'cwildey2@g.co'
