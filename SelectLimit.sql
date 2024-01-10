CREATE TABLE users_limit (
    user_id INT PRIMARY KEY,
    username VARCHAR(50),
    email VARCHAR(100)
);

-- Insert sample data
INSERT INTO users_limit (user_id, username, email) VALUES
    (1, 'sachin', 'sachin@example.com'),
    (2, 'ramesh', 'ramesh@example.com'),
    (3, 'mahesh', 'mahesh@example.com'),
    (4, 'rajesh', 'rajesh@example.com'),
    (5, 'suresh', 'suresh@example.com'),
	(6, 'ashish', 'ashish@example.com'),
	(7, 'salman', 'salman@example.com'),
	(8, 'sanjay', 'sanjay@example.com'),
	(9, 'shahrukh', 'shahrukh@example.com'),
	(10, 'sunny', 'sunny@example.com');
    
select * from users_limit;


select * from users_limit limit 3;

select * from users_limit limit 2, 2;

select * from users_limit limit 0, 2;
select * from users_limit limit 2, 2;
select * from users_limit limit 4, 2;

select * from users_limit order by user_id desc limit 3;
select * from users_limit order by user_id desc limit 3,3;

select * from users_limit where user_id > 5 order by user_id desc limit 3,3;
 