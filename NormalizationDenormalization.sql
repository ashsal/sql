CREATE TABLE Users_n (
    UserID INT PRIMARY KEY,
    UserName VARCHAR(50),
    Email VARCHAR(100)
);

CREATE TABLE Orders_n (
    OrderID INT PRIMARY KEY,
    UserID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2),
    CONSTRAINT fk_UserID FOREIGN KEY (UserID) REFERENCES Users_n(UserID)
);

INSERT INTO Users_n (UserID, UserName, Email)
VALUES
    (1, 'Ram', 'ram@example.com'),
    (2, 'Shyam', 'shyam@example.com'),
    (3, 'Ghanshyam', 'ghanshyam@example.com');

INSERT INTO Orders_n (OrderID, UserID, OrderDate, TotalAmount)
VALUES
    (101, 1, '2024-04-20', 50.00),
    (102, 1, '2024-04-21', 75.00),
    (103, 2, '2024-04-22', 100.00),
    (104, 3, '2024-04-23', 30.00);
    
select * from Orders_n;

select * from users_n u inner join Orders_n o on
u.UserID = o.UserId;


CREATE TABLE users_orders_denormalized (
    UserID INT,
    UserName VARCHAR(50),
    Email VARCHAR(100),
    OrderID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2),
    PRIMARY KEY (UserID, OrderID)
);

insert into users_orders_denormalized
select users_n.UserId, UserName, Email,
   OrderID, OrderDate, TotalAmount
from users_n inner join orders_n
on users_n.UserID = orders_n.UserID;

select * from users_orders_denormalized;


CREATE TABLE user_order_denormalized_2 (
    UserID INT PRIMARY KEY,
    UserName VARCHAR(50),
    Email VARCHAR(100),
    Order1ID INT,
    Order1Date DATE,
    Order1Amount DECIMAL(10, 2),
    Order2ID INT,
    Order2Date DATE,
    Order2Amount DECIMAL(10, 2),
    Order3ID INT,
    Order3Date DATE,
    Order3Amount DECIMAL(10, 2)
);