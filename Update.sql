CREATE TABLE products_2 (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    quantity INT,
    discount DECIMAL(8, 6),
    status VARCHAR(20),
    rank INT,
    rating float
);

INSERT INTO products_2 (product_id, product_name, price, quantity, discount, status, rank)
VALUES
    (1, 'Laptop', 999.99, 20, 0.05, 'In Stock', 1),
    (2, 'Smartphone', 599.99, 15, 0.02, 'In Stock', 2),
    (3, 'Tablet', 299.99, 30, 0.03, 'Out of Stock', 3),
    (4, 'Smartwatch', 149.99, 10, 0.01, 'In Stock', 4),
    (5, 'Headphones', 79.99, 25, 0.00, 'Out of Stock', 5);

CREATE TABLE ratings_2 (
	rating_id int primary key auto_increment,
    product_id int,
    rating tinyint
);

insert into ratings_2(product_id, rating) 
values
(1, 4),
(2, 2);


select * from products_2;

select * from ratings_2;

set sql_safe_updates = 0;

update products_2 set price = 123.55;
update products_2 set price = 125.55 where product_id = 2;

update products_2 set quantity = quantity + 1;

select avg(price) * (0.10) from products_2; 

update products_2 set discount = (select avg(price) from products_2) * (0.10);

update products_2 set status = (case when quantity > 15 then 'In Stock' else 'Out of Stock' end);


select * from products_2 inner join ratings_2
on products_2.product_id = ratings_2.product_id

update products_2 inner join ratings_2
on products_2.product_id = ratings_2.product_id
set products_2.rating = ratings_2.rating;

update products_2 set discount = 14
order by price desc
limit 1;

