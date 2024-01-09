CREATE TABLE users_groupby (
    user_id INT PRIMARY KEY,
    username VARCHAR(50),
    email VARCHAR(100),
    age INT,
	country VARCHAR(100),
	salary int 
);

-- Insert sample data
INSERT INTO users_groupby (user_id, username, email, age, country, salary) VALUES
    (1, 'sachin', 'sachin@example.com', 33, 'India', 50000),
    (2, 'ramesh', 'ramesh@example.com',  39,  'USA', 60000),
    (3, 'mahesh', 'mahesh@example.com',  49, 'USA', 30000),
    (4, 'rajesh', 'rajesh@example.com',  25, 'India', 100000),
    (5, 'suresh', 'rajesh@example.com', 17, 'Denmark', 70000);
    
INSERT INTO users_groupby (user_id, username, email, age, country, salary) VALUES
    (6, 'sachin', 'sachin@example.com', 34, 'India', 60000);
    
    
select * from users_groupby;

select * from users_groupby group by country;

select country, count(*), sum(salary), avg(salary), min(age), max(age)
from users_groupby group by country;

select country, username, count(*), sum(salary), avg(salary), min(age), max(age)
from users_groupby group by country, username;

select country, count(*), sum(salary), avg(salary), min(age), max(age)
from users_groupby group by country
having sum(salary) > 75000
order by sum(salary) asc;