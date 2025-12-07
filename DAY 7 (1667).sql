-- 1667 . Fix Names in a Table 

-- Write a solution to fix the names so that only the first character is uppercase and the rest are lowercase.

-- Return the result table ordered by user_id.
 
CREATE TABLE Users(
    user_id int ,
    name varchar(50)
);
INSERT INTO Users VALUES 
(1 , 'aLice'),
(2 , 'bOB');

SELECT 
    user_id,
    CONCAT(UPPER(LEFT(NAME, 1)),
            LOWER(SUBSTRING(NAME, 2))) AS formatted_name
FROM
    Users
    ORDER BY user_id ;
