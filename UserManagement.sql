create user 'ashish'@'localhost' 
identified by '123456';

select * from mysql.user;

grant select, insert on sql_learning.* to 'ashish'@'localhost' 

show grants for 'ashish'@'localhost'

alter user 'ashish'@'localhost'  identified by '12345678'

revoke insert on sql_learning.* from 'ashish'@'localhost'

drop user  'ashish'@'localhost'
