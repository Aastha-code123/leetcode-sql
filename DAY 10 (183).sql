-- 183. Customers Who Never Order

-- Write a solution to find all customers who never order anything.

CREATE TABLE Customers (
    id INT,
    name VARCHAR(50)
);

CREATE TABLE Orders (
    id INT,
    customerId INT
);

insert into Customers values
(1 ,'joe'),
(2,'henry'),
(3,'sam'),
(4,'max');

insert into Orders values
(1,3),
(2,1);

SELECT 
    c.name
FROM
    Customers c
        LEFT JOIN
    Orders o ON c.id = o.customerId
WHERE
    o.CustomerId IS NULL;
