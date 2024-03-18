select * from users;

select * from orders;

create view users_all_view as 
select * from users;


select * from users_all_view;

create view users_email_starts_with_c_view as 
select * from users where email like 'c%';


select * from users_email_starts_with_c_view;


create view users_email_starts_with_c_2_columns_view as 
select username, email from users where email like 'c%';

select * from users_email_starts_with_c_2_columns_view;


create view users_orders_all_view as 
select email, order_date, total_amount  from users inner join orders on
users.user_id = orders.user_id;

select * from users_orders_all_view;
