select * from users;
select count(*) from users; -- 128000

select * from orders;
select count(*) from orders; -- 6

Explain select * from users;

Explain select * from users where user_id = 1;

explain select * from users where email = 'kwolfendell9@cdc.gov'; -- 0.105, 0.00039

create index index_users_email on users(email)

EXPLAIN SELECT users.*, orders.* 
FROM users 
JOIN orders ON users.user_id = orders.user_id;

EXPLAIN SELECT users.*, orders.* 
FROM users 
JOIN orders ON users.user_id = orders.user_id 
ORDER BY orders.total_amount DESC;

EXPLAIN SELECT users.username, COUNT(orders.order_id) AS total_orders 
FROM users 
JOIN orders ON users.user_id = orders.user_id 
GROUP BY users.username;

EXPLAIN SELECT * 
FROM users 
WHERE user_id IN 
(SELECT DISTINCT user_id FROM orders 
WHERE order_date >= CURDATE() - INTERVAL 100 MONTH);


EXPLAIN 
SELECT users.*, 
(select count(*) from orders where orders.user_id = users.user_id) 
FROM users
