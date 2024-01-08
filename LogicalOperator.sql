CREATE TABLE users_logical (
    user_id INT PRIMARY KEY,
    username VARCHAR(50),
    email VARCHAR(100),
    date_of_birth DATE,
    age INT
);

-- Insert sample data
INSERT INTO users_logical (user_id, username, email, date_of_birth, age) VALUES
    (1, 'sachin', 'sachin@example.com', '1990-05-15', 33),
    (2, 'ramesh', 'ramesh@example.com', '1985-09-22', 39),
    (3, 'mahesh', 'mahesh@example.com', '1985-10-22', 39),
    (4, 'rajesh', 'rajesh@example.com', '1998-04-05', 25),
    (5, 'suresh', 'rajesh@example.com', '2006-08-12', 17);
    
select * from users_logical;


select * from users_logical where age = 33 or username = 'ramesh';

select * from users_logical where age = 33 and username = 'ramesh';

select * from users_logical where age = 33 and username = 'sachin';
select * from users_logical where age = 33 and username = 'sachin' and user_id = 1;


select * from users_logical where not age = 33;

select * from users_logical where username = 'sachin' and (age = 33 or age = 39);




    