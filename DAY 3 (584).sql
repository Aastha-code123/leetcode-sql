-- 584 .FIND CUSTOMER REFEREE

-- Find the names of the customer that are either:
 -- 1.referred by any customer with id != 2.
 -- 2.not referred by any customer.
 -- Return the result table in any order.

 
CREATE TABLE Customer (
    id INT,
    name VARCHAR(50),
    referee_id INT
);

INSERT INTO Customer VALUES 
( 1 , 'will' , null ),
( 2 , 'jane' , null ),
( 3 , 'alex' , 2 ),
( 4 , 'bill' , null ),
( 5 , 'zack' , 1 ),
( 6, 'mark' , 2 );

SELECT name
FROM Customer
WHERE referee_id <> 2 OR referee_id IS NULL;
