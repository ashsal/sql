CREATE TABLE users_case_1 (
    user_id INT PRIMARY KEY,
    username VARCHAR(50),
    age INT
);

INSERT INTO users_case_1 (user_id, username,age) VALUES
    (1, 'salman', 1),
    (2, 'shahrukh', 2),
    (3, 'sanjay', 9),
    (4, 'sunny', 12),
   (5, 'jackie', 17),
   (6, 'ranveer', 21),
   (7, 'ranbir', 22),
   (8, 'sunny', 26);
   
select  * from users_case_1;
select age,
case 
	when age between 1 and 3 then 'Toddler'
    when age between 4 and 12 then 'Child'
    when age between 13 and 17 then 'Teen'
	when age > 17 then 'Adult'
    # else 'Adult'
end as age_name
 from users_case_1;
 
 select 
sum(case 
 when age > 17 then 1
 else 0 end) as number_of_adults,
 sum(case 
 when age < 18 then 1
 else 0 end) as number_of_non_adults
 from users_case_1;
 
 
 select age,
case 
	when age between 1 and 3 then 
		case when age = 1 then 'Infant'else 'Toddler' end
    when age between 4 and 12 then 'Child'
    when age between 13 and 17 then 'Teen'
	when age > 17 then 'Adult'
end as age_name
 from users_case_1;
