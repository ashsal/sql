CREATE TABLE users_union_1 (
    user_id INT PRIMARY KEY,
    username VARCHAR(50),
    email VARCHAR(100),
    department VARCHAR(50)
);

CREATE TABLE users_union_2 (
    user_id INT PRIMARY KEY,
    username VARCHAR(50),
    email VARCHAR(100),
    department VARCHAR(50)
);

INSERT INTO users_union_1 (user_id, username, email, department) VALUES
    (1, 'salman', 'salman@example.com', 'HR'),
    (2, 'shahrukh', 'shahrukh@example.com', 'Engineering'),
    (3, 'sanjay', 'sanjay@example.com', 'Finance'),
    (4, 'sunny', 'sunny@example.com', 'Marketing'),
   (5, 'jackie', 'jackie@example.com', 'Marketing');

INSERT INTO users_union_2 (user_id, username, email, department) VALUES
(1, 'bobby', 'bobby@example.com', 'Engineering'),
    (2, 'ranveer', 'ranveer@example.com', 'HR'),
    (3, 'ranbir', 'ranbir@example.com', 'Finance'),
	(4, 'sunny', 'sunny@example.com', 'Marketing'),
    (5, 'jackie', 'jackie@example.com', 'Marketing');

select * from users_union_1;
select * from users_union_2;


select * from users_union_1
union
select * from users_union_2;


select username from users_union_1
union
select username from users_union_2;

select username from users_union_1
union all
select username from users_union_2;

select * from users_union_1
union all
select * from users_union_2;

select user_id from users_union_1
union
select user_id, username from users_union_2;

select user_id from users_union_1
union
select username from users_union_2;