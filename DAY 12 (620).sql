
-- 620. Not Boring Movies

-- Write a solution to report the movies with an odd-numbered ID and a description that is not "boring".
-- Return the result table ordered by rating in descending order.

CREATE TABLE Cinema (
    id INT,
    movie VARCHAR(50),
    description VARCHAR(50),
    rating FLOAT
);

INSERT INTO Cinema VALUES 
(1 , 'War' ,'great 3D' ,8.9),
(2 , 'Science' ,'fiction' ,8.5),
(3 , 'irish' ,'boring' ,6.2),
(4 , 'Ice song' ,'Fantacy' ,8.6),
(5 , 'House card' ,'Interesting' ,9.1);

SELECT 
    *
FROM
    Cinema
WHERE
    id % 2 = 1 AND description != 'boring'
ORDER BY rating DESC;
