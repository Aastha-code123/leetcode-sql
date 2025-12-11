-- 1045. Customers Who Bought All Products

-- Write a solution to report the customer ids from the Customer table that bought all the products in the Product table.

CREATE TABLE Customeer (
    customer_id INT,
    product_key INT
);

CREATE TABLE Product (
    product_key INT
);

INSERT INTO Customeer VALUES
(1,5),
(2,6),
(3,5),
(3,6),
(1,6);

INSERT INTO Product VALUES
(5),
(6);

SELECT 
    customer_id
FROM
    Customeer
GROUP BY customer_id
HAVING COUNT(DISTINCT product_key) = 
(SELECT 
        COUNT(*)
    FROM
        Product);