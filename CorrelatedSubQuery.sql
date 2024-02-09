CREATE TABLE orders_cor_sub (
    order_id INT PRIMARY KEY,
    customer_id INT,
    total_amount DECIMAL(10, 2)
);

-- Insert sample data into orders table
INSERT INTO orders_cor_sub (order_id, customer_id, total_amount) VALUES
    (1, 1, 100.00),
    (2, 1, 150.00),
    (3, 2, 200.00),
    (4, 2, 50.00),
    (5, 3, 300.00),
    (6, 3, 250.00),
    (7, 4, 50.00),
    (8, 4, 75.00),
    (9, 5, 150.00),
    (10, 5, 200.00);
    
select * from orders_cor_sub;

select avg(total_amount) from orders_cor_sub;
select customer_id, avg(total_amount) from orders_cor_sub group by customer_id;


select * from orders_cor_sub o1 where total_amount > 
(
	select avg(total_amount) from orders_cor_sub o2 
    where o1.customer_id = o2.customer_id
)

CREATE TABLE departments_cor_sub (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

-- Insert sample data into departments_cor_sub table
INSERT INTO departments_cor_sub (department_id, department_name) VALUES
    (1, 'HR'),
    (2, 'Engineering'),
    (3, 'Finance'),
    (4, 'Marketing');

-- Create employees_cor_sub table
CREATE TABLE employees_cor_sub (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    department_id INT
);

-- Insert sample data into employees_cor_sub table
INSERT INTO employees_cor_sub (employee_id, employee_name, department_id) VALUES
    (1, 'John Doe', 1),
    (2, 'Alice Smith', 2),
    (3, 'Bob Johnson', 3),
    (4, 'Eva Brown', 4),
    (5, 'Chris Lee', 2),
    (6, 'David Clark', 1),
    (7, 'Emma White', 3),
    (8, 'Frank Taylor', 4),
    (9, 'Grace Miller', 2),
    (10, 'Henry Jones', 3),
    (11, 'Ivy Moore', 4),
    (12, 'Jack Smith', 1),
    (13, 'Sam Jones', 3),
    (14, 'Dav Jones', 4);
    
select * from employees_cor_sub;

select * from departments_cor_sub;

select  * from departments_cor_sub where department_id 
in(
	select department_id from employees_cor_sub
    group by department_id
    having count(*) > 3
)


