CREATE TABLE products_3 (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    quantity INT,
    discount DECIMAL(4, 2),
    status VARCHAR(20)
);

INSERT INTO products_3 (product_id, product_name, price, quantity, discount, status)
VALUES
    (1, 'Laptop', 999.99, 20, 0.05, 'In Stock'),
    (2, 'Smartphone', 599.99, 15, 0.02, 'In Stock'),
    (3, 'Tablet', 299.99, 30, 0.03, 'Out of Stock'),
    (4, 'Smartwatch', 149.99, 10, 0.01, 'In Stock'),
    (5, 'Headphones', 79.99, 25, 0.00, 'Out of Stock');
    
select * from products_3;

set sql_safe_updates = 0;

delete from products_3;

delete from products_3 where product_id = 2;

delete from products_3 where status = 'Out of Stock';

CREATE TABLE products_3_delete (
    product_id INT PRIMARY KEY,
    should_delete BOOLEAN
);



INSERT INTO products_3_delete (product_id, should_delete)
VALUES
    (1, TRUE),  
    (3, true); 
    
INSERT INTO products_3_delete (product_id, should_delete)
VALUES
    (4, false);
    
select * from products_3_delete;


select product_id from products_3_delete where should_delete = 1;

delete from products_3 where product_id in(select product_id from products_3_delete where should_delete = 1);
    

delete from products_3
order by price asc
limit 1;

select * from products_3 inner join products_3_delete
on products_3.product_id = products_3_delete.product_id
where should_delete = 1;

delete products_3 from products_3 inner join products_3_delete
on products_3.product_id = products_3_delete.product_id
where should_delete = 1;

delete products_3, products_3_delete  from products_3 inner join products_3_delete
on products_3.product_id = products_3_delete.product_id
where should_delete = 1;
