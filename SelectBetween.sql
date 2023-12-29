CREATE TABLE user_between (
    user_id INT PRIMARY KEY,
    username VARCHAR(50),
    email VARCHAR(100),
    date_of_birth DATE,
    age INT
);

-- Insert sample data
INSERT INTO user_between (user_id, username, email, date_of_birth, age) VALUES
    (1, 'sachin', 'sachin@example.com', '1990-05-15', 33),
    (2, 'ramesh', 'ramesh@example.com', '1985-09-22', 39),
    (3, 'mahesh', 'mahesh@example.com', '1985-10-22', 39),
    (4, 'rajesh', 'rajesh@example.com', '1998-04-05', 25),
    (5, 'suresh', 'rajesh@example.com', '2006-08-12', 17);
    
select * from user_between;
select * from user_between where age between 18 and 35;

select * from user_between where age not between 18 and 35;

select * from user_between where date_of_birth between '1989-05-15' and '2007-08-12';

select * from user_between where date_of_birth not between '1989-05-15' and '2007-08-12';
select * from user_between where age between 17 and 33;

select * from user_between where age not between 17 and 33;

select * from user_between order by username;

select * from user_between where username between 'rajesh' and 'sachin';

select * from user_between where username not between 'rajesh' and 'sachin';


