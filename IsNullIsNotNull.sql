CREATE TABLE users_null (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT
);

-- Insert sample data
INSERT INTO users_null (id, name, age) VALUES
    (1, 'Salman', 25),
    (2, 'Akshay', NULL),
    (3, 'Shahrukh', 30),
    (4, NULL, 22),
    (5, 'Sunny', 28);
    
select * from users_null;

select * from users_null where name = null;


select * from users_null where name is null;

select * from users_null where name != null;


select * from users_null where name is not null;

select * from users_null where age is not null;

select * from users_null where name is not null and age is not null;
