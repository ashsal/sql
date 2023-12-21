CREATE TABLE products_5 (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    category VARCHAR(50),
    stock_quantity INT,
    manufacturer VARCHAR(50)
);

INSERT INTO products_5 (product_id, product_name, price, category, stock_quantity, manufacturer)
VALUES
    (1, 'Laptop', 999.99, 'Electronics', 20, 'Dell'),
    (2, 'Smartphone', 599.99, 'Electronics', 30, 'Samsung'),
    (3, 'Tablet', 299.99, 'Electronics', 15, 'Apple'),
    (4, 'Smartwatch', 149.99, 'Wearable', 25, 'Fitbit'),
    (5, 'Headphones', 79.99, 'Audio', 50, 'Sony'),
    (6, 'Printer', 199.99, 'Office', 15, 'HP'),
    (7, 'Camera', 349.99, 'Electronics', 10, 'Canon'),
    (8, 'Desk Chair', 79.99, 'Furniture', 20, 'IKEA'),
    (9, 'External Hard Drive', 129.99, 'Electronics', 25, 'Seagate'),
    (10, 'Running Shoes', 59.99, 'Apparel', 30, 'Nike');
    
    
select * from products_5;

select product_id, product_name, price from products_5;

select products_5.product_id from products_5;

select manufacturer, p.* from products_5 as p;