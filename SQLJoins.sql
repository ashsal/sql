CREATE TABLE users_join (
    user_id INT PRIMARY KEY,
    username VARCHAR(50),
    email VARCHAR(100),
    age INT,
	country VARCHAR(100),
	salary int 
);

-- Insert sample data
INSERT INTO users_join (user_id, username, email, age, country, salary) VALUES
    (1, 'sachin', 'sachin@example.com', 33, 'India', 50000),
    (2, 'ramesh', 'ramesh@example.com',  39,  'USA', 60000),
    (3, 'mahesh', 'mahesh@example.com',  49, 'USA', 30000),
    (4, 'rajesh', 'rajesh@example.com',  25, 'India', 100000),
    (5, 'suresh', 'rajesh@example.com', 17, 'Denmark', 70000);
    

CREATE TABLE orders_join (
    order_id INT PRIMARY KEY,
    user_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2)
    -- FOREIGN KEY (user_id) REFERENCES users_join(user_id)
);

INSERT INTO orders_join (order_id, user_id, order_date, total_amount) 
VALUES
    (101, 1, '2023-01-15', 50.00),
    (102, 2, '2023-02-20', 75.50),
    (103, 1, '2023-03-10', 30.25),
    (104, 3, '2023-04-05', 45.75),
    (105, 8, '2023-04-05', 35),
    (106, 9, '2023-04-05', 145);
    
select * from users_join;

select * from orders_join;

select * from users_join inner join orders_join
on users_join.user_id = orders_join.user_id;

select * from users_join join orders_join
on users_join.user_id = orders_join.user_id;


select * from users_join left join orders_join
on users_join.user_id = orders_join.user_id;

select * from users_join right join orders_join
on users_join.user_id = orders_join.user_id;


select * from users_join left join orders_join
on users_join.user_id = orders_join.user_id
union
select * from users_join right join orders_join
on users_join.user_id = orders_join.user_id;