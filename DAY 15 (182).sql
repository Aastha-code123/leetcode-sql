-- 182 DUPLICATE EMAILS

-- Write a solution to report all the duplicate emails. Note that it's guaranteed that the email field is not NULL.

CREATE TABLE Person(
 id int ,
 email varchar(50) NOT NULL
);
INSERT INTO Person VALUES
(1,'a@b.com'),
(2,'c@d.com'),
(3,'a@b.com');

SELECT 
    email
FROM
    Person
GROUP BY email
HAVING COUNT(email) > 1;