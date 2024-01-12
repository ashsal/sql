CREATE TABLE users_distinct (
    user_id INT PRIMARY KEY,
    username VARCHAR(50),
    email VARCHAR(100),
    department VARCHAR(50)
);

-- Insert sample data
INSERT INTO users_distinct (user_id, username, email, department) VALUES
    (1, 'salman', 'salman@example.com', 'HR'),
    (2, 'shahrukh', 'shahrukh@example.com', 'Engineering'),
    (3, 'sanjay', 'sanjay@example.com', 'Finance'),
    (4, 'sunny', 'sunny@example.com', 'Marketing'),
    (5, 'bobby', 'bobby@example.com', 'Engineering'),
    (6, 'ranveer', 'ranveer@example.com', 'HR'),
    (7, 'ranbir', 'ranbir@example.com', 'Finance'),
    (8, 'jackie', 'jackie@example.com', 'Marketing');
    
select * from users_distinct;


select distinct department from users_distinct;
select  department from users_distinct;

select distinct username, department, email from users_distinct;

select distinct department from users_distinct where user_id > 6;

select count(distinct department) from users_distinct;

select count(distinct department) from users_distinct where user_id > 6;

select department, count(*) from users_distinct
group by department





