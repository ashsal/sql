CREATE TABLE users_in (
    user_id INT PRIMARY KEY,
    username VARCHAR(50),
    email VARCHAR(100),
    date_of_birth DATE,
    age INT
);

-- Insert sample data
INSERT INTO users_in (user_id, username, email, date_of_birth, age) VALUES
    (1, 'sachin', 'sachin@example.com', '1990-05-15', 33),
    (2, 'ramesh', 'ramesh@example.com', '1985-09-22', 39),
    (3, 'mahesh', 'mahesh@example.com', '1985-10-22', 39),
    (4, 'rajesh', 'rajesh@example.com', '1998-04-05', 25),
    (5, 'suresh', 'rajesh@example.com', '2006-08-12', 17);
    
select * from users_in;

select * from users_in where age = 17 or age = 39;

select * from users_in where age in(17, 39, 40, 56);

select * from users_in where age not in(17, 39, 40, 56);

select * from users_in where username in('sachin', 'rajesh')

select * from users_in where username not in('sachin', 'rajesh');

CREATE TABLE users_in_select (
    user_id INT
);

INSERT INTO users_in_select (user_id) VALUES
(1),
(4);

select user_id from users_in_select;

select * from users_in where user_id  in(1, 4);

select * from users_in where user_id  in(select user_id from users_in_select);


select * from users_in where user_id not in(select user_id from users_in_select);
