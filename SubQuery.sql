CREATE TABLE users_sub_1 (
    user_id INT PRIMARY KEY,
    username VARCHAR(50),
    age INT
);

INSERT INTO users_sub_1 (user_id, username,age) VALUES
    (1, 'salman', 1),
    (2, 'shahrukh', 2),
    (3, 'sanjay', 9),
    (4, 'sunny', 12),
   (5, 'jackie', 17),
   (6, 'ranveer', 21),
   (7, 'ranbir', 22),
   (8, 'sunny', 26);
   
select * from users_sub_1;

select avg(age) from users_sub_1;

select users_sub_1.*, 
(select avg(age) from users_sub_1) as average_age,
age - (select avg(age) from users_sub_1) as diff_from_average_age
 from users_sub_1;
select * from users_sub_1 where age > 13.7500;


select * from users_sub_1 
where age > (select avg(age) from users_sub_1);

 

